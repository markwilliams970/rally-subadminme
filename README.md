rally-subadminme
================

A simple set of scripts to get the Sub Admins for a specified Rally Subscription ID.

How to Use:

1. No pre-requisites! Works on a vanilla Mac with no additional gems, libs, or anything else needed!
2. [Download the GitHub ZIP distribution of this repo here](https://github.com/markwilliams970/rally-subadminme/archive/master.zip).
3. Move the the ZIP file to: /Users/myusername/Documents/
4. Double click the ZIP file to extract it. This will create the following folder: /Users/myusername/Documents/rally-subadminme-master
5. Use your favorite text editor to update the MY_USERNAME and MY_PASSWORD variables, located in the `subadminme.sh` script:
```
MY_USERNAME="user@company.com"
MY_PASSWORD="top\$3cr3t"
INSTALL_DIR="/Users/myusername/Documents/rally-subadminme-master"
```
6. Note that we had to escape the special character $ by using \$ in the password, since this has a special meaning in the bash shell. Take care to escape any special characters in your password.
7. Add an alias for subadminme:
8. Open your mac terminal window.
9. nano ~/.bash_profile
10. Add the following line to this file:
<pre>
alias subadminme="/Users/myusername/Documents/rally-subadminme-master/subadminme.sh"
</pre>

11. Save the File:
12. CTRL-O
13. Exit nano:
14. CTRL-X

![save_bash_profile](https://raw.githubusercontent.com/markwilliams970/rally-subadminme/master/images/screenshot2.png)

15. $ source ~/.bash_profile 
16. subadminme 209
17. Subadmin list bliss ensues! From here on out, all you have to do is open your Mac Terminal, and you've got instant access to subadminme:

![Screenshot](https://raw.githubusercontent.com/markwilliams970/rally-subadminme/master/images/screenshot1.png)

<pre>
Subscription Admins for SubID 209
=================================
Subadmin One:    subadmin1@company.com
Subadmin Two:    subadmin2@company.com
</pre>

