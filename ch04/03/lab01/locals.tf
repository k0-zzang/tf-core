locals {
    org     = "tf-core"
    project = "lab01"

    namespace = "${local.org}-${local.project}"

    s3bucket = {
        name = "tfstate-k0"  
      # 이름 중복되면 생성이 안되서 꼭 다르게 생성해줘야함 매번 권한문제로 init 안된이유임

        bucket = "${local.org}-tfstate-k0"
        
        versioning_configuration = {
            status = "Enabled"
    }
    
    public_access_block = {
      block_public_acls       = true
      block_public_policy     = true
      ignore_public_acls      = true
      restrict_public_buckets = true
    }
  }
}