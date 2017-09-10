# CSEL
## Cyberpatriot Scoring Engine: Linux

CSEL is a scoring engine written in bash for scoring Linux CyberPatriot images. It is configured by adding scoring options into the csel file itself and is invoked from the terminal by typing `sudo csel`. It has been tested in Ubuntu 14.04 and 16.04.

## Features
CSEL is still a baby and it's rough around the edges, but so far it can score the following events:
- Deleting "bad" users
- Changing passwords on accounts
- Removing users from the admininstrator group
- Disabling guest login
- Disabling autologin
- Setting the minimum password age
- Setting the maximum password age
- Setting the maximum number of login tries
- Installing "good" programs
- Uninstalling "bad" programs
- Deleting prohibited files
- Removing backdoors
- Configuring the hosts files
- Removing things from the crontab (needs improvement--can only do this for root right now)
- Answering the forensics question correctly

CSEL can also take away points for:
- Deleting "good" users

CSEL can be run with "silent misses" which simulates a CyberPatriot round where you have no idea where the points are until you earn them. It can also be run with the silent misses turned off which is helpful when you are debugging or when you have very inexperienced students who might benefit from the help. This mode gives you a general idea where the points are missing.

## How to install
1. Set up your image and put your vulnerabilities in place.
2. Edit csel's configuration section (at the top of the file) to tell it what you would like to award points for.
3. Use `chmod` to change csel's permissions: `sudo chmod 777 csel` (This may or may not be required since you are forced to use sudo anyway).
4. Move csel to the `/usr/local/bin/` directory.
5. Tell the students to check their score at any time by typing `sudo csel` in any terminal.

**Important Note**: Your students _will_ be able to see the vulnerabilities if they cat the file or open it with a text editor. I tell my students where the file is and that they should stay away from it. It is practice, after all.

## Future Additions
I would eventually like csel to be able to score as many events as the Windows scoring engine so I plan to keep adding new features as I get time. I'm not sure if I want to keep it in bash or rewrite it to some other language. I am definitely not a bash ninja and I feel like I have to trick it into doing what I want half of the time. 
My goal is to eventually write a gui for the scoring engine to make it more accessible. If you have any feedback, I'd love to hear from you!
