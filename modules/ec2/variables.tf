variable "ami" {
  description = "The ID of the AMI to use for the EC2 instance"
  type        = string
  default     = "ami-0a3c3a20c09d6f377"
}

variable "associate_public_ip_address" {
  description = "Whether the EC2 instance should have a public IP address associated"
  type        = bool
  default     = true
}

variable "availability_zone" {
  description = "The availability zone for the EC2 instance"
  type        = string
  default     = "us-east-1d"
}

variable "cpu_core_count" {
  description = "The number of CPU cores for the EC2 instance"
  type        = number
  default     = 1
}

variable "cpu_threads_per_core" {
  description = "The number of CPU threads per core for the EC2 instance"
  type        = number
  default     = 1
}

variable "disable_api_stop" {
  description = "Whether the EC2 instance should be able to be stopped via the API"
  type        = bool
  default     = false
}

variable "disable_api_termination" {
  description = "Whether the EC2 instance should be able to be terminated via the API"
  type        = bool
  default     = false
}

variable "ebs_optimized" {
  description = "Whether the EC2 instance should be EBS-optimized"
  type        = bool
  default     = false
}

variable "get_password_data" {
  description = "Whether password data should be available for the EC2 instance"
  type        = bool
  default     = false
}

variable "hibernation" {
  description = "Whether hibernation is enabled for the EC2 instance"
  type        = bool
  default     = false
}

variable "instance_initiated_shutdown_behavior" {
  description = "The behavior when the EC2 instance is shut down from the instance itself"
  type        = string
  default     = "stop"
}

variable "instance_type" {
  description = "The type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "ipv6_address_count" {
  description = "The number of IPv6 addresses associated with the EC2 instance"
  type        = number
  default     = 0
}

variable "key_name" {
  description = "The name of the SSH key pair to use for the EC2 instance"
  type        = string
  default     = "aws-video-collector2"
}

variable "monitoring" {
  description = "Whether detailed monitoring is enabled for the EC2 instance"
  type        = bool
  default     = false
}

variable "placement_partition_number" {
  description = "The partition number in which the EC2 instance is placed"
  type        = number
  default     = 0
}

variable "subnet_id" {
  description = "The ID of the subnet in which the EC2 instance is launched"
  type        = string
  default     = "subnet-0b8ad496907ed4951"
}

variable "tenancy" {
  description = "The tenancy of the EC2 instance"
  type        = string
  default     = "default"
}

variable "volume_id" {
  description = "The ID of the EBS volume attached to the EC2 instance as the root volume"
  type        = string
  default     = "vol-022c5931581a32fd6"
}

variable "volume_size" {
  description = "The size of the root volume in GB"
  type        = number
  default     = 8
}

variable "volume_type" {
  description = "The type of the root volume"
  type        = string
  default     = "gp3"
}

variable "security_groups" {
  description = "The security groups associated with the EC2 instance"
  type        = list(string)
  default     = ["launch-wizard-3"]
}

variable "source_dest_check" {
  description = "Whether the EC2 instance performs source/destination checking"
  type        = bool
  default     = true
}

variable "vpc_security_group_ids" {
  description = "The IDs of the VPC security groups associated with the EC2 instance"
  type        = list(string)
  default     = ["sg-01eba336d4c94b69d"]
}

variable "tags" {
  description = "The tags associated with the EC2 instance"
  type        = map(string)
  default     = {
    "Name" = "aws-video-collector"
  }
}

variable "capacity_reservation_specification" {
  description = "The capacity reservation specification for the EC2 instance"
  type = object({
    capacity_reservation_preference = string
  })
  default = {
    capacity_reservation_preference = "open"
  }
}

variable "cpu_options" {
  description = "The CPU options for the EC2 instance"
  type = object({
    core_count       = number
    threads_per_core = number
  })
  default = {
    core_count       = 1
    threads_per_core = 1
  }
}

variable "credit_specification" {
  description = "The credit specification for the EC2 instance"
  type = object({
    cpu_credits = string
  })
  default = {
    cpu_credits = "standard"
  }
}

variable "enclave_options" {
  description = "The enclave options for the EC2 instance"
  type = object({
    enabled = bool
  })
  default = {
    enabled = false
  }
}

variable "maintenance_options" {
  description = "The maintenance options for the EC2 instance"
  type = object({
    auto_recovery = string
  })
  default = {
    auto_recovery = "default"
  }
}

variable "metadata_options" {
  description = "The metadata options for the EC2 instance"
  type = object({
    http_endpoint               = string
    http_protocol_ipv6          = string
    http_put_response_hop_limit = number
    http_tokens                 = string
    instance_metadata_tags      = string
  })
  default = {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }
}

variable "private_dns_name_options" {
  description = "The private DNS name options for the EC2 instance"
  type = object({
    enable_resource_name_dns_a_record    = bool
    enable_resource_name_dns_aaaa_record = bool
    hostname_type                        = string
  })
  default = {
    enable_resource_name_dns_a_record    = true
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }
}

variable "root_block_device" {
  description = "The root block device for the EC2 instance"
  type = object({
    delete_on_termination = bool
    device_name           = string
    encrypted             = bool
    iops                  = number
    throughput            = number
    volume_id             = string
    volume_size           = number
    volume_type           = string
  })
  default = {
    delete_on_termination = true
    device_name           = "/dev/xvda"
    encrypted             = false
    iops                  = 3000
    throughput            = 125
    volume_id             = "vol-022c5931581a32fd6"
    volume_size           = 8
    volume_type           = "gp3"
  }
}
