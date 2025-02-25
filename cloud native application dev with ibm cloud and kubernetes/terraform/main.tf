provider "aws" {
  region = "us-east-1"
}

provider "azurerm" {
  features {}
}

provider "google" {
  project = "your-project-id"
  region  = "us-central1"
}

resource "aws_eks_cluster" "eks_cluster" {
  name     = "eks-cluster"
  role_arn = "your-aws-role-arn"
  vpc_config {
    subnet_ids = ["subnet-xxxxxxxx", "subnet-yyyyyyyy"]
  }
}

resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = "aks-cluster"
  location            = "East US"
  resource_group_name = "your-resource-group"
  dns_prefix          = "aks-cluster"
}

resource "google_container_cluster" "gke_cluster" {
  name     = "gke-cluster"
  location = "us-central1"
  initial_node_count = 3
}
