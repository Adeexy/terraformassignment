# terraformassignment
Hosting a static website using s3, route53, cloudfront on terraform

To ensure my domain is setup  properly, I had to set up my domain name in Route 53 Hosted zones and ensure the nameservers are updated. 

I defined variables in variables.tf and terraform.tfvars to be used throughout the Terraform configuration

Configured the provider in init.tf

Creates an S3 bucket and policies to allow for public acess and uploads website files


I successfuly setup my terraform files based on the file structure stated in the assignment

Did terraform init, terraform validate, and terraform apply.

I got stuck at the point of certificate validation as shown in the image below. I suspect this is as a result of my DNS not propagation.

![terraform error](https://github.com/Adeexy/terraformassignment/assets/151438215/2febd5ee-02d1-45c7-8546-0e9620c8dc62

