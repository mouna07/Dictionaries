#! /bin/bash
declare -A arr
a=0
b=0
c=0
d=0
e=0
f=0
for ((i=1;i<=100;i++))
do
  dice=$((RANDOM%6 +1))
  random[i]=$dice
  if [ $dice -eq 1 ]
  then
      a=$((a+1))
      arr[1]=$a
        if [ $a -eq 10 ]
        then
            echo "1 is reached 10 times and reached maximum times"
            break
        fi
  elif [ $dice -eq 2 ]
  then
      b=$((b+1))
      arr[2]=$b
        if [ $b -eq 10 ]
        then
            echo "2 is reached 10 times and reached maximum times "
            break
        fi
  elif [ $dice -eq 3 ]
  then
      c=$((c+1))
      arr[3]=$c
        if [ $c -eq 10 ]
        then
            echo "3 is reached 10 times and maximum times"
            break
        fi
  elif [ $dice -eq 4 ]
  then
      d=$((d+1))
      arr[4]=$d
        if [ $d -eq 10 ]
        then
            echo "4 is reached 10 times and maximum times"
            break
        fi
  elif [ $dice -eq 5 ]
  then
      e=$((e+1))
      arr[5]=$e
        if [ $e -eq 10 ]
        then
            echo "5 is reached 10 times and maximum times"
            break
        fi
  elif [ $dice -eq 6 ]
  then
      f=$((f+1))
      arr[6]=$f
        if [ $f -eq 10 ]
        then
            echo "6 is reached 10 times and maximum times"
            break
        fi
  fi
done

echo "1=$a 2=$b 3=$c 4=$d 5=$e 6=$f"
length=${#random[@]}
echo ${arr[@]}
max=${arr[0]}
min=${arr[0]}
for ((i=0;i<6;i++))
do
  if [ ${arr[i]} -gt $max ]
  then
      max=$arr[i]

      x=$i
   fi
   if [ ${arr[i]} -lt $min }
   then
       min=$arr[i]
       y=$i
   fi
done
echo "the $x  reached  maximum times"
echo "The $y reached mimimum times"
