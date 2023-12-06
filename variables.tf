variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "kubectl_context" {
  description = "kubectl context name"
  type        = string
  default     = "kubernetes-admin@kubernetes"
}

variable "desired_capacity" {
  description = "Desired number of nodes in the node group"
  type        = number
  default     = 2
}

variable "kubeconfig_path" {
  description = "Path to the kubeconfig file"
  type        = string
  default     = "~/.kube/config"
}

variable "node_group_name" {
  description = "Name of the Kubernetes node group"
  type        = string
  default     = "my-node-group"
}
