#!/bin/bash

# Parámetros del script

textodf="Que me gusta la bash!!!!"

# Comprobamos si se ha pasado un parámetro al script

if [ "$1" == "" ]; then
    # Si no se ha pasado un parámetro, usamos el texto por defecto
    texto=$textodf
else
    # Si se ha pasado un parámetro, lo usamos como texto para file1.txt
    texto=$1
fi

# Creamos el archivo file1.txt

echo "$texto" > file1.txt

# Volcamos el contenido de file1.txt a file2.txt usando cat

cat file1.txt > file2.txt

# Movemos file2.txt

mv file2.txt /home/masterdenx/Escritorio/repos/bootcamp/foo/empty
