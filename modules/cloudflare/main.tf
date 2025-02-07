module "mattgleich_dns" {
  source  = "./personal"
  zone_id = "b580b7998284e872e4e6d3a33aac00a8"
}

module "mattgleich_com_dns" {
  source  = "./personal"
  zone_id = "b580b7998284e872e4e6d3a33aac00a8"
}

module "coverframe_dev_dns" {
  source  = "./coverframe"
  zone_id = "273ba96ea009fff540bf1809d0cfdda8"
}

module "coverframe_dev_dns" {
  source  = "./coverframe"
  zone_id = "bacf7227ff8abdbb5e44310d60fd6ffe"
}
