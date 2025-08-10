module "web_application_server_jenkins" {
  source = "git::https://github.com/PavanKumarKJ347/Terraform_Modules.git//EC2_Module"

  ec2_server_count = 1

  ami               = "ami-0521bc4c70257a054"
  instance_type     = "t2.micro"
  availability_zone = "ap-south-1a"
  key_name          = "DevOpsCloudAutomation"

  ec2_server_name = "RedHat_Server_Jenkins"

  tags = {
    "Environment" = "Production"
    "ManagedBy"   = "Terraform"
  }
}

module "web_application_server_sonarqube" {
  source = "git::https://github.com/PavanKumarKJ347/Terraform_Modules.git//EC2_Module"

  ec2_server_count = 1

  ami               = "ami-0f918f7e67a3323f0"
  instance_type     = "t2.medium"
  availability_zone = "ap-south-1b"
  key_name          = "DevOpsCloudAutomation"

  ec2_server_name = "Ubuntu_Server_SonarQube"

  tags = {
    "Environment" = "Production"
    "ManagedBy"   = "Terraform"
  }
}