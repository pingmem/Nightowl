#!/bin/bash

# 분류, 진단코드, 위험도, 지단 항목, 진단결과, 현재 상황, 조치방법 7가지 ','로 구분
count=24
list=$(seq -w $count)
for i in $list
do
	cat ES-$i.txt | grep '^1' | awk -F: '{print $2}' >> end.txt
	cat ES-$i.txt | grep '^2' | awk -F: '{print $2}' >> end.txt
	cat ES-$i.txt | grep '^3' | awk -F: '{print $2}' >> end.txt
	cat ES-$i.txt | grep '^4' | awk -F: '{print $2}' >> end.txt
	cat ES-$i.txt | grep '^5' | awk -F: '{print $2}' >> end.txt
	cat ES-$i.txt | grep '^6' | awk -F: '{print $2}' >> end.txt
	cat ES-$i.txt | grep '^7' | awk -F: '{print $2}' >> end.txt
	cat ES-$i.txt | grep '^8' | awk -F: '{print $2}' >> end.txt
	cat ES-$i.txt | grep '|' | uniq >> end.txt
	cat end.txt | sed 'N;N;N;N;N;N;N;N;s/\n//g' >> RESULT.txt
	cat RESULT.txt >> DB.txt
	rm -rf end.txt RESULT.txt
	
done

self=$(cat ./DB.txt|grep ",수동,"|wc -l) #수동점검 카운팅
goodcount=$(cat ./DB.txt|grep ",양호,"|wc -l)  #"양호" 개수 카운팅
badcount=$(cat ./DB.txt|grep ",취약,"|wc -l) #"취약" 개수 카운팅

cat /dev/null > score.txt
echo "score list" >> score.txt # 첫 라인 자르기
echo $count >> score.txt #총 진단 항목
echo $badcount >> score.txt #취약 수
echo $goodcount >> score.txt #양호 수
echo $self >> score.txt # 수동 수
echo ESXi >> score.txt # 항목 명

mv DB.txt /NightOwl
mv score.txt /NightOwl
rm -rf /CLOUD