# System Maintenance Script
A simple Bash script to automate common system maintenance tasks such as updating, upgrading, cleaning, and restarting services, with visual feedback using a spinner and figlet banners.

## 🚀 Features

* Displays a banner using figlet with a Roman font to indicate the task being performed.

* Uses a spinner to show progress while running commands like apt update, apt upgrade, autoremove, and autoclean.
* Automatically checks if a reboot is required and reboots the system if necessary.

* Provides feedback at the end of each task and overall script completion.

## 🛠 Prerequisites Ensure you have the following installed:

`figlet` (for displaying styled text)

`bash-spinner` (for displaying the spinner) ##obtained from tlatsas

You can install the required tools using:
```
sudo apt install figlet # Debian/Ubuntu
sudo yum install figlet # RHEL/CentOS
brew install figlet      # macOS
```
For `bash-spinner`, you can clone the repository from tlatsas/bash-spinner:
`git clone https://github.com/tlatsas/bash-spinner.git ~/bash-spinner-master`
Then, source the `bash-spinner` scripts from your main script like this:
`source ~/bash-spinner-master/spinner.sh`


## 📌 Usage

Clone the repository and run the script:
```
git clone https://github.com/NighShade8/System-Maintenance-Script.git
cd System-Maintenance-Script
chmod +x system-maintenance.sh  # Make the script executable
./system-maintenance.sh
```
## ⚡ Alias for Quick Access

To run the script from anywhere, create a shell alias. Add this line to your ~/.bashrc or ~/.zshrc file:

`alias sysmaint="~/System-Maintenance-Script/system-maintenance.sh"`

Then, reload your shell configuration:
```
source ~/.bashrc  # For Bash
source ~/.zshrc   # For Zsh
```
Now, you can run the system maintenance with a simple command:

`sysmaint`
This will perform the following tasks:

* Update package lists

* Upgrade installed packages

* Autoremove unnecessary packages

* Autoclean package cache

* Restart services if necessary

* Reboot the system if required

Feel free to modify the script to include additional tasks or change the font/style of the banners!
