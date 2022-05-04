# Head into the following webpage, `https://sparta-devops.signin.aws.amazon.com/console`.
# Sign in as a IAM user using the Account ID, IAM username and password given by SpartaGlobal.
# MAke sure the region is selected to be `Ireland`.
# Search for `EC2` in the search box and click on it.
# Look for `Launch instance` and then browse down to `Launch instance` and click on it.
1. Step 1: Choose an Amazon Machine Image (AMI)
# Select the box for `Free tier only` to only allow creation for free versions of the instances (Virtual Machine).
# Look for `Ubuntu Server 18.04 LTS` as per the requirement for the client and press the button `Select`.
2. Step 2: Choose an Instance Type
# Then select `t2.micro Free tier eligible` within the `Type` category, press `Next: Configure Instance Details`.
3. Step 3: Configure Instance
# Put `1` in the `Number of instances` box and then in `Network` select `vpc-07e47e9d900d207da (default)`.
# Move next to the `Subnet` and select `DevOpsStudent default 1a` and for `Auto-assign Public IP` select `Enable` since its FrontEnd.
# Tick `Enable` for `DNS Hostname` and leave everything else as is and click `Next: Add Storage`.
4. Step 4: Add Storage
# For the moment don't change anything unless specified by client for storage (just makesure the storage is enough for the app and click `Next: Add Tags`.