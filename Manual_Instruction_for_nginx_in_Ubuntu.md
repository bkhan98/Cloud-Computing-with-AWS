## How to install a nginx on aws instance

1. Go to Ubuntu/Linux and do the folowing:  

2. Insert the following text, `sudo apt-get update -y`.
    > *The command runs updates.*

3. Insert the following text, `sudo apt-get upgrade -y`.
    > *The command runs upgrades.*

4. Insert the following text, `sudo apt-get install nginx -y`.
    > *The command installs nginx.*

5. Insert the following text, `sudo systemctl start nginx`.
    > *The command starts nginx.*

6. Insert the following text, `sudo systemctl enable nginx`.
    > *The command enables nginx.*

7. Now we need send/copy the app folder into VM Ubuntu by doing the following command in (general): 
   >   * `scp -i location/file.pem -r destination/dir ec2@ip.com:source/file/or/folder`
* But more specifically to our case use the below:
    >   * `scp -i ~/.ssh/eng119.pem -r /Users/b_khan98/Cloud-Computing-with-AWS/app ubuntu@ec2-54-194-203-211.eu-west-1.compute.amazonaws.com:/home/ubuntu`   

8. Allows us to edit the file at /etc/nginx/sites-available/default. So lets move to the right directory first:
    > `"cd /etc/nginx/sites-available"` 
    > * if we do `ls` we should get a file named `"default"`

9. Now lets open the file and edit it using:
    > `"sudo nano default"` 
    > Once we are inside in the file, go to the section under "Location {}" and remove all the text inside the curly brackets and the "Location{} should have the following:
    > `proxy_pass http://localhost:3000;`
    > `proxy_http_version 1.1;`
    > `proxy_set_header Upgrade $http_upgrade;`
    > `proxy_set_header Connection 'upgrade';`
    > `proxy_set_header Host $host;`
    > `proxy_cache_bypass $http_upgrade;`
    Now save this file by holding `control` and press `s` and then hold `control`  and press `x` and type `y` and then `enter`.

6. Change the directory back to `Ubuntu` home directory. Insert the following text, `cd ~`.
    > *The command takes you to the home directory.*

10. Insert the following text, `cd app/app`.
    > *To change the directory to folder with the .*

11. Insert the following text, `sudo apt-get install python-software-properties -y`.
    > *Installs python software properties.*

12. Insert the following text, `url -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -`.
    > *Makes a curl request to the link and downloads the specific nodesjs version for us it is the 6 version.*

13. Insert the following text, `sudo apt-get install -y nodejs`.
    > *installs the nodejs version requested with the download link.*

14. Insert the following text, `sudo apt-get update -y`.
    > *checks for internet connection and updates.*

15. Insert the following text, `npm install`.
    > *installs the dependencies.*

16. Insert the following text, `rm -rf /etc/nginx/sites-available/default`.
    > * removes the file.*

17. Insert the following text, `npm start &`.
    > *runs the npm in the background.*

18. To save and exit `nano` mode, hold `ctrl` and press `x`, then press `y` and `enter`.
    > *This exits the editing mode and saves the file too.*

19. Now type `sudo chmod +x provisioning.sh` into the terminal.
    > *This allows our .sh bash file to be executable.

20.  To be able to run the script upon the `vagrant up` command we need to edit "Vagrantfile" (which is without any extentions) to notify it to run our local script within the vitrtual machine
    > *The next step will make `vagrant up` command execute our "provisioning.sh" inside the virtual machine*
21.  Open Vagrantfile for editing using the command, `nano Vagrantfile`. 

22. Thus, we add the following script into "Vagrantfile":
        Vagrant.configure("2") do |config|

            config.vm.box = "ubuntu/xenial64"

            config.vm.network "private_network", ip: "192.168.10.10"

            config.trigger.after :up do |trigger|
                config.vm.provisioning "shell", path: "provisioning.sh"
            end
        end

23.  To save and exit `nano` mode, hold `ctrl` and press `x`, then press `y` and `enter`.
    > *This exits the editing mode and saves the file too.*

* The command below is only needed when automation is adopted, for manual installation of nginx this step is not to be included in the "provisioning.sh file:

        config.trigger.after :up do |trigger|
            config.vm.provision "shell", path: "provisioning.sh"
        end

### Notes 
#### What is Provisioning?
Provisioning is the process of configuring and deploying an information technology (IT) system resource either locally or in the cloud.








#!/bin/bash
# The above line lets the OS know that this file is going to be a bash script.

# Run updates. the `-y` means any notifications of whether you want to continue will be met with a yes
sudo apt update -y
# Run upgrades
sudo apt upgrade -y
# Install nginx
sudo apt install nginx -y
# Start nginx
sudo systemctl start nginx
# Enable nginx
sudo systemctl enable nginx

# Allows us to edit the file at /etc/nginx/sites-available/default
sudo chown ubuntu: /etc/nginx/sites-available/.

# Deletes lines 49-51 in the default file we now have permission to
sed '49,51d' /etc/nginx/sites-available/default -i
# Inserts all the necessary lines in the default file to set up a reverse proxy for nginx
awk 'NR==49{print "             proxy_pass http://localhost:3000;"}7' /etc/nginx/sites-available/default > change && mv change /etc/nginx/sites-available/default
awk 'NR==50{print "             proxy_http_version 1.1;"}7' /etc/nginx/sites-available/default > change && mv change /etc/nginx/sites-available/default      
awk 'NR==51{print "             proxy_set_header Upgrade $http_upgrade;"}7' /etc/nginx/sites-available/default > change && mv change /etc/nginx/sites-available/default
awk 'NR==52{print "             proxy_set_header Connection 'upgrade';"}7' /etc/nginx/sites-available/default > change && mv change /etc/nginx/sites-available/default
awk 'NR==53{print "             proxy_set_header Host $host;"}7' /etc/nginx/sites-available/default > change && mv change /etc/nginx/sites-available/default 
awk 'NR==54{print "             proxy_cache_bypass $http_upgrade;"}7' /etc/nginx/sites-available/default > change && mv change /etc/nginx/sites-available/default

# Restores the permissions we changed to edit the default file
sudo chown root: /etc/nginx/sites-available/.
sudo chown root: /etc/nginx/sites-available/default

# restarts nginx as we have changed the default file
sudo systemctl restart nginx

# Changes the directory to where we want to install the dependencies
cd app
# Installs dependencies
sudo apt install software-properties-common -y
# Gets version 12
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
# Installs nodejs
sudo apt-get install -y nodejs
