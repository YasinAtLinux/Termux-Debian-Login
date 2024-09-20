# What this repo is about?
If you have installed Debian via proot-distro on termux app, this will help you login in both termux and debian environment. It will give you options when you open the termux app whether to login in termux environment or directly to debian environment. Same at logout. 
When you open termux application, it will ask to login in termux or debian. 
When you logout from debian, it will ask whether you want to login in termux environment or exit application directly itself. (Note : exiting termux application from debian directly works only if you have login with same method. If you have manually login from termux environment by executing proot-distro login debian --user user, it won't work)

# Here are the steps :
1) Create a directory at home in termux environment called .loginScripts mkdir ~/.loginScripts
2) mv all .sh files into that directory
3) edit .bashrc file : Add given lines in .bashrc file at the end.
4) source .bashrc
   
# Note
Don't forget to replace 'yasin' in deb_login.sh with your own debian username.

