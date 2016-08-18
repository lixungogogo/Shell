#!/bin/bash
ts(){

	word=""
	for word in $@;
	do
		words="$words$word"
	done
curl -s "http://fanyi.youdao.com/translate?smartresult=dict&smartresult=rule&smartresult=ugc&sessionFrom=dict.top" \
	-d\
	"type=AUTO& i=$words&doctype=json&xmlVersion=1.4&keyfrom=fanyi.web&ue=UTF-8&typoResult=true&flag=false"\
	> a.html
	return 0;
}

ts 你好
