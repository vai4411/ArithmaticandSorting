#!/bin/bash -x

#Taking inputs
read -p "Enter value of a:" a
read -p "Enter value of b:" b
read -p "Enter value of c:" c

#Usecase 2
total1=$(($a + $b * $c))

#Usecase 3
total2=$(($a * $b + $c))

#Usecase 4
total3=$(($c + $a / $b))

#Usecase 5
total4=$(($a % $b + $c))

#Usecase 6
dict[total1]=$total1
dict[total2]=$total2
dict[total3]=$total3
dict[total4]=$total4

#Usecase 7
arr[0]=${dict[total1]}
arr[1]=${dict[total2]}
arr[2]=${dict[total3]}
arr[3]=${dict[total4]}

#Usecase 8
for ((i=0 ; i<4 ; i++))
do

        for ((j=0 ; j<4-i-1 ; j++))
        do
                if ((${arr[j]} < ${arr[$((j+1))]} ))
                then
                        temp=${arr[j]}
                        arr[$j]=${arr[$((j+1))]}
                        arr[$((j+1))]=$temp
                fi
        done
done

echo "Decending Array:"
for ((i=0; i<4; i++))
do
        echo ${arr[i]}
done
