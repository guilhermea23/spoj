#!/bin/bash

# Verifica se um arquivo .cpp foi passado como argumento
if [ -z "$1" ]; then
    echo "Uso: ./run.sh <arquivo.cpp>"
    exit 1
fi

# Remove a extensão .cpp para obter o nome do executável
arquivo="$1"
executavel="${arquivo%.cpp}"

# Compila o arquivo .cpp
g++ "$arquivo" -o "$executavel"

# Verifica se a compilação foi bem-sucedida
if [ $? -eq 0 ]; then
    echo "Compilação concluída! Executando $executavel..."
    ./"$executavel"
else
    echo "Erro na compilação."
    exit 1
fi
