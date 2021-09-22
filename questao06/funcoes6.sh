#!/bin/bash



function numeromaior {
	numero=$(cat $1)
	maior=0
	for i in $numero; do
	
		if [ $i -gt $maior ]; then
			maior=$i
		fi
	done
	echo "Maior: $maior"
}

function numeromenor {
	numero1=$(cat $1)
	menor=0

	for i in $numero1; do
		if [ $i -lt $menor ]; then
			menor=$i
		fi
	
	done
	echo "Menor: $menor"
        
}
