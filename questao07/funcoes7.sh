#!/bin/bash


function removertr {
	letra=$(cat $1)
	echo $letra | tr '[a-z]' ' '
}



function removersed {
	digito=$(cat $1)
	$digito | sed -E 's/[0-9]/ /g' ' '
}


function removerawk {
	caracteres=$(cat $1)
	$caracteres | awk 'gsub (/\W|_/, ".")' ' '
}


