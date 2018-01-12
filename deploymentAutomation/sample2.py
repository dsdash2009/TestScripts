import os
import paramiko
import subprocess
from subprocess import call
import ConfigParser
#---Reading data from .proporties file
config=ConfigParser.RawConfigParser()
config.read('ConfigFile.properties')
local_ftp_dir=config.get('StaticData','local_ftp_dir')
remote_dir=config.get('StaticData','remote_dir')
ftp_ip=config.get('StaticData','ftp_ip')

ftp_uname=config.get('StaticData','ftp_uname')
ftp_pwd=config.get('StaticData','ftp_pwd')
imp_sol_path=config.get('StaticData','imp_sol_path')

#local_ftp_dir='/home/dspadmin/solution/'
#remote_dir='/home/dspadmin/demo_ftp/'


#-----FTP Connection and File Transfer
ssh=paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
#ssh.connect('15.213.54.219',username="root",password="hwroot")
ssh.connect(ftp_ip,username=ftp_uname,password=ftp_pwd)
sftp=ssh.open_sftp()
dir_items=sftp.listdir_attr(remote_dir)
for item in dir_items:
	remote_path=remote_dir + '/' + item.filename
	local_path=os.path.join(local_ftp_dir,item.filename)
#	sftp.get(remote_path,local_path)
sftp.close()
ssh.close()
print'******Solution SFTP Completed Successfully***********'
#-----------------File Transfer Completed----------------------------------------------------------


# Checking Solution Exists and Undeployment---then Deployment of Solution
file_path=local_ftp_dir+'/DSP.zip'
sol_path='/opt/OV/ServiceActivator/solutions/DSP/deploy.xml'
temp_file=open("temp.log",'a')
if os.path.isfile(file_path):
	print'-----Build Found for Deployment------'
	if os.path.isfile(sol_path):
		print'-----Found DSP SOLUTION------'
		print'-----Entering to UnDeployment------' 
		call(['./Sol_Undeployment.sh'],stdout=temp_file)
		print'----- UnDeployed---------'
		print'-----Entering to Deploymet------'
		print('-----Please provide Solution Path------',file_path)
		call(['./Sol_Deployment.sh',str(imp_sol_path)],stdout=temp_file)
	else:
		print'-----Directly Entering to Deployment(Solution Deleted Already)------'
		call(["/etc/init.d/activator","stop"])
		call(['./Sol_Deployment.sh',str(imp_sol_path)],stdout=temp_file)

	with open("temp.log",'r')as file:
		output=file.read()
	#print output
	
else:	print'Sodyyyyyyyyyyyyyyyyy'
