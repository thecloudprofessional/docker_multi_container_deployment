variable "iac_tool" {
  type        = string
  description = "Name of the IAC tool used to provision the infra"
  default     = "terraform"
}

variable "project" {
  type        = string
  description = "Project's name"
}

variable "environment" {
  type        = string
  description = "Infrastructure environment"
  default     = "staging"
}

variable "public_subnet_numbers" {
  type = map(number)

  description = "Map of AZ to a number that should be used for public subnets"

  default = {
    "ca-central-1a" = 1
    "ca-central-1b" = 2
  }
}

variable "private_subnet_numbers" {
  type = map(number)

  description = "Map of AZ to a number that should be used for private subnets"

  default = {
    "ca-central-1a" = 3
    "ca-central-1b" = 4
  }
}

variable "redis_port" {
  type        = number
  description = "Redis port"
  default     = 6379
}

variable "postgres_port" {
  type        = number
  description = "Postgres port"
  default     = 5432
}

variable "postgres_database" {
  type        = string
  description = "Postgres database"
  default     = "fibvalues"
}

variable "postgres_password" {
  type        = string
  description = "Postgres password"
  sensitive   = true
}

variable "beanstalk_environment" {
  type        = string
  description = "Beanstalk environment name"
}