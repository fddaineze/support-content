# UTILIZANDO O GIT NO TERMINAL LINUX
> OBS: O intúito desse documento não é ENSINAR, é apenas REFORÇAR os comandos que já foram explicados ou indicados EM AULA, apontando possíveis erros

Fazendo download de um repositório
--------
Realize o download e, em seguida, acesse a pasta do repositório
```bash
git clone https://github.com/user/repository.git
cd nome-da-pasta
```

Verificando se o repositório local está atualizado
--------
Espera-se ver a mensagem "Already up-to-date."
```bash
git pull
```

Enviando arquivos
--------
Aqui vale ressaltar que ao adicionar (add) arquivos, você está adicionando a fila de espera, não ao repositório, somente após preparar TODOS os arquivos você pode sincronizar as novas alterações com o repositório do GitHub.

```bash
git status                  # Verifique se os novos arquivos estão em vermelho
git add .                   # O ponto serve para adicionar TODOS os arquivos a espera
git commit -m "mensagem"    # Digite a mensagem que aparecerá no log do Git
git push                    # Aqui que os arquivos são finalmente enviados
```

# NÃO ESTÁ ATUALIZANDO O DIRETORIO? TENTE ISSO!
> IMPORTANTE: LEMBRE-SE DE ESTAR NA PASTA DO REPOSITORIO

Ao utilizar o push, use este formato:

```bash
git push origin master
```

CASO APAREÇA O ERRO: fatal: 'origin' does not appear to be a git repository
> obs: "origin" é o nome que é dado automaticamente ao se realizar um "clone".

Primeiro tente ver o nome que o repositorio está usando com o seguinte comando:

```bash
git remote show     # Ele mostrará o nome do repositório, então use:
git push nome_do_repositorio master
```

AINDA ESTÁ COM ERRO MESMO SEGUINDO ESTES PASSOS?
--------
Isso possivelmente significa que você realizou algum procedimento incorreto ao clonar ou configurar o git, mas ainda há uma solução. Faça o seguinte:

> IMPORTANTE: LEMBRE-SE DE ESTAR NA PASTA DO REPOSITORIO

Adicione um repositorio remoto manualmente e certifique se o seu repositório está sincronizado

```bash
git remote add nome_aleatorio https://github.com/user/repository.git
git pull nome_aleatorio master
```
A mensagem que deve aparecer ao final é "Already up-to-date."
Se estiver tudo certo, use:

```bash
git push nome_aleatorio master
```

Caso ainda não funcione o ideal é começar do zero.
- Exclua as pastas de repositorio do seu computador
- Refaça a configuração de usuario
- Clone novamente
- etc
