# Background
I was assigned to a project in a highly secure air-gapped environment. My working laptop is issued by our client and it changes everytime. We have been using VMware vSphere to access all the servers. All was good until our client started to block server access via vSphere. So now we can only access the server via RDP.

# Problem
It require more steps to access those servers now.
1. Open up an excel file which contains a list of the servers IP
2. Open up a note file which contains the credential
3. Launch Remote Desktop Connection app
4. Copy and paste server IP
5. Copy and paste username
6. Copy and paste password
7. Click connect in Remote Desktop Connection

# Initial Idea
My inital idea was to create a PowerShell script that can store the list of servers in a dictionary (or hash table). And it will display a list of servers and ask for your input to access which server. But I'm not satisfied with this additional step, I want to access the server much faster - like just double click a file and I'm in.

# Solution
Using batch script I can predefined the server IP and credential. The only issue is that I have to create a batch file for each server but it achieve my "double click" requirement. The time creating those batch files versus time saving for our team is definitely worth it. Here's what the script does using cmdkey command:
1. Store server IP and credential
2. Launch Remote Desktop Connection and connect to the server
3. Delete server IP and credential

It is important to remove the server IP and credential after used because I do not want to store it in the laptop. With this solution, I organized primary and seconday servers in folders and name the batch file by Application Name and Hostname like this:
BITBUCKET HOSTNAME.bat

# Reality
