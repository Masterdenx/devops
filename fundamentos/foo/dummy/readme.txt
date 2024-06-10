#************************************************************************************************************
#Explicacion de los 3 ejercicios de bash

#Primeramente procedi a crear mi jerarquia de directorios justamente como se indica en el archivo README
#luego procedi a realizar los pasos indicados en el mismo archivo para poder conseguir realizar los ejercicios
#
#A mayor detalle, iniciando con el entregable del ejercicio #3 basicamente procedo a crear el script,  
#dentro de cada ejercicio se encuentran los comentarios de explicacion casi linea por linea
#
#en resumen el script del ejercicio 3 luego de declarar el texto por defecto sin necesidad de parametros, 
#procedo a agregar una condicional sencilla, suponiendo que se ingreso en la condicion "else"  procedo a modificar el valor anterior declarado para el texto 
#creando el nuevo archivo modificado y enviando la data de un archivo a otro (con cat) y termino el ejercicio moviendo el nuevo archivo modificado a la carpeta "empty"
#
#justo como lo indica el enunciado
#hasta aca el ejercicio #3
#
#Ejercicio#4
#Siguiendo igualmente las instrucciones del archivo, este ejercicio admito que me costo un poco pensarlo sin complicarme mucho
#en términos sencillo lo que hice fue llamar a la URL de la web en cuestión (podia ser cualquiera)
#creé el archivo temporal donde guardaria el contenido de la web y descargue dicho contenido alli mismo utilizando "wget" , ahora bien procedí para enviar como argumento para el script la palabra a buscar (que se pide que la ingreses) y luego busque la palabra pasando el parámetro usando el grep -o -i -c y la palabra al final termine agregando una condicion sencilla donde cuenta el numero de ocurrencias encontradas de dicha palabra, en caso de  aparecer imprime un mensaje indicando la primera vez que dicha palabra aparece, una vez finalizada la condición procedo a destruir el archivo temporal
#dato: para ejecutar el script al llamarlo debes pasarle como parámetro la palabra.... 
#
#Ejercicio #5
#aunque este fue opcional, decidí hacerlo y enserio me dio cierto dolor de cabeza
#para ejecutar el script se debe pasar primeramente el parametro de la url y luego de un espacio, la palabra a buscar, de no cumplirse esto salta un mensaje indicando que se necesitan dichos parámetros; Una vez obtenidos los parametros, se crear el archivo temporal para luego descargar el archivo de la web, luego se procede a buscar la palabra y se cuenta con una serie de condicionales la cantidad de ocurrencias para devolverlo luego (en caso de encontrarse por supuesto), si no hay ocurrencias arroja un mensaje indicando que no se ha encontrado esa palabra.
#
