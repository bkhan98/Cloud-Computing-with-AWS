### Set up:
* Head into the following webpage, `https://sparta-devops.signin.aws.amazon.com/console`.
* Sign in as a IAM user using the Account ID, IAM username and password given by SpartaGlobal.
* Make sure the region is selected to be `Ireland`.
* Search for `EC2` in the search box and click on it.
* Look for `Launch instance` and then browse down to `Launch instance` and click on it.
### Step 1: Choose an Amazon Machine Image (AMI)
* > Select the box for `Free tier only` to only allow creation for free versions of the instances (Virtual Machine).
* > Look for `Ubuntu Server 18.04 LTS` as per the requirement for the client and press the button `Select`.
### Step 2: Choose an Instance Type
* > Then select `t2.micro Free tier eligible` within the `Type` category, press `Next: Configure Instance Details`.
### Step 3: Configure Instance
* > Put `1` in the `Number of instances` box and then in `Network` select `vpc-07e47e9d900d207da (default)`.
* > Move next to the `Subnet` and select `DevOpsStudent default 1a` and for `Auto-assign Public IP` select `Enable` since its FrontEnd.
* > Tick `Enable` for `DNS Hostname` and leave everything else as is and click `Next: Add Storage`.
### Step 4: Add Storage
* > For the moment don't change anything unless specified by client for storage (just makesure the storage is enough for the app and click `Next: Add Tags`.
### Step 5: Add Tags
* > In this section under `Key` type 'Name' and then under `Value` type 'eng110_bilalkhan' and then click on `Next: Configure Security Group`
### Step 6: Configure Security Group
* > For `Assign a security group` select `Create a new security group` then under `Security group name` type 'eng110_bilalkhan_sg_app' and same for `Description` again.
* > Then for `Type` select `SSH` but for `Source` select `My IP` and then for `Description` type 'office ip - my ip'.
* > Then click on `Add Rule` and for `Type` select `HTTP` but for `Source` select `Anywhere` and for `Description` type 'for nginx - public ip' and press `Review and Launch`
### Step 7: Review Instance Launch
* > Just check if everything is correct and doucble check as you can still review it.
* > In this section you will get a pop-up box and make sure the first box says 'Choose an existing pair' and for `Select a key pair` its 'eng119|RSA' then tick the box below and select 'Launch Instances'.
### Step  8: SSH into the New Machine
* > So to SSH into the machine select the `Instance under `Instances` and click on `Connect` and then click on the tab `SSH client`
* > Follow the information given by AWS:
  * > 1. Open an SSH client (meaning Bash\Terminal).
  * > 2. Locate your private key file. The key used to launch this instance is "eng119.pem", and put it in .ssh folder.
  * > 3. Run this command, if necessary, to ensure your key is not publicly viewable.
     * > chmod 400 eng119.pem # to give it permission
  * >  4. Connect to your instance using its Public DNS:
        > there will be an address
        > for example: ssh -i"eng119.pem"ubuntiu@....
  * >  5. Copy the 4. example and put in the terminal when you are in the .ssh folder within terminal and run it and type "Yes".
* >  Check if you're in linux or status by typing "uname -a"
### Step 9: install, enable and start Nginx like before in Vagrant.
* > sudo apt update -y
* > sudo apt upgrade -y
* > sudo apt install nginx -y
* > sudo apt npm start -y
* > sudo systemctl start nginx
* > sudo systemctl enable nginx





