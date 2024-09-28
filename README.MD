# Repository Overview

This repository provides a solution for users running Debian or Void or ArchLinux through proot-distro on the Termux app, offering seamless login management between Termux and Debian environments or Termux and Debian and Arch or Void Linux environment. Upon opening Termux, users can choose to log into either the Termux environment or directly into Debian or Arch or Void Linux. Similarly, options are provided when logging out, streamlining session transitions.

# Key Features

- Flexible Login: Upon opening Termux, users are prompted to select between logging into Termux or Debian or Arch or Void. 

- Logout Options: When logging out from Debian or Arch or Void, users can either return to the Termux environment or exit the application. (Note: Exiting Termux directly from Debian only works if the login was initiated via the provided method. Manually logging in with proot-distro login debian --user <your-username> bypasses this feature.)

# Login Management Scripts

This repository provides scripts to manage logins between different environments such as Debian, Void, Arch and Termux. These Scripts will create all the necessary files and folders. You can also Download Script from SetupScripts folder in this repository.

# Setup Scripts Overview

**Debian-Termux.sh**
Manages login for Debian and Termux environments.

**Debian-Void-Termux.sh**
Extends functionality to manage logins for Debian, Void, and Termux environments, with support for Manjaro (with minor adjustments).

**Debian-Arch-Termux.sh**
Extends functionality to manage logins for Debian,
 ArchLinux, and Termux environments

---

# How to Use

## Step 1: Download the Script

You can download the scripts by executing following commands :
Choose appropriate command

**Debian-Termux.sh**

```
wget https://raw.githubusercontent.com/YasinAtLinux/Termux-Debian-Login/main/SetupScripts/Debian-Termux.sh
```

**Debian-Void-Termux.sh**

```
wget https://raw.githubusercontent.com/YasinAtLinux/Termux-Debian-Login/main/SetupScripts/Debian-Void-Termux.sh
```

**Debian-Arch-Termux.sh**

```
wget https://raw.githubusercontent.com/YasinAtLinux/Termux-Debian-Login/main/SetupScripts/Debian-Arch-Termux.sh
```
## Step 2: Manual Adjustments                                                                       Before running the setup script, follow these steps:

Don't forget to replace "yasin" with Your Own username in evey _login.sh file. 

**For Debian:**

1. Open ~/.loginScripts/deb_login.sh:

```
nano ~/.loginScripts/deb_login.sh
```                                               
2. Replace yasin with your Debian username.                                                                                                           **For Void Linux (only if You have chosen Debian-Void-Termux.sh):**  
1. Open .loginScripts/void_login.sh:

```
nano ~/.loginScripts/void_login.sh
```
2. Replace yasin with your Void username

**For Arch Linux (Only if You have chosen Debian-Arch-Termux.sh**
1. Open ~/.loginScripts/arch.login.sh:

```
nano ~/.loginScripts/arch_login.sh
```
                                                 
2. Replace the default username with your ArchLinux username.

## NOTE : 
These scripts will not overwrite your ~/.bashrc file, but it is recommended to take a backup of your .bashrc file.

```
cp ~/.bashrc ~/.bashrc.bak
```

## Step 3: Make the Script Executable
Check .loginScripts directory with ls -a command.

Now Make Downloaded script to executable. Copy appropriate Command from following :

```
chmod +x Debian-Termux.sh
```
### OR

```
chmod +x Debian-Void-Termux.sh
```
### OR

```
chmod +x Debian-Arch-Termux.sh
```

## Step 3: Run the Script :
Copy appropriate command from following :

```
./Debian-Termux.sh
```
### OR

```
./Debian-Void-Termux.sh
```
### OR

```
./Debian-Arch-Termux.sh
```

This will create a .loginScripts/ directory in your home folder and append necessary login commands to your ~/.bashrc. Again it will NOT overwrite your .bashrc file. 

### For Manjaro (Optional for Setup_Script_v2.sh):

You can adapt the script to support Manjaro as follows:

1. Create a new script named manjaro_login.sh:

```
nano ~/.loginScripts/manjaro_login.sh
```

2. Add the following command to the script:
```
proot-distro login manjaro --user your_username
```

3. Replace references to void_login.sh in initial_prompt.sh with manjaro_login.sh.


---

Additional Information

The scripts are designed to integrate seamlessly with your existing .bashrc configuration.

Ensure you have the correct usernames in the relevant login scripts for each environment.


### > Disclaimer: These scripts have been tested and work as expected. However, you are solely responsible for ensuring proper execution and adjustments based on your system.

___

## Notes :

1. Replace 'yasin' in the deb_login.sh and arch_login.sh and void_login.sh scripts with your own username which you have set for particular environment.

2. If you are cloning the repo, move .loginScripts folder to home directory.

3. If you're running multiple sessions, only the current session you want to exit will be terminated. This will not close the entire Termux application in such cases.

4. I use ChatGPT for this. But It took me several days to get what I want. I had to ask questions in different ways. Many solutions were given, but none worked except this.

5. This repo is for newbie like me. ofcourse experts know better than this.
