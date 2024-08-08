#!/usr/bin/expect  

# This script automates SSH login  

set timeout 10  
set username "your_username"        # Change this to your username  
set hostname "your_hostname"        # Change this to your server's hostname  
set password "your_password"        # Change this to your password  

spawn ssh $username@$hostname  
expect {  
    "*yes/no*" { send "yes\r"; exp_continue }  
    "*password:*" { send "$password\r" }  
}  

interact