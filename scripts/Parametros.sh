#!/bin/bash

# if [ -z $1 ]; # verifica o PRIMEIRO PARAMETRO ao chamar o arquivo
# if [ -z $2 ]; # verifica o SEGUNDO PARAMETRO ao chamar o arquivo e assim sucessivamente
# if [ -n "$1" ]; # verifica se o PRIMEIRO PARAMETRO não é nulo
# operações matemáticas são feitas dentro de $(()) exemplo:
# echo "O Brasil tem $((2017-1500)) anos."

inicio(){
	if [ -z $1 ];
		then
		PNull
	fi
	if [ -n "$2" ];
		then
		echo "Você usou parâmetros demais..."
		exit
	fi

	if [ -n "$1" ] && [ $1 = 'ajuda' ];
		then
		Ajuda
	elif [ -n "$1" ] && [ $1 = 'thiago' ];
		then
		thiago
	elif [ -n "$1" ] && [ $1 = 'ademar' ];
		then
		ademar
	elif [ -n "$1" ] && [ $1 = 'rubens' ];
		then
		rubens
	elif [ -n "$1" ] && [ $1 = 'adriana' ];
		then
		adriana
	elif [ -n "$1" ] && [ $1 = 'tung' ];
		then
		tung
	elif [ -n "$1" ] && [ $1 = 'douglas' ];
		then
		douglas
	elif [ -n "$1" ] && [ $1 = 'otavio' ];
		then
		otavio
	elif [ -n "$1" ] && [ $1 = 'manoel' ];
		then
		manoel
	fi
	PInvalid
}
PNull(){ 
	echo "você não digitou nenhum parametro, entre com o parametro 'ajuda' para obter a lista de parametros" 
	exit
}
PInvalid(){
	echo "você digitou um parametro invalido, digite ajuda para ver a lista de parametros. Lembre-se, o Linux é case sensitive, amiguinho."
	exit
}
Ajuda(){
	echo " =-=-=-=-= AJUDA =-=-=-=-= "
	echo "Os parametros são:" 
	echo "ajuda - exibe esta tela de ajuda."
	echo "thiago - exibe informações sobre este professor"
	echo "ademar - exibe informações sobre este professor"
	echo "adriana - exibe informações sobre esta professora"
	echo "tung - exibe informações sobre este professor"
	echo "douglas - exibe informações sobre este professor"
	echo "otavio - exibe informações sobre este professor"
	echo "manoel - exibe informações sobre este professor"
	echo " "
	exit
}
# Funções dos professores
thiago(){
	echo "Um professor bacana que dá logo a primeira aula da semana, Bases de Internet."
	exit
}
thiago(){
	echo "Não posso falar mal, ele é coordenador do curso"
	exit
}
ademar(){
	echo "Um careca muito firmeza que fala alto pra caramba, já disse que ele é firmeza?"
	exit
}
adriana(){
	echo "A Única professora mulher desse semestre, dá aula de Design, nem preciso falar que tem muita gente que não gosta de Design"
	exit
}
tung(){
	echo "Um asiático (isso já fala muito) que já hackeou fitas de nintendo, e era pago pra isso"
	exit
}
douglas(){
	echo "Professor acelerado de Matemática, manja muito e tem uma didática muito foda"
	exit
}
otavio(){
	echo "Tome nota. Ex advogado que parou de advocaciar porque cansou de ver que a justiça não é para todos. Última aula de sexta, ainda bem que ele é muito daora, pq o dia não colabora"
	exit
}
manoel(){
	echo "aula de sábado e... Didática ruim... É, é isso, mas ele manja muito"
	exit
}
inicio $1 $2
