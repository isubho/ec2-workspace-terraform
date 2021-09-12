data "aws_vpc" "default" {
  id = local.vpc.id
}

# output "id" {
#   value = {
#     abhi : var.abhi
#     vpc : tomap({
#       for k, bd in data.aws_vpc.default : k => bd.id if k != "env-b"
#     })
#   }
# }


# variable "abhi" {
#   type        = string
#   description = "enter value of abhi"
# }
