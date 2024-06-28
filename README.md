# terraformassignment
Hosting a static website using s3, route53, cloudfront on terraform
To ensure my domain is setup  properly, I had to set up my domain name in Route 53 Hosted zones and ensure the nameservers are updated. 
I defined variables in variables.tf and terraform.tfvars to be used throughout the Terraform configuration
Configured the provider in init.tf
Creates an S3 bucket and policies to allow for public acess and uploads website files
