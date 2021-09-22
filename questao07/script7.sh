#!/bin/bash
source funcoes7.sh

arquivo=$2
opcao=$1

case $opcao in
	("a") echo $(removertr $arquivo) ;;
	("b") echo $(removersed $arquvo) ;;
	("c") echo $(removerawk $arquivo) ;;
esac
