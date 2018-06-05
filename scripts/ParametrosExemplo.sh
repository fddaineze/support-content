#!/bin/bash
#funcao de inicio, que só vai ser executada quando for chamada lá em baixo.
inicio(){

#verifica se $1 veio nulo(ou seja sem parametro)
if [ -z $1 ];
then
		#chama a função ParametroNulo
        ParametroNulo
fi
#verifica se $1 não é nulo(ou seja sem parametro) e se é igual a "ajuda"
if [ -n "$1" ] && [ $1 = 'ajuda' ];
then
		#chama a função ajuda
        ajuda
fi
#verifica se $1 não é nulo(ou seja sem parametro) e se é igual a "idade"
if [ -n "$1" ] && [ $1 = 'idade' ];
then
		#chama a função idade
		idade
fi
#verifica se $1 não é nulo(ou seja sem parametro) e se é igual a "populacao"
if [ -n "$1" ] && [ $1 = 'populacao' ];
then
		#chama a função populacao
        populacao
fi
#verifica se $1 não é nulo(ou seja sem parametro) e se é igual a "idioma"
if [ -n "$1" ] && [ $1 = 'idioma' ];
then
		#chama a função idioma
		idioma
fi

#verifica se $1 não é nulo(ou seja sem parametro) e se é igual a "capital"
if [ -n "$1" ] && [ $1 = 'capital' ];
then
		#chama a função capital
		capital
fi

parametroInvalido

}

#declaracção da função ParametroNulo()
ParametroNulo(){ 
	echo "você não digitou nenhum parametro, entre com o parametro ajuda para obter a lista de parametros" 
	#exit - saí do script
	exit
}
#declaracção da função ajuda()
ajuda(){ 
	echo "Os parametros são:" 
	echo "ajuda - exibe esta tela de ajuda."
    echo "idade - calcula quantos anos o brasil tem."
    echo "populacao - exibe na tela a populacao estimada atual do Brasil."
    echo "idioma - Exibe o idioma oficial do Brasil"
    echo "Capital - Qual a capital do Brasil"
   	#exit - saí do script
    exit
    
}
#declaracção da função idade()
idade(){

	#echo com operação matemática interna, operação essa que é feita dentro de $(())
    echo "O Brasil tem $((2017-1500)) anos."
   	#exit - saí do script
    exit

}

#declaracção da função populacao()
populacao(){

    echo "Segundo o IBGE o Brasil possui 207,8 milhões de habitantes"
  	#exit - saí do script
    exit

}

#declaracção da função idioma()
idioma(){

    echo "O idioma oficial do Brasil é o português"
    	#exit - saí do script
    exit

}

#declaracção da função capital()
capital(){
	echo "A capital do Brasil é Brasilia no Distrito Federal"
		#exit - saí do script
	exit
}

#declaracção da função parametroInvalido()
parametroInvalido()
{

	echo "você digitou um parametro invalido, digite ajuda para ver a lista de parametros"
	#exit - saí do script
	exit
}

inicio $1

