#!/bin/bash -x

#Taking inputs
read -p "Enter value of a:" a
read -p "Enter value of b:" b
read -p "Enter value of c:" c

#Usecase 2
TOTAL1=$(($a + $b * $c))

#Usecase 3
TOTAL2=$(($a * $b + $c))

#Usecase 4
TOTAL3=$(($c + $a / $b))

#Usecase 5
TOTAL4=$(($a % $b + $c))

#Usecase 6
DICT[TOTAL1]=$TOTAL1
DICT[TOTAL2]=$TOTAL2
DICT[TOTAL3]=$TOTAL3
DICT[TOTAL4]=$TOTAL4

#Usecase 7
ARR[0]=${DICT[TOTAL1]}
ARR[1]=${DICT[TOTAL2]}
ARR[2]=${DICT[TOTAL3]}
ARR[3]=${DICT[TOTAL4]}

#Usecase 8
for ((ENTRY=0 ; ENTRY<4 ; ENTRY++))
do

        for ((ELEMENT=0 ; ELEMENT<4-ENTRY-1 ; ELEMENT++))
        do
                if ((${ARR[ELEMENT]} < ${ARR[$((ELEMENT+1))]} ))
                then
                        TEMP=${ARR[ELEMENT]}
                        ARR[$ELEMENT]=${ARR[$((ELEMENT+1))]}
                        ARR[$((ELEMENT+1))]=$TEMP
                fi
        done
done

echo "Decending Array:"
for ((ELEMENT=0; ELEMENT<4; ELEMENT++))
do
        echo ${ARR[ELEMENT]}
done

#Usecase 9
for ((ENTRY=0 ; ENTRY<4 ; ENTRY++))
do

        for ((ELEMENT=0 ; ELEMENT<4-ENTRY-1 ; ELEMENT++))
        do
                if ((${ARR[ELEMENT]} > ${ARR[$((ELEMENT+1))]} ))
                then
                        TEMP=${ARR[ELEMENT]}
                        ARR[$ELEMENT]=${ARR[$((ELEMENT+1))]}
                        ARR[$((ELEMENT+1))]=$TEMP
                fi
        done
done

echo "Ascending Array:"
for ((ELEMENT=0; ELEMENT<4; ELEMENT++))
do
        echo ${ARR[ELEMENT]}
done

