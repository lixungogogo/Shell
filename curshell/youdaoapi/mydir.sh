ts()
{
	word=""
	for word in $@;
	do
		words="$words$word"
	done

	url='http://dict.youdao.com/search?keyfrom=webwordbook&q='$word

	curl -s $url > reslut.html
		return 0;
}

ts hello
