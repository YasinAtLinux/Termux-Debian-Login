# Login Management Scripts

This repository provides scripts to manage logins between different environments such as Debian, Void, and Termux.

# Setup Scripts Overview

**Setup_Script_v1.sh**
Manages login for Debian and Termux environments.

Setup_Script_v2.sh
Extends functionality to manage logins for Debian, Void, and Termux environments, with support for Manjaro (with minor adjustments).

---

# How to Use

## Step 1: Download the Script

You can either clone the repository or download the specific setup script:

```
git clone https://github.com/YasinAtLinux/Termux-Debian-Login.git
```
Alternatively, download Setup_Script_v1.sh or Setup_Script_v2.sh directly.

## Step 2: Make the Script Executable
```
chmod +x Setup_Script_v1.sh
```
# OR
```
chmod +x Setup_Script_v2.sh
```

## Step 3: Run the Script
```
./Setup_Script_v1.sh
```
# OR
```
./Setup_Script_v2.sh
```

This will create a .loginScripts/ directory in your home folder and append necessary login commands to your ~/.bashrc. The scripts will not override your .bashrc, but it's recommended to back up your .bashrc before running the script:
```
cp ~/.bashrc ~/.bashrc.bak
```

## Step 4: Manual Adjustments

After running the setup script, follow these steps:

**For Debian:**

1. Open .loginScripts/deb_login.sh:

```
nano ~/.loginScripts/deb_login.sh
```

2. Replace yasin with your Debian username.


**For Void Linux (only in Setup_Script_v2.sh):**

1. Open .loginScripts/void_login.sh:
```
nano ~/.loginScripts/void_login.sh
```

2. Replace the default username with your Void Linux username.


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


## > Disclaimer: These scripts have been tested and work as expected. However, you are solely responsible for ensuring proper execution and adjustments based on your system.




---

Feel free to modify the README as needed.


