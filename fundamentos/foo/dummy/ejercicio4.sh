#!/bin/bash

# URL de la página web
URL="https://es.wikipedia.org/wiki/Solanum_tuberosum"

# Nombre del archivo donde se guardará el contenido de la página
OUTPUT_FILE="pagina_escaneada.html"

# Descargar el contenido de la página web
wget -q -O "$OUTPUT_FILE" "$URL"

# Palabra a buscar (se pasa como argumento al script)
palabra="$1"

# Buscar la palabra en el archivo
num_ocurrencias=$(grep -o -i -c "$palabra" "$OUTPUT_FILE")

if [ $num_ocurrencias -eq 0 ]; then
    echo "No se ha encontrado la palabra \"$palabra\""
else
    echo "La palabra \"$palabra\" aparece $num_ocurrencias veces"
    primera_linea=$(grep -o -i -n "$palabra" "$OUTPUT_FILE" | head -n 1)
    numero_linea=$(echo "$primera_linea" | cut -d: -f1)
    echo "Aparece por primera vez en la línea $numero_linea"
fi

# Eliminar el archivo temporal
rm "$OUTPUT_FILE"
