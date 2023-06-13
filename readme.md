# This git repository contains code for creating a  remote backend for managing its state


When using Terraform with AWS as your infrastructure provider, you can manage the Terraform state by storing it in an Amazon S3 bucket and using an Amazon DynamoDB table for state locking

# Steps To Create s3 bucket and DynamoDB table 

    1.  Clone this repository into your system 

    2.  cd .\local-setup\

    3. terraform init

    4. terraform apply --auto-approve

#  Validate if s3 remote working

    1. cd .\remote-setup\

    2. terraform init

    ![Screenshot](images\s3_backend.PNG)

    3. terraform apply --auto-approve

    Once you run this command it will create the resources in aws and will create a state file in s3 
    

    ![Screenshot](images\state.PNG)






