# CSEL
## Cyberpatriot Scoring Engine: Linux

CSEL is a scoring engine written in bash for scoring Linux CyberPatriot images. It is configured by adding scoring options into the csel.cfg and running the install file. It now includes a web page Score Report. It works (to varying degrees) with Ubuntu 14.04 and 16.04.

## Important Update
CSEL has been rewritten in python as PySEL. Try it out here: [PySEL Repo](https://github.com/FWSquatch/pysel)

## Features
CSEL is still a baby and it's rough around the edges, but so far it can score the following events:
- Deleting "bad" users
- Creating new "good" users
- Changing passwords on accounts
- Removing users from the admininstrator group
- Creating groups
- Securing /etc/sudoers file
- Disabling guest login
- Disabling autologin
- Disabling usernames on the login page
- Setting the minimum password age
- Setting the maximum password age
- Setting the maximum number of login tries
- Setting password history value
- Setting password length
- Installing "good" programs
- Uninstalling "bad" programs
- Deleting prohibited files
- Removing backdoors (malicious services)
- Enabling the firewall
- Securing ssh
- Configuring the hosts files
- Updating the kernel
- Removing things from user crontabs
- Updating clamav virus definitions 
- Removing things from startup
- Answering the forensics question correctly
- Changing update options
- Adding or uncommenting lines from config files
- Deleting or commenting lines from config files

CSEL can also take away points for:
- Deleting "good" users

CSEL can be run with "silent misses" which simulates a CyberPatriot round where you have no idea where the points are until you earn them. It can also be run with the silent misses turned off which is helpful when you are debugging or when you have very inexperienced students who might benefit from the help. This mode gives you a general idea where the points are missing.

## How to install
1. Set up your image and put your vulnerabilities in place.
2. Install the following prerequisites: git and python-tk.
3. Clone into CSEL by typing: sudo git clone https://github.com/FWSquatch/CSEL.git
4. Run python configurator.py to set up the config file. 
5. Run the installer by typing `sudo ./install` in the CSEL directory.
6. After you are satisfied that it is working how you want, you can delete the CSEL directory.

**Important Note**: Your students _will_ be able to see the vulnerabilities if you leave the CSEL folder behind or if they cat the executable file that is created in /usr/local/bin/. I tell my students where the file is and that they should stay away from it. It is practice, after all.
