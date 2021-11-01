#!/bin/sh
if [ $# -ne 2 ]; then
	echo 'bro,use make [source.c] [outputname]'
else
	echo 'clang -ggdb0 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow    $1  -lcrypt -lcs50 -lm -o $2'
	clang -ggdb0 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow    $1  -lcrypt -lm -o $2
fi
