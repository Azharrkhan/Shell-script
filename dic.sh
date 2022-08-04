declare -A dictionary=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0)
max_count=10
#dice will be rolled a no repeated 10 times
while (( 1 ))
do
#dice is rolled and noted frequency
result=$(((RANDOM%6)+1))
(( dictionary[$result]++))
#stop in any number reached 10 times
if ((dictionary[$result] == max_count))
then 
break
fi
done
most_frequet_number=$(((RANDOM%6)+1))
least_frequet_number=$(((RANDOM%6)+1))
echo "the numbers of dice & corresponding frequencies are : "
for number in ${!dictionary[@]}
do
if (( dictionarly[$number]>=dictionary[$most_frequet_number] ))
then
most_frequet_number=$number
fi

if (( dictionarly[$number]<=dictionary[$least_frequet_number] ))
then
least_frequet_number=$number
fi
echo $number " " ${dictionary[$number]}
done
echo "the number that reached maximum times is $most_frequet_number"
echo "the number that reached minimum times is $least_frequet_number"

