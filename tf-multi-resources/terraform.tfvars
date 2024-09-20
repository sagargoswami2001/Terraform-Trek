ec2_config = [
  {
    ami           = "ami-0e86e20dae9224db8" #ubuntu
    instance_type = "t2.micro"
  },
  {
    ami           = "ami-0ebfd941bbafe70c6" #amazon linux
    instance_type = "t2.micro"
}]


ec2_map = {
  #key=value
  "ubuntu" = {
    ami           = "ami-0e86e20dae9224db8" #ubuntu
    instance_type = "t2.micro"
  },
  "amazon-linux" = {
    ami           = "ami-0ebfd941bbafe70c6" #amazon linux
    instance_type = "t2.micro"
  }
}
