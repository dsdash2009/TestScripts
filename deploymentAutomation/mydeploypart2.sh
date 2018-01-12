#Deploy Solutioni#

NC='\033[0m' # No Color
RED='\033[1;32m'

cd  /opt/OV/ServiceActivator/bin

echo -e "${RED}************PLEASE CHECK FOR UPDATED SOLUTION IN PROPER PATH***************${NC}"
echo -n "Please provide path for New Solution: "
read solPath

echo -e "${RED}************IMPORTING NEW DSP SOLUTION***************${NC}"
 ./deploymentmanager  ImportSolution -file $solPath

echo -e "${RED}************SLEEPING FOR 5 SECONDS***************${NC}"
sleep 5

echo -e "${RED}************DEPLOYING NEW SOLUTION***************${NC}"
 ./deploymentmanager DeploySolution -solutionName DSP -deploymentFile  /opt/OV/ServiceActivator/solutions/DSP/deploy.xml -dbUser HPSA -dbPassword password -dbHost localhost -db orcl -dbPort 1521

echo -e "${RED}************SLEEPING FOR 5 SECONDS***************${NC}"
sleep 5

echo -e "${RED}************STARTING SERVER***************${NC}"
/etc/init.d/activator start

echo -e "${RED}************SLEEPING FOR 5 SECONDS***************${NC}"
sleep 5

echo -e "${RED}************SERVER IS UP NOW . PROCEED FOR TESTING***************${NC}"

