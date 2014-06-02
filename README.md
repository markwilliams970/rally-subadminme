rally-subadminme
================

A simple set of scripts to get the Sub Admins for a specified Rally Subscription ID.

How to Use:

1. No pre-requisites! Works on a vanilla Mac with no additional gems, libs, or anything else needed!
2. [Download the GitHub ZIP distribution of this repo here](https://github.com/markwilliams970/rally-subadminme/archive/master.zip).
3. In each step of the following section, always replace mydomainusername with your actual Mac login ID.
3. Move the the ZIP file to: /Users/mydomainusername/Documents/
4. Double click the ZIP file to extract it. This will create the following folder: /Users/mydomainusername/Documents/rally-subadminme-master
5. Use your favorite text editor to update the MY_USERNAME, MY_PASSWORD, and INSTALL_DIR and/or HOME_DIR variables,
located in the `subadminme.sh` and `usageme.sh` scripts (these are your super-user credentials):

```
subadminme.sh:
MY_USERNAME="user@company.com"
MY_PASSWORD="top\$3cr3t"
INSTALL_DIR="/Users/mydomainusername/Documents/rally-subadminme-master"
```
usageme.sh:
MY_USERNAME="user@company.com"
MY_PASSWORD="top\$3cr3t"
HOME_DIR="/Users/mydomainusername/Documents/rally-subadminme-master"
```

6. Note that we had to escape the special character $ by using \$ in the password, since this has a special meaning in the bash shell. Take care to escape any instance of $ in your password.
7. Add an alias for subadminme:
8. Open your mac terminal window.
9. nano ~/.bash_profile
10. Add the following two lines to this file (replacing mydomainusername with your actual Mac/domain user id):
<pre>
alias subadminme="/Users/mydomainusername/Documents/rally-subadminme-master/subadminme.sh"
alias usageme="/Users/mydomainusername/Documents/rally-subadminme-master/usageme.sh"
</pre>

11. Save the File:
12. CTRL-O
13. Hit RETURN
14. Exit nano:
15. CTRL-X

![save_bash_profile](https://raw.githubusercontent.com/markwilliams970/rally-subadminme/master/images/screenshot2.png)

16. $ source ~/.bash_profile 
17. subadminme 209
18. Subadmin list bliss ensues! From here on out, all you have to do is open your Mac Terminal, and you've got instant access to subadminme:

![Screenshot](https://raw.githubusercontent.com/markwilliams970/rally-subadminme/master/images/screenshot1.png)

<pre>
Subscription Admins for SubID 209
=================================
Subadmin One:    subadmin1@company.com
Subadmin Two:    subadmin2@company.com
</pre>

19. Usage bliss ensues! All you have to do to get a Usage Report is open your Mac Terminal,
and you've got instant access to usageme:

![Screenshot](https://raw.githubusercontent.com/markwilliams970/rally-subadminme/master/images/screenshot1.png)

<pre>
Pulling 30-day usage report for SubscriptionID: 209
Usage report written to file: Usage_201406021058_209.csv
</pre>