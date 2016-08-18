ts(){
	
word="a"
for word in $@;
do
	words="$words$word"
done
echo $word
echo $words
return 0;
}

ts hello bit
