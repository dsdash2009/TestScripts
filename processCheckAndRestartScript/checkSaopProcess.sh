#!/bin/bash
#@author: Debasis Dash




#To Auto Check Processes running on these ports and if not then Auto triggere them

ports=( 5052 5053 5054 5055 5057 5058 5059 5060 5061 5062 5063 5064 5065 5066 5067 5068 5069 6060 6061 6062 6063 6064 6065 6066 6067 6068 6069 6070 6073 6074 6075 6076 6077 6078 6080 6081 6082 6083 6087 6088 6089 6090 6091 6092 6093 6094 )

cd /opt/SmartBear/SoapUI-5.1.3/bin/

for port in "${ports[@]}"
do 

pid=$( ps -ef | grep "$port" | grep -v "grep" | awk 'FNR==2 {print $2}' )

if [ -z $pid ]

then
	echo "No process is running at $port port**"
	
	case $port in 
	5052)
		echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 5052 -m "REST MockService 1" "/opt/SmartBear/SoapUI-5.1.3/MockServices/REST-Project-1-soapui-project.xml" & ;;
	5053)
		echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 5053 -m "REST MockService 1" "/opt/SmartBear/SoapUI-5.1.3/MockServices/REST-Project-2-soapui-project.xml" & ;;
	5054)
		echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 5054 -m "REST MockService 1" "/opt/SmartBear/SoapUI-5.1.3/MockServices/REST-Project-3-soapui-project.xml" & ;;
	5055)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 5055 -m "REST MockService 1" "/opt/SmartBear/SoapUI-5.1.3/MockServices/REST-Project-4-soapui-project.xml" & ;;
        5057)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 5057 -m "REST MockService 1" "/opt/SmartBear/SoapUI-5.1.3/MockServices/REST-Project-6-soapui-project.xml" & ;;
	5058)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 5058 -m "REST MockService 1" "/opt/SmartBear/SoapUI-5.1.3/MockServices/REST-Project-7-soapui-project.xml" & ;;
        5059)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 5059 -m "REST MockService 1" "/opt/SmartBear/SoapUI-5.1.3/MockServices/REST-Project-9-soapui-project.xml" & ;;
	5060)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 5060 -m "REST MockService 1" "/opt/SmartBear/SoapUI-5.1.3/MockServices/REST-Project-10-soapui-project.xml" & ;;
        5061)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 5061 -m "REST MockService 1" "/opt/SmartBear/SoapUI-5.1.3/MockServices/REST-Project-11-soapui-project.xml" & ;;
        5062)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 5062 -m "REST MockService 1" "/opt/SmartBear/SoapUI-5.1.3/MockServices/REST-Project-12-soapui-project.xml" & ;;
	5063)
                echo "Starting process for port $port" 
		nohup ./mockservicerunner.sh -p 5063 -m "REST MockService 1" "/opt/SmartBear/SoapUI-5.1.3/MockServices/REST-Project-13-soapui-project.xml" & ;;
        5064)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 5064 -m "REST MockService 1" "/opt/SmartBear/SoapUI-5.1.3/MockServices/REST-Project-14-soapui-project.xml" & ;;
        5065)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 5065 -m "REST MockService 1" "/opt/SmartBear/SoapUI-5.1.3/MockServices/REST-Project-15-soapui-project.xml" & ;;
	5066)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 5066 -m "REST MockService 1" "/opt/SmartBear/SoapUI-5.1.3/MockServices/REST-Project-16-soapui-project.xml" & ;;
        5067)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 5067 -m "REST MockService 1" "/opt/SmartBear/SoapUI-5.1.3/MockServices/REST-Project-17-soapui-project.xml" & ;;
        5068)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 5068 -m "REST MockService 1" "/opt/SmartBear/SoapUI-5.1.3/MockServices/REST-Project-18-soapui-project.xml" & ;;
	5069)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 5069 -m "REST MockService 1" "/opt/SmartBear/SoapUI-5.1.3/MockServices/REST-Project-18-soapui-project.xml" & ;;
        6060)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6060 -m "REST MockService 1" "/opt/SmartBear/SoapUI-5.1.3/MockServices/REST-Project-5-soapui-project.xml" & ;;
	6061)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6061 -m "MockService 1" "/opt/SmartBear/SoapUI-5.1.3/MockServices/Authentia-soapui-project.xml" & ;;
	6062)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6062 -m "REST MockService 1" "/opt/SmartBear/SoapUI-5.1.3/MockServices/REST-Project-18-soapui-project.xml" & ;;
	6063)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6063 -m "GetContractMock" "/opt/SmartBear/SoapUI-5.1.3/MockServices/ActivationDNI_TDE_Rest_project.xml" & ;;
	6064)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6064 -m "GetContractSpecMock" "/opt/SmartBear/SoapUI-5.1.3/MockServices/ActivationDNI_TDE_Rest_project.xml" & ;;
        6065)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6065 -m "ValidateRequestProductOrderMock" "/opt/SmartBear/SoapUI-5.1.3/MockServices/ActivationDNI_TDE_Rest_project.xml" & ;;
        6066)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6066 -m "CreateServiceRequestActivityMock" "/opt/SmartBear/SoapUI-5.1.3/MockServices/ActivationDNI_TDE_Rest_project.xml" & ;;
	6067)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6067 -m "CreateProductOrderMock" "/opt/SmartBear/SoapUI-5.1.3/MockServices/ActivationDNI_TDE_Rest_project.xml" & ;;
        6068)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6068 -m "CreateServiceRequestMock" "/opt/SmartBear/SoapUI-5.1.3/MockServices/ActivationDNI_TDE_Rest_project.xml" & ;;
        6069)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6069 -m "GetPopulationCenterMock" "/opt/SmartBear/SoapUI-5.1.3/MockServices/ActivationDNI_TDE_Rest_project.xml" & ;;
	6070)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6070 -m "SubmitProductOrderMock" "/opt/SmartBear/SoapUI-5.1.3/MockServices/ActivationDNI_TDE_Rest_project.xml" & ;;
        6073)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6073 -m "CreateCustomerAccountMock" "/opt/SmartBear/SoapUI-5.1.3/MockServices/ActivationDNI_TDE_Rest_project.xml" & ;;
        6074)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6074 -m "GetCustomerAccountMock" "/opt/SmartBear/SoapUI-5.1.3/MockServices/ActivationDNI_TDE_Rest_project_14_12_2017.xml" & ;;
        6075)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6075 -m "GetPartyIdentificationMock" "/opt/SmartBear/SoapUI-5.1.3/MockServices/ActivationDNI_TDE_Rest_project.xml" & ;;
        6076)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6076 -m "ValidateAssetTotalNumberMock" "/opt/SmartBear/SoapUI-5.1.3/MockServices/ActivationDNI_TDE_Rest_project.xml" & ;;
        6077)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6077 -m "GetPartyIdentificationQuiz" "/opt/SmartBear/SoapUI-5.1.3/MockServices/ActivationDNI_TDE_Rest_project.xml" & ;;
        6078)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6078 -m "SubmitPartyIdentificationQuizMock" "/opt/SmartBear/SoapUI-5.1.3/MockServices/ActivationDNI_TDE_Rest_project.xml" & ;;
        6080)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6080 -m "GetAvailableProductOfferMock" "/opt/SmartBear/SoapUI-5.1.3/MockServices/ActivationDNI_TDE_Rest_project_14_12_2017.xml" & ;;
        6081)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6081 -m "CreateProductOrderItemMock" "/opt/SmartBear/SoapUI-5.1.3/MockServices/ActivationDNI_TDE_Rest_project_14_12_2017.xml" & ;;
        6082)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6082 -m "GetAvailableMSISDNMock" "/opt/SmartBear/SoapUI-5.1.3/MockServices/ActivationDNI_TDE_Rest_project.xml" & ;;
        6083)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6083 -m "UpdateProductOrderItemMock" "/opt/SmartBear/SoapUI-5.1.3/MockServices/ActivationDNI_TDE_Rest_project.xml" & ;;
        6087)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6087 -m "ValidatePortabilityOrder" "/opt/SmartBear/SoapUI-5.1.3/MockServices/ActivationDNI_TDE_Rest_project_01.xml" & ;;
        6088)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6088 -m "GetServiceRequest" "/opt/SmartBear/SoapUI-5.1.3/MockServices/TDEReposition-soapui-project.xml" & ;;
        6089)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6089 -m "GetProductOrder" "/opt/SmartBear/SoapUI-5.1.3/MockServices/TDEReposition-soapui-project.xml" & ;;
        6090)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6090 -m "ValidateClientMock" "/opt/SmartBear/SoapUI-5.1.3/MockServices/PortabilityLegacyMock-soapui-project.xml" & ;;
        6091)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6091 -m "CreateIncidentMock" "/opt/SmartBear/SoapUI-5.1.3/MockServices/PortabilityLegacyMock-soapui-project.xml" & ;;
        6092)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6092 -m "SubmitPreview" "/opt/SmartBear/SoapUI-5.1.3/MockServices/PortabilityLegacyMock-soapui-project.xml" & ;;
        6093)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6093 -m "RegisterAuditBio" "/opt/SmartBear/SoapUI-5.1.3/MockServices/PortabilityLegacyMock-soapui-project.xml" &;;
        6094)
                echo "Starting process for port $port"
		nohup ./mockservicerunner.sh -p 6094 -m "VerifyPortabilityOrderMock" "/opt/SmartBear/SoapUI-5.1.3/MockServices/PortabilityLegacyMock-soapui-project.xml" & ;;

	esac

else 
	echo "Process $pid is Up and Running at $port port"
fi

done

