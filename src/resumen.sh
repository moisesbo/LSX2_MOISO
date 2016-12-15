#!/bin/bash


	PARAMETROS=3
	VERSION_BASH="4.3.11"
	ERR_DISTRO=2
	ERR_BASH=3
	ERR_PARAM=4
	CONTADOR=1



	if [[ `echo $BASH_VERSION | cut -d "(" -f1` == $VERSION_BASH || 
		`lsb_release -i  | awk '{print $3}'` == Ubuntu ]]
		then
			echo "Versión de bash $VERSION_BASH correcta!"
			echo "El valor de bash version es $BASH_VERSION"
		else
			echo "Error:
			Si versión de bash no es compatible con el script.
			Necesita la versión $VERSION_BASH y está instalada
			la versión $BASH_VERSION"
			exit 1
	fi


	if [[ $# != $PARAMETROS ]]
		then
			echo "Error:
			La forma de utilizar el script es la siguiente
			$0 <param1> <param2> <param3>
			"
			exit 1
			else
			
			echo "El número de parámetros fue correcto, y es $#"

	
			if [[ $2 == casa ]]
				then
					echo "El parámetro 2 es casa!"
					
					else
						echo "El parámetro 2 NO es casa"
					fi
				fi

			echo "Los parámetros fueron"
			echo $@


			
		for i in "$*"
			do
				echo "Uno de los parámetros es: $i"
			done



		for i in alto otro caso
			do
				echo "Elemento # $CONTADOR del segundo for es $i"
				let "CONTADOR=$CONTADOR+1"
			done

			echo "
				El valor del contador es $CONTADOR
				"


		for m in {1..10}
			do
				echo "El contador es $CONTADOR y el número es $m"
				((CONTADOR++))
			done





exit 0
