#!/bin/bash

# Texto por defecto si no se pasa ningún parámetro
textodf="Que me gusta la bash!!!!"

# Comprobacion del parametro a mi script
if [ -z "$1" ]; then
    # Si no escribistes nada, te envio el texto por defecto
    texto="$textodf"
else
    # Si me enviaste un parametro, lo usare como texto para file1modificado.txt
    texto="$1"
fi

# Creo el archivo file1modificado.txt
echo "$texto" > file1modificado.txt

# Envio la data de file1modificado.txt a file2modificado.txt usando cat (ni modo que otro)
cat file1modificado.txt > file2modificado.txt

# Movemos file2modificado.txt
mv file2modificado.txt /home/mastercore/Escritorio/lemoncode/devops/fundamentos/foo/empty
