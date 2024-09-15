aws_instance_type = "t2.micro"

root_volume_size = {
    v_size = 30
    v_type = "gp3"
}

additional_tags = {
    DEPT    = "QA"
    PROJECT = "MYPROJECT_QA"
}
