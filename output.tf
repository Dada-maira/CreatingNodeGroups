output "node_group_name" {
  value = kubernetes_deployment.node_group.metadata[0].name
}

output "node_group_replicas" {
  value = kubernetes_deployment.node_group.spec[0].replicas
}
