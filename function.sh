#!/bin/bash
RESULT=result.txt
ACTION=action.txt
REQUEST=request.txt
DIVISION=division.txt

echo "8:,ESXi" > $REQUEST

CUT() {
echo "|"
} >> $DIVISION

GOOD_T() {
echo ''"5:,양호"''
} >> $RESULT

BAD_T() {
echo ''"5:,취약"''
} >> $RESULT

OPTION() {
echo ''"5:,수동"''
} >> $RESULT

GOOD() {
echo ''"6:, $*"''
} >> $RESULT

BAD() {
echo ''"6:, $*"''
} >> $RESULT

ACTIVE() {
echo ''"7:, $*"''
} >> $ACTION

remove() {
rm -rf result.txt > /dev/null 2>&1
rm -rf action.txt > /dev/null 2>&1
touch action.txt result.txt
}