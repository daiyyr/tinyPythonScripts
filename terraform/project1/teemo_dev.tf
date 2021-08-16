# aws_instance.teemo-dev:
resource "aws_instance" "teemo-dev" {
    ami                                  = "ami-0567f647e75c7bc05"
    # arn                                  = "arn:aws:ec2:ap-southeast-2:263436898058:instance/i-05d0c0973b91deda9"
    associate_public_ip_address          = true
    availability_zone                    = "ap-southeast-2b"
    cpu_core_count                       = 1
    cpu_threads_per_core                 = 1
    disable_api_termination              = false
    ebs_optimized                        = false
    get_password_data                    = false
    hibernation                          = false
    iam_instance_profile                 = "AmazonSSMRoleForInstancesQuickSetup"
    # id                                   = "i-05d0c0973b91deda9"
    instance_initiated_shutdown_behavior = "stop"
    # instance_state                       = "running"
    instance_type                        = "t2.micro"
    ipv6_address_count                   = 0
    ipv6_addresses                       = []
    key_name                             = "dev.expander"
    monitoring                           = false
    # primary_network_interface_id         = "eni-08e75bee7b1f72d6c"
    # private_dns                          = "ip-172-31-21-129.ap-southeast-2.compute.internal"
    private_ip                           = "172.31.21.129"
    # public_dns                           = "ec2-13-236-70-107.ap-southeast-2.compute.amazonaws.com"
    # public_ip                            = "13.236.70.107"
    secondary_private_ips                = []
    security_groups                      = [
        "launch-wizard-13",
    ]
    source_dest_check                    = true
    subnet_id                            = "subnet-b8abebd1"
    tags                                 = {
        "Name" = "teemo-dev"
    }
    tags_all                             = {
        "Name" = "teemo-dev"
    }
    tenancy                              = "default"
    vpc_security_group_ids               = [
        "sg-0c356865493e3783d",
    ]

    capacity_reservation_specification {
        capacity_reservation_preference = "open"
    }

    credit_specification {
        cpu_credits = "standard"
    }

    enclave_options {
        enabled = false
    }

    metadata_options {
        http_endpoint               = "enabled"
        http_put_response_hop_limit = 1
        http_tokens                 = "optional"
    }

    root_block_device {
        delete_on_termination = true
        # device_name           = "/dev/sda1"
        encrypted             = false
        iops                  = 100
        tags                  = {}
        throughput            = 0
        # volume_id             = "vol-0d8428ec48da613b6"
        volume_size           = 8
        volume_type           = "gp2"
    }

    timeouts {}
}
