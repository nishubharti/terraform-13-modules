# Create an arbitrary local resource
data "template_file" "module_test" {
  template = "Hello, I am a template in module. My sample_var value passed to me is  = $${sample_var}"

  vars = {
    sample_var = var.module_sample_var
  }
}

resource "null_resource" "sleep" {
  triggers = {
    uuid = uuid()
  }

  provisioner "local-exec" {
    command = "sleep ${var.module_sleepy_time}"
  }
}

