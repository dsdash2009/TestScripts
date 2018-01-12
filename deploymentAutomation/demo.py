import os
import paramiko
import subprocess
from subprocess import call
ssh=paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect('15.213.54.219',username="root",password="hwroot")
sftp=ssh.open_sftp()

local_ftp_dir='/home/dspadmin/solution/'
remote_dir='/home/dspadmin/demo_ftp/'

dir_items=sftp.listdir_attr(remote_dir)
for item in dir_items:
        remote_path=remote_dir + '/' + item.filename
        local_path=os.path.join(local_ftp_dir,item.filename)
#       sftp.get(remote_path,local_path)
sftp.close()
ssh.close()
print'******Solution SFTP Completed Successfully***********'

#---------------------------------------------------------------------------
file_path=local_ftp_dir+'/DSP.zip'
sol_path='/opt/OV/ServiceActivator/solutions/DSP/'
temp_file=open("temp.log",'a')
if os.path.isfile(file_path):
        print'-----Build Found for Deployment------'
        if os.path.isfile(sol_path):
                print'-----Found DSP SOLUTION------'
                print'-----Entering to UnDeployment------'
                print'-----Entering to UnDeployment------'
                print'----- UnDeployed---------'
                print'-----Entering to Deploymet------'
                print('-----Please provide Solution Path------',local_ftp_dir)
        else:
                print'-----Directly Entering to Deployment(Solution Deleted Already)------'

        with open("temp.log",'r')as file:
                output=file.read()
        print output

else:
        print'Sodyyyyyyyyyyyyyyyyy'

