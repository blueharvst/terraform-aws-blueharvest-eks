variable "region" {
  description = "AWS region"
  default     = "eu-west-1"
}

variable "availability_zones" {
  description = "AWS availability zones"
  default     = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
}

variable "environment" {
  description = "Environment to tag the created resources"
  default     = "dev"
}

variable "eks_ami_id" {
  description = "AMI used for the worker nodes. Default amazon-eks-node-1.11-v20190109"
  default     = "ami-01e08d22b9439c15a"
}

variable "instance_type" {
  description = "Instance type used for the worker nodes"
  default     = "t2.large"
}

variable "asg_min_size" {
  description = "Min nodes the cluster will have"
  default     = "5"
}

variable "asg_max_size" {
  description = "Max nodes the cluster will autoscale to"
  default     = "24"
}

variable "cluster_name" {
  description = "Name of the EKS Cluster"
  default     = "blueharvest"
}

variable "cluster_zone" {
  description = "Root domain name of the hosted zone on AWS"
  default     = "blueharvest.io"
}

variable "cluster_zone_id" {
  description = "ID of the hosted zone on AWS"
  default     = "Z31OVNF5EA1VAW"
}

variable "map_users" {
  description = "Additional IAM users to add to the aws-auth configmap."
  type        = "list"

  default = []
}

variable "map_users_count" {
  description = "The count of users in the map_users list."
  type        = "string"
  default     = 0
}

variable "map_roles" {
  description = "Additional IAM roles to add to the aws-auth configmap."
  type        = "list"
  default     = []
}

variable "map_roles_count" {
  description = "The count of roles in the map_users list."
  type        = "string"
  default     = 0
}

variable "cluster_private_key" {
  description = "B64 encoded private key use to generate the aws-key-pair"
}

variable "cluster_public_key" {
  description = "B64 encoded public key use to generate the aws-key-pair"
}
