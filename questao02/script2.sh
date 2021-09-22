#!/bin/bash

while read linha; do
	nome=$(echo $linha | awk '{print $1}')
	quantidade=$(echo $linha | awk '{print $3}')
	while read linha1; do
		nome1=$(echo $linha1 | awk '{print $1}')
		quantidade1=$(echo $linha1 | awk '{print $3}')
		if [ "echo $linha" != "echo $linha1" ]; then
			if [ "echo $nome" == "echo $nome1" ]; then
				quantidade=$(( $quantidade + $quantidade1 ))
			fi
		fi
	done < $1
	echo -e "$nome no total baixou: $quantidade\n" >> /tmp/total

done < $1



cat /tmp/total | sort -n | uniq
rm /tmp/total
