data "template_file" "aws_auth" {
  template = "${file("${path.module}/templates/aws-auth.yml")}"

  vars {
    AWS_ROLE = "${module.eks.worker_role}"
  }
}

resource "k8s_manifest" "aws_auth_config" {
  content = "${data.template_file.aws_auth.rendered}"
}
