#Undeploy Solutioni#

NC='\033[0m' # No Color
RED='\033[1;32m'

echo -e "${RED}************STOPPING SERVER***************${NC}"
/etc/init.d/activator stop

echo -e "${RED}************SLEEPING FOR 5 SECONDS***************${NC}"
sleep 5

cd  /opt/OV/ServiceActivator/bin

echo -e "${RED}*************UNDEPLOYING SOLUTION***************${NC}"
./deploymentmanager  UndeploySolution -solutionName DSP -dbUser HPSA -dbPassword password -dbHost localhost -db orcl -dbPort 1521

echo -e "${RED}************SLEEPING FOR 5 SECONDS***************${NC}"
sleep 5

echo -e "${RED}************DELETING DSP SOLUTION***************${NC}"
./deploymentmanager DeleteSolution -solutionName DSP

echo -e "${RED}************SLEEPING FOR 5 SECONDS***************${NC}"
sleep 5

