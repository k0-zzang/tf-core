locals {
  org     = "tf-core"
  project = "gallery"

  namespace = "${local.org}-${local.project}"

    infra = {
      lb = {
        listener_port = var.infra_lb_listener_port
      }

      lt = {
        service_port = var.infra_lt_service_port
        listener_port = var.infra_lt_listerner_port
        }
    asg = {
      max_size         = var.infra_asg_max_size
      min_size         = var.infra_asg_min_size
      desired_capacity = var.infra_asg_desired_capacity
      deploy_version   = var.infra_asg_deploy_version
    }
  }
}