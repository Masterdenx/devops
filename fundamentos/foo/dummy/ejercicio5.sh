#!/bin/bash

# Verificando parametros mis parametros URL y palabra
if [ "$#" -ne 2 ]; then
    echo "Se necesitan unicamente dos parametros para ejecutar este script"
    exit 1
fi

#F

# URL -primer parámetro-
URL="$1"

# Palabra -segundo parámetro-
palabra="$2"

# Nombre del archivo de la web
OUTPUT_FILE="pagina_escaneada.html"

# Descargar el contenido de la web
wget -q -O "$OUTPUT_FILE" "$URL"

# Buscar la palabra
ocurrencias=$(grep -o -i -c "$palabra" "$OUTPUT_FILE")

if [ $ocurrencias -eq 0 ]; then
    echo "No se ha encontrado la palabra \"$palabra\""
    echo "A que juegas?, intenta de nuevo"
elif [ $ocurrencias -eq 1 ]; then
    echo "La palabra \"$palabra\" aparece solo 1 vez"
    linea=$(grep -o -i -n "$palabra" "$OUTPUT_FILE")
    numero_linea=$(echo "$linea" | cut -d: -f1)
    echo "Aparece unicamente en la linea $numero_linea"
else
    echo "La palabra \"$palabra\" aparece $ocurrencias veces (al menos es mayor que solo 1 vez)"
    primera_linea=$(grep -o -i -n "$palabra" "$OUTPUT_FILE" | head -n 1)
    numero_linea=$(echo "$primera_linea" | cut -d: -f1)
    echo "Aparece por primera vez en la linea $numero_linea"
fi

# Eliminar archivo temporal para no generar basura en tu pc
rm "$OUTPUT_FILE"
