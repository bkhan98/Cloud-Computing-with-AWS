## How to install a nginx using automated bash script

1. Create and open a .sh file named 'provisioning.sh' using the command 'nano provisioning.sh'
    > *This creates a file with .sh extension and opens it for editing.*

2. Insert the following text, `#!/bin/bash`.
    > *The text in qoute tells the OS that it is a bash script.*

3. Insert the following text, `sudo apt-get update -y`.
    > *The command runs updates.*

4. Insert the following text, `sudo apt-get upgrade -y`.
    >*The command runs upgrades.*

5. Insert the following text, `sudo apt-get install nginx -y`.
    > *The command installs nginx.*

6. Insert the following text, `sudo systemctl start nginx`.
    > *The command starts nginx.*

7. Insert the following text, `sudo systemctl enable nginx`.
    > *The command enables nginx.*


8. Insert the following text, `cd app/app`.
    > *To change the directory to folder with the .*

9. Insert the following text, `sudo apt-get install python-software-properties -y`.
    > *Installs python software properties.*

10. Insert the following text, `url -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -`.
    > *Makes a curl request to the link and downloads the specific nodesjs version for us it is the 6 version.*

11. Insert the following text, `sudo apt-get install -y nodejs`.
    > *installs the nodejs version requested with the download link.*

12. Insert the following text, `sudo apt-get update -y`.
    > *checks for internet connection and updates.*

13. Insert the following text, `npm install`.
    > *installs the dependencies.*

14. Insert the following text, `rm -rf /etc/nginx/sites-available/default`.
    > * removes the file.*

15. Insert the following text, `npm start &`.
    > *runs the npm in the background.*

16. To save and exit `nano` mode, hold `ctrl` and press `x`, then press `y` and `enter`.
    > *This exits the editing mode and saves the file too.*

17. Now type `sudo chmod +x provisioning.sh` into the terminal.
    > *This allows our .sh bash file to be executable.

18.  To be able to run the script upon the `vagrant up` command we need to edit "Vagrantfile" (which is without any extentions) to notify it to run our local script within the vitrtual machine
    > *The next step will make `vagrant up` command execute our "provisioning.sh" inside the virtual machine*
19.  Open Vagrantfile for editing using the command, `nano Vagrantfile`. 

20. Thus, we add the following script into "Vagrantfile":
        Vagrant.configure("2") do |config|

            config.vm.box = "ubuntu/xenial64"

            config.vm.network "private_network", ip: "192.168.10.10"

            config.trigger.after :up do |trigger|
                config.vm.provisioning "shell", path: "provisioning.sh"
            end
        end

21.  To save and exit `nano` mode, hold `ctrl` and press `x`, then press `y` and `enter`.
    > *This exits the editing mode and saves the file too.*

* The command below is only needed when automation is adopted, for manual installation of nginx this step is not to be included in the "provisioning.sh file:

        config.trigger.after :up do |trigger|
            config.vm.provision "shell", path: "provisioning.sh"
        end

### Notes 
#### What is Provisioning?
Provisioning is the process of configuring and deploying an information technology (IT) system resource either locally or in the cloud.