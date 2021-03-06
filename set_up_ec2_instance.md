### How to set up an App EC2 instance (step-by-step_instructions):
* Head into the following webpage, `'https://sparta-devops.signin.aws.amazon.com/console'`.
* Sign in as a IAM user using the Account ID, IAM username and password given by SpartaGlobal.
* Make sure the region is selected to be `'Ireland'`.
* Search for `'EC2'` in the search box and click on it.
* Look for `'Launch instance'` and then browse down to `'Launch instance'` and click on it.
### Step 1: Choose an Amazon Machine Image (AMI)
* > Select the box for `'Free tier only'` to only allow creation for free versions of the instances (Virtual Machine).
* > Look for `'Ubuntu Server 18.04 LTS'` as per the requirement for the client and press the button `'Select'`.
### Step 2: Choose an Instance Type
* > Then select `'t2.micro Free tier eligible'` within the `'Type'` category, press `'Next: Configure Instance Details'`.
### Step 3: Configure Instance
* > Put `'1'` in the `'Number of instances'` box and then in `'Network'` select `'vpc-07e47e9d900d207da (default)'`.
* > Move next to the `'Subnet'` and select `'DevOpsStudent default 1a'` and for `'Auto-assign Public IP'` select `'Enable'` since its FrontEnd.
* > Tick `'Enable'` for `'DNS Hostname'` and leave everything else as is and click `'Next: Add Storage'`.
### Step 4: Add Storage
* > For the moment don't change anything unless specified by client for storage (just makesure the storage is enough for the app and click `'Next: Add Tags'`.
### Step 5: Add Tags
* > In this section under `'Key'` type `'Name'` and then under `'Value'` type `'eng110_bilalkhan'` and then click on `'Next: Configure Security Group'`
### Step 6: Configure Security Group
* > For `'Assign a security group'` select `'Create a new security group'` then under `'Security group name'` type `'eng110_bilalkhan_sg_app'` and same for `'Description'` again.
* > Then for `'Type'` select `'SSH'` but for `'Source'` select `'My IP'` and then for `Description` type 'office ip - my ip'.
* > Then click on `'Add Rule'` and for `'Type'` select `'HTTP'` but for `'Source'` select `'Anywhere'` and for `Description` type 'for nginx - public ip' and press `Review and Launch`
### Step 7: Review Instance Launch
* > Just check if everything is correct and double check as you can still review it.
* > In this section you will get a pop-up box and make sure the first box says `'Choose an existing pair'` and for `'Select a key pair'` its `'eng119|RSA'` then tick the box below and select `'Launch Instances'`.
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
  * >  5. Copy the command under `'4. example'` and put it into the terminal when you are in the .ssh folder within terminal and run it and type "Yes".
* >  Check if you're in linux or status by typing "uname -a"
### Step 9: install, enable and start Nginx like before in Vagrant.
* > `'sudo apt-get update -y'`
    * > Run update
* > `'sudo apt-get upgrade -y'`
    * > Run upgrade
* > `'sudo apt-get install nginx -y'`
    * > Installs Nginx
### Step 10: Adding files from local host to EC2
* > Add the `'app'` folder into the VM using the generally copy folder command `'scp -i location/file.pem -r destination/dir ec2@ip.com:source/file/or/folder'` but use the follwing command which is more specific to my system: `'scp -i ~/.ssh/eng119.pem -r ~/Cloud-Computing-with-AWS/app ubuntu@ec2-18-202-222-47.eu-west-1.compute.amazonaws.com:~/.'`
* > SCP is secure file proxy
* > -i is identifier
* > pem location
* > -r receive
* > destination
* > Public DNS/ec2 id
* > source file or folder
* > netstat -tulpn | grep PORT_NUMBER - checks if the port is listening to X

## Step 11: Set up Reverse Proxy with Nginx
* > In `'Security Groups'` edit `'Inbound rules'`
* > click `'Add rule'` and under `'Type'` choose `'Custom TCP'`.
* > Then under `'Port range'`, put `'0.0.0.0/0'` and click `'Save rule'`.
* > Then go the `'Terminal'` and on Linux VM go to location: `'/etc/nginx/sites-available/default'` using `'cd'` command so like this: `'cd /etc/nginx/sites-available/default`' 
* 
* 
*  Add the `'app'` folder into the VM using the generally copy folder command `'scp -i location/file.pem -r destination/dir ec2@ip.com:source/file/or/folder'` but use the follwing command which is more specific to my system: `'scp -i ~/.ssh/eng119.pem -r ~/Cloud-Computing-with-AWS/app ubuntu@ec2-18-202-222-47.eu-west-1.compute.amazonaws.com:~/.'`

### How to set up an DB EC2 instance (step-by-step_instructions):
* Head into the following webpage, `'https://sparta-devops.signin.aws.amazon.com/console'`.
* Sign in as a IAM user using the Account ID, IAM username and password given by SpartaGlobal.
* Make sure the region is selected to be `'Ireland'`.
* Search for `'EC2'` in the search box and click on it.
* Look for `'Launch instance'` and then browse down to `'Launch instance'` and click on it.
### Step 1: Choose an Amazon Machine Image (AMI)
* > Select the box for `'Free tier only'` to only allow creation for free versions of the instances (Virtual Machine).
* > Look for `'Ubuntu Server 18.04 LTS'` as per the requirement for the client and press the button `'Select'`.
### Step 2: Choose an Instance Type
* > Then select `'t2.micro Free tier eligible'` within the `'Type'` category, press `'Next: Configure Instance Details'`.
### Step 3: Configure Instance
* > Put `'1'` in the `'Number of instances'` box and then in `'Network'` select `'vpc-07e47e9d900d207da (default)'`.
* > Move next to the `'Subnet'` and select `'DevOpsStudent default 1a'` and for `'Auto-assign Public IP'` select `'Enable'` since its FrontEnd.
* > Tick `'Enable'` for `'DNS Hostname'` and leave everything else as is and click `'Next: Add Storage'`.
### Step 4: Add Storage
* > For the moment don't change anything unless specified by client for storage (just makesure the storage is enough for the app and click `'Next: Add Tags'`.
### Step 5: Add Tags
* > In this section under `'Key'` type `'Name'` and then under `'Value'` type `'eng110_bilalkhan'` and then click on `'Next: Configure Security Group'`
### Step 6: Configure Security Group
* > For `'Assign a security group'` select `'Create a new security group'` then under `'Security group name'` type `'eng110_bilalkhan_sg_app_db'` and same for `'Description'` again.
* > Then for `'Type'` select `'SSH'` but for `'Source'` select `'My IP'` and then for `Description` type 'my ip'.
* > Then click on `'Add Rule'` and for `'Type'` select `'Custom TCP'` and then for `'Port range'` type `'27017'`
* but for `'Source'` select `'Custom'`  and type the following `'EC2 Public ip/32'` and for `Description` type `'app ip'` and press `Review and Launch`.
### Step 7: Review Instance Launch
* > Just check if everything is correct and double check as you can still review it.
* > In this section you will get a pop-up box and make sure the first box says `'Choose an existing pair'` and for `'Select a key pair'` its `'eng119|RSA'` then tick the box below and select `'Launch Instances'`.
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
  * >  5. Copy the command under `'4. example'` and put it into the terminal when you are in the .ssh folder within terminal and run it and type "Yes".
* >  Check if you're in linux or status by typing "uname -a"
## Connecting to EC2
   * > sudo apt-get update -y
   * > sudo apt-get upgrade -y
   * > sudo apt-get install nginx -y
 * Go to your public IP ( Found on EC2 instance connect)


## setting up mongod
> 1. Type in these commands, one by one:

        sudo apt-get update -y
        sudo apt-get upgrade -y
        sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927
        echo "deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
        sudo apt-get update -y
        sudo apt-get upgrade -y
        sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20
        sudo systemctl status mongod
        sudo systemctl start mongod
        sudo systemctl enable mongod
        sudo systemctl status mongod

> 2. Type in `cd /etc` and then type in `sudo nano mongod.conf`. Under `network interfaces`, for the ip put in `0.0.0.0`. Save and exit.

> 3. Type in these commands:

        sudo systemctl restart mongod
        sudo systemctl enable mongod
        sudo systemctl status mongod

> 4. In your app EC2 instance, type in `sudo echo "export DB_HOST=mongodb://your_db_ip:27017/posts" >> ~/.bashrc`. 

> 4. Run the command `source ~/.bashrc`.

> 5. Check the environment variable with the command `printenv DB_HOST`.

> 6. Still in the app EC2 instance, run the command `node seeds/seed.js`. 

> 7. Type in `npm start`. 

