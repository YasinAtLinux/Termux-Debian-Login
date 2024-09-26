# Setup Scripts

# Setup_Script_v1.sh

This script manages the login between your Debian environment and Termux Environment. 

How to Use:

1. Download the Script: If you don’t want to clone the repository, you can just download the script directly.


2. Make it Executable:
```
chmod +x Setup_Script_v1.sh
```

3. Run the Script:
```
./Setup_Script_v1.sh
```
This script will create a .loginScripts directory in your home directory and append the necessary commands to your ~/.bashrc.

After running the script, you won’t need to do anything except one adjustment:


## Adjustment to Make:

1. Open the file .loginScripts/deb_login.sh:
```
nano .loginScripts/deb_login.sh
```

2. Replace yasin with your own Debian username in the script.




---

# Setup_Script_v2.sh
## This Script Manage Login for Debian, Void and Termux

This script works similarly to Setup_Script_v1.sh, but with the ability to manage three different environments: Debian, Void, and Termux.

## How to Use:

Follow the same steps as in Version 1.0 for setup and execution.

## Adjustment to Make
1. DON't Forget to change the username in deb_login.sh and void_login.sh

## Additional Information:

This logic (Not Script) is also compatible with Manjaro, though a slight modification in Setup_Script_v2.sh  is required to adapt it for that environment. You have to create manjaro_login.sh instead of void_login.sh
Then Add following command instead of existing one.
```
proot-distro login manjaro --user username
```
Replace void_login.sh with manjaro_login.sh in initial_prompt.sh.

---

### Note: Both Scripts does NOT override your ~/.bashrc file. But still you should make a backup for your .bashrc file before executing this script.

## It is working absolutely fine. But YOU are solely Responsible for doing this. 

