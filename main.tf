/*
* main.tf
*/
provider "google" {}

module "vault" {
  source  = "hashicorp/vault/google"
  version = "0.2.0"
  # The Google Image used to launch each node in the Consul Server cluster. You can build this Google Image yourself at /examples/vault-consul-image.
  consul_server_source_image = ""
  # The name of the Consul Server cluster. All resources will be namespaced by this value. E.g. consul-server-prod
  consul_server_cluster_name = ""
  # The name of the GCP Project where the network is located. Useful when using networks shared between projects. If empty, var.gcp_project_id will be used.
  network_project_id = ""
  # The name of the Vault Server cluster. All resources will be namespaced by this value. E.g. vault-server-prod
  vault_cluster_name = ""
  # The region in which all GCP resources will be launched.
  gcp_region = ""
  # The name of the GCP Project where all resources will be launched.
  gcp_project_id = ""
  # The name of the GCP Project where the image is located. Useful when using a separate project for custom images. If empty, var.gcp_project_id will be used.
  image_project_id = ""
  # The Google Image used to launch each node in the Vault Server cluster. You can build this Google Image yourself at /examples/vault-consul-image.
  vault_source_image = ""
}
