🧱 Resources Created

This Terraform code creates the following AWS resources:

🔑 Key Pair

Creates an AWS key pair using an existing public key file

Used to SSH into the EC2 instance

🌐 Default VPC

Uses the AWS default VPC (no custom networking)

🔐 Security Group

Allows SSH (port 22) from anywhere

Allows all outbound traffic

⚠️ Note:
0.0.0.0/0 is used for learning purposes.
In production, restrict SSH access to your IP.

🖥️ EC2 Instance

Instance type: t3.micro

Uses Ubuntu AMI (passed via variable)

Associated with the created key pair and security group
