#!/bin/bash

user=`whoami`

# Menu()      = Menu principal para seleção de lista
# Verificar() = Verifica se o arquivo da lista existe, se sim,
#               pergunta se o usuário deseja sobrepor
# Sobrepor()  = Remove o arquivo original antes de sobrepor
# Criar()     = Cria a lista, salva no documento e apresenta o resultado
# Sair()      = Encerra o script

Menu() {
    clear
    echo "-------------------------------------------------------------- "
    echo "-  ______   _                 _         _____       _         "
    echo "- |  ____| (_)               | |       |  __ \     | |        "
    echo "- | |__ ___ _ _ __ __ _    __| | ___   | |__) |___ | | ___    "
    echo "- |  __/ _ \ |  __/ _  |  / _  |/ _ \  |  _  // _ \| |/ _ \   "
    echo "- | | |  __/ | | | (_| | | (_| | (_) | | | \ \ (_) | | (_) |  "
    echo "- |_|  \___|_|_|  \__,_|  \__,_|\___/  |_|  \_\___/|_|\___/   "
    echo "-                                                 da Fatec    "
    echo "-------------------------------------------------------------- "
    echo "- Bem vindo a feira do rolo da Fatec $user!"
    echo "-------------------------------------------------------------- "
    echo " "
    echo " Qual lista de itens deseja carregar? "
    echo " "
    echo " 1. Comidas"
    echo " 2. Bebidas"
    echo " 3. Carros"
    echo " 4. Frutas"
    echo " "
    echo " 0. Sair"
    echo " "
    read -n1 -p " > " OPCAO
    echo " "
    
    if [ $OPCAO == 1 ];
        then
            lista="comidas"
            Verificar
    elif [ $OPCAO == 2 ];
        then
            lista="bebidas"
            Verificar
    elif [ $OPCAO == 3 ];
        then
            lista="carros"
            Verificar
    elif [ $OPCAO == 4 ];
        then
            lista="frutas"
            Verificar
    elif [ $OPCAO == 0 ];
        then
            Sair
    else
        echo " [ Digite apenas números de 0 a 4 ] "
        sleep 1
    fi
    Menu
}

Verificar() {
	if [ -e $lista.txt ];
		then
            echo " ------------------------------------------------------------- "
            echo "                    -= ARQUIVO EXISTENTE! =-                   "
            echo " ------------------------------------------------------------- "
		    echo " O arquivo $lista.txt já existe, sobrepor este arquivo? [s/n]: "
            echo " "
            read -n1 -p " > " NOVO
            echo " "
            if [ $NOVO == "s" ];
	            then
	            Sobrepor
	
            elif [ $NOVO == "n" ];
	            then
                    echo " ------------------------------------------------------------- "
	                echo "      -= O usuário optou por não criar um novo arquivo =-      "
                    echo " ------------------------------------------------------------- "
                    echo " "
                    sleep 2
	                Menu
            else 
	            echo "Digite s para SIM ou n para NÃO"
                    echo " "
	            Verificar
            fi
	else
        Criar
	fi  
}

Sobrepor() {
    echo " ------------------------------------------------------------- "
	echo "                 -= APAGANDO arquivo ANTIGO =-                 "
    echo " ------------------------------------------------------------- "
	echo " O usuário optou por SOBREPOR arquivo. "
    echo " "
	rm $lista.txt
	Criar
}

Criar() {
    echo " ------------------------------------------------------------- "
	echo "                  -= Criando NOVO Arquivo =-                   "
    echo " ------------------------------------------------------------- "
    echo " Criando arquivo $lista.txt e exibindo o arquivo"
	touch $lista.txt
    echo " "

    # Gerando conteudo da lista
    case $OPCAO in
    1)
	    echo $' - Arroz\n - Feijão\n - Bife\n - Batata Frita\n - Marmita Completa\n - Alface\n - Tomate\n - Picles\n - Azeite\n - Bolo de Pote $5' > $lista.txt
    ;;
    2)
		echo $' - Coca Lata\n - Coca 600ml\n - Coca 2L\n - Coca 3L\n - Café\n - Café com leite\n - Capuccino\n - Suco de Laranja\n - Suco de Maracuja\n - Água' > $lista.txt
    ;;
    3)
		echo $' - Bora\n - Jetta\n - Fuzion\n - Cruze\n - Onix\n - Fusca\n - Corsa 96\n - Tempra\n - Chevette\n - Monza' > $lista.txt
    ;;
    4)
		echo $' - Laranja\n - Pêssego\n - Abacaxi\n - Morango\n - Melancia\n - Banana\n - Maçã\n - Abacate\n - Melão\n - Outras' > $lista.txt
    ;;
    esac

	cat $lista.txt
    echo " "
    Sair
}

Sair() {
    echo " Encerrando o programa..."
    echo " Obrigado por utilizar a feira do rolo da Fatec"
    echo " "
    exit
}

Menu
