module "s3-bucket" {
   source  = "terraform-aws-modules/s3-bucket/aws"
   version = "4.1.2"
   bucket = var.bucketname
}


output "bucket_id" {
  value = module.s3-bucket.s3_bucket_id
}

variable "bucketname" {
    default = "gfgdevops24newterraformbucket"
  
}


module "iam_user" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "5.44.0"
  name = "sudhanshu-gfg24"
}
output "accesS_key_id" {
  value = module.iam_user.iam_access_key_id
}