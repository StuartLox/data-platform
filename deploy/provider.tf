terraform {
  backend "s3" {}
}

provider "aws" {
  region  = "${var.region}"
  version = "~> 2.8"
}

provider "k8s" {
  kubeconfig        = "${var.kube_config}"
  # kubeconfigContext = "arn:aws:eks:ap-southeast-2:224041885527:cluster/personal-eks"
}
