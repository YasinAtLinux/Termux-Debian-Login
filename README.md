# What this repo is about
This repository provides a solution for users who have installed Debian via proot-distro on the Termux app, allowing seamless login management between the Termux and Debian environments. When you open the Termux app, you'll be given the option to log in either to the Termux environment or directly into Debian. The same options are available when logging out.

# Key functionality:

- Upon opening Termux, you can choose to log in to either Termux or Debian.

- When logging out of Debian, you will be prompted to either switch back to the Termux environment or exit the application entirely. (Note: Exiting the Termux app directly from Debian only works if you logged in using this method. If you manually logged into Debian by running proot-distro login debian --user <your-username>, this feature won't work.)

# Setup Instruction

Setup Instructions:

1. Create a directory in the Termux environment called .loginScripts:

mkdir ~/.loginScripts

2. Move all .sh files into that directory.

3. Edit the .bashrc file by adding the provided lines to the end of it.

4. Run the command source .bashrc to apply the changes.

# Notes
1. Replace 'yasin' in the deb_login.sh script with your Debian username.

2. If you're running multiple sessions, only the current session you want to exit will be terminated. This will not close the entire Termux application in such cases.
