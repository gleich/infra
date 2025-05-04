resource "cloudflare_ruleset" "www_to_apex_mattgleich" {
  zone_id = var.mattgleich_zone_id
  name    = "www to apex"
  kind    = "zone"
  phase   = "http_request_dynamic_redirect"

  rules {
    description = "Redirect www.mattglei.ch → https://mattglei.ch"
    expression  = "(http.host eq \"www.mattglei.ch\")"
    action      = "redirect"

    action_parameters {
      from_value {
        status_code = 301
        target_url {
          value = "https://mattglei.ch${http.request.uri}"
        }
        preserve_query_string = true
      }
    }
  }
}

resource "cloudflare_ruleset" "redirect_all_to_mattgleich" {
  zone_id = var.mattgleich_com_zone_id
  name    = "forward to mattglei.ch"
  kind    = "zone"
  phase   = "http_request_dynamic_redirect"

  ######################################
  # 1) Apex   mattgleich.com  -> mattglei.ch
  ######################################
  rules {
    description = "Redirect apex domain"
    expression  = "(http.host eq \"mattgleich.com\")"
    action      = "redirect"

    action_parameters {
      from_value {
        status_code           = 301
        preserve_query_string = true
        target_url {
          value = "https://mattglei.ch${http.request.uri}"
        }
      }
    }
  }

  rules {
    description = "Redirect any sub-domain"
    expression  = "(http.host matches \"^[^.]+\\\\.mattgleich\\\\.com$\")"
    action      = "redirect"

    action_parameters {
      from_value {
        status_code           = 301
        preserve_query_string = true
        target_url {
          expression = "concat(\"https://\", regex_replace(http.host, \"\\\\.mattgleich\\\\.com$\", \".mattglei.ch\"), http.request.uri)"
        }
      }
    }
  }
}
