#!/bin/bash
mkdir /NightOwl
Date=$(date '+%Y년 %m월 %d일 %H시 %M분')


echo "Night Owl" | figlet
echo ""
echo "진단일시 : $Date"
echo ""

echo "1) XenServer"
echo "2) ESXi"
echo "3) Linux"
echo "4) Cubrid"
echo "5) MongoDB"
echo "6) MY-SQL"
echo "7) Postgres-SQL"
echo "8) Redis"
echo "9) Tomcat"
echo "10) Apache"
echo "11) NginX"
echo "12) Docker"
echo "13) OpenStack"
echo "14) Hadoop"
echo "15) Elasticseatch"
echo -e "\033[1;31mq) 종료하기\033[0m"
while true :
	do
		read choice
		case $choice in
	
		1) #XenServer
			tar xvf XenServer.tar >> /dev/null 2>&1
			cd ./XenServer
			./XenServer.sh
			echo "XenServer 진단이 완료되었습니다."
			break
			;;
	
		2) #ESXi
			tar xvf ESXi.tar >> /dev/null 2>&1
			cd ./ESXi
			sh ESXi.sh
			echo "ESXi 진단이 완료되었습니다."
			break
			;;
		
		3) #Linux
			tar xvf Linux.tar >> /dev/null 2>&1
			cd ./Linux
			./Linux.sh
			echo "Linux 진단이 완료되었습니다."
			break
			;;
		
		4) #Cubrid
			tar xvf Cubrid.tar >> /dev/null 2>&1
			cd ./Cubrid
			./Cubrid.sh
			echo "Cubrid 진단이 완료되었습니다."
			break
			;;
		
		5) #MongoDB
			tar xvf MongoDB.tar >> /dev/null 2>&1
			cd ./MongoDB
			./MongoDB.sh
			echo "MongoDB 진단이 완료되었습니다."
			break
			;;
		
		6) #MY-SQL
			tar xvf MY-SQL.tar >> /dev/null 2>&1
			cd ./MY-SQL
			./MY-SQL.sh
			echo "MY-SQL 진단이 완료되었습니다."
			break
			;;
		
		7) #Postgres-SQL
			tar xvf Postgres-SQL.tar >> /dev/null 2>&1
			cd ./Postgres-SQL
			./Postgres-SQL.sh
			echo "Postgres-SQL 진단이 완료되었습니다."
			break
			;;
		
		8) #Redis
			tar xvf Redis.tar >> /dev/null 2>&1
			cd ./Redis
			./Redis.sh
			echo "Redis 진단이 완료되었습니다."
			break
			;;
		
		9) #Tomcat
			tar xvf Tomcat.tar >> /dev/null 2>&1
			cd ./Tomcat
			./Tomcat.sh
			echo "Tomcat 진단이 완료되었습니다."
			break
			;;
		
		10) #Apache
			tar xvf Apache.tar >> /dev/null 2>&1
			cd ./Apache
			./Apache.sh
			echo "Apache 진단이 완료되었습니다."
			break
			;;
		
		11) #NginX
			tar xvf NginX.tar >> /dev/null 2>&1
			cd ./NginX
			./NginX.sh
			echo "NginX 진단이 완료되었습니다."
			break
			;;
		
		12) #Docker
			tar xvf Docker.tar >> /dev/null 2>&1
			cd ./Docker
			./Docker.sh
			echo "Docker 진단이 완료되었습니다."
			break
			;;
		
		13) #OpenStack
			tar xvf OpenStack.tar >> /dev/null 2>&1
			cd ./OpenStack
			./OpenStack.sh
			echo "OpenStack 진단이 완료되었습니다."
			break
			;;
		
		14) #Hadoop
			tar xvf Hadoop.tar >> /dev/null 2>&1
			cd ./Hadoop
			./Hadoop.sh
			echo "Hadoop 진단이 완료되었습니다."
			break
			;;
		
		15) #Elasticseatch
			tar xvf Elasticseatch.tar >> /dev/null 2>&1
			cd ./Elasticseatch
			./Elasticseatch.sh
			echo "Elasticseatch 진단이 완료되었습니다."
			break
			;;
		
		q) #exit
			echo "Thank you"
			break
		;;
			
		*) echo "INVALID NUMBER"
		esac
	done
