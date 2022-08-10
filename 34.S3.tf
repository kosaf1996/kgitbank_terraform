############################################################
#####                     Seoul                         ####
############################################################
# Codepipeline 생성 시 필요한 Artifact store 생성
resource "aws_s3_bucket" "seoul-codepipeline-bucket" {
  bucket        = "seoul-django-codepipeline-bucket"
  force_destroy = true
}

# 위에서 생성되는 S3 Bucket의 ACL 비활성화
resource "aws_s3_bucket_acl" "seoul-codepipeline-bucket_acl" {
  bucket = aws_s3_bucket.seoul-codepipeline-bucket.id
  acl    = "private"
}
############################################################
#####                     Tokyo                         ####
############################################################
# Codepipeline 생성 시 필요한 Artifact store 생성
resource "aws_s3_bucket" "tokyo-codepipeline-bucket" {
  bucket        = "seoul-django-codepipeline-bucket"
  force_destroy = true
}

# 위에서 생성되는 S3 Bucket의 ACL 비활성화
resource "aws_s3_bucket_acl" "tokyo-codepipeline-bucket-acl" {
  bucket = aws_s3_bucket.tokyo-codepipeline-bucket.id
  acl    = "private"
}
