#! /bin/bash

# Mi constante
URL="https://archive.org/search?query=patata"

# Descargo el contenido
wget -O file1.txt $URL

# Busco la palabra que coloque como parametro en mi fichero
palabra="$1"

# Inicio de mi condicional
if grep -q "$palabra" file1.txt; then

  # Obtengo el numero de veces que aparece la palabra en mi fichero
  contador=$(grep -c "$palabra" file1.txt)

  # Obtengo la linea en la que aparece la palabra por primera vez (la parte que mas me costo analizar jeje)
  primer_encuentro=$(grep -n "$palabra" file1.txt | head -1 | awk '{print $1}')

  # Imprime el mensaje con los resultados de la busqueda
  echo "La palabra \"$palabra\" aparece $contador veces"
  echo "Aparece por primera vez en la linea $primer_encuentro"

# Si la palabra no aparece en el fichero
else

  # Imprime el mensaje correspondiente
  echo "No se ha encontrado la palabra, \"$palabra\""
  echo "Tu suerte es pesima, vuelve a intentar"
fi