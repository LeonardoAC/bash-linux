#!/bin/sh
# Este e o arquivo que disparara o pequeno sistema.
# Desenvolvi a aplicacao em 3 partes separadas, seguindo as praticas MVC (model, view, controller)
# Porem, senti dificuldade em linkar as partes separadas. Entao resolvi programar em separado (para melhor manutencao futura) e apos, juntar as 3 em partes um arquivo temporario, que sera auto-deletado ao termino da execucao.

# concatena os 3 arquivos em um unico e temporario arquivo
echo "#!/bin/bash" > runtime.sh
cat model.txt view.txt controller.txt >> runtime.sh
# atribui chmod 777
chmod 777 runtime.sh 
# dispara o script
bash runtime.sh
# deleta a si mesmo
rm runtime.sh

# GITHUB: leonardoac/bash-linux.git
