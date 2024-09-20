# ADD These lines in your .bashrc file of termux environment 
# Login and Logout from Shell :

# 1. Source the initial prompt script
bash ~/.loginScripts/initial_prompt.sh

# 2. Check if the exit signal file exists and exit Termux if it does
if [ -f ~/.exit_termux ]; then
    rm ~/.exit_termux  # Remove the signal file
    exit  # Exit Termux
fi
