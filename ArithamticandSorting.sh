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
