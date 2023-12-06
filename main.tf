provider "aws" {
  region     = var.aws_region
}

provider "kubernetes" {
  config_path = var.kubeconfig_path
}

resource "kubernetes_deployment" "node_group" {
  metadata {
    name = var.node_group_name
  }

  spec {
    replicas = var.desired_capacity

    selector {
      match_labels = {
        "app" = var.node_group_name
      }
    }

    template {
      metadata {
        labels = {
          "app" = var.node_group_name
        }
      }

      spec {
        container {
          name  = var.node_group_name
          image = "nginx:latest"  # You can change this to your desired container image
          # other container configuration...
        }
      }
    }

    progress_deadline_seconds = 900  # set to a value that allows sufficient time
  }
}
