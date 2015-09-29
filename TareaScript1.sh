#!/bin/bash

echo 'Por favor Selecciona un numero segun el grupo'
echo '1) Alumnos 2) Profesores 3) Administrativos o 4) Rector:'
read Grup
echo 'Por favor escribe el nombre del nuevo usuario:'
read Usuario

	#Grup=1 Alumnos
	#Grup=2 Profesores
	#Grup=3	Administrativos
	#Grup=4	Rector
	
	
	if [ $Grup = 1 ]; then
		sudo groupadd Alumnos
		sudo mkdir  /home/Alumnos
	
	
		#Una vez creado el grupo hacemos el usuario.	 	
		sudo useradd $Usuario -d /home/Alumnos/$Usuario -m -g Alumnos 
		sudo passwd $Usuario
		sudo chmod -R 744 /home/Alumnos/$Usuario
	
	fi

	if [ $Grup = 2 ]; then
		sudo groupadd Profesores
		sudo mkdir  /home/Profesores
	
	
		#Una vez creado el grupo hacemos el usuario.	 	
		sudo useradd $Usuario -d /home/Profesores/$Usuario -m -g Profesores
		sudo passwd $Usuario
		sudo chmod -R 744 /home/Profesores/$Usuario
	
	fi

	if [ $Grup = 3 ]; then
		sudo groupadd Administrativos
		sudo mkdir  /home/Administrativos
	
	
		#Una vez creado el grupo hacemos el usuario.	 	
		sudo useradd $Usuario -d /home/Administrativos/$Usuario -m -g Administrativos
		sudo passwd $Usuario
		sudo chmod -R 744 /home/Administrativos/$Usuario
	
	fi
	
	if [ $Grup = 4 ]; then
		sudo groupadd Rector
		sudo mkdir  /home/Rector
	
	
		#Una vez creado el grupo hacemos el usuario.	 	
		sudo useradd $Usuario -d /home/Rector/$Usuario -m -g Rector
		sudo passwd $Usuario
		sudo chmod -R 750 /home/Rector/$Usuario
	
	fi

	
		
	
	

	
	
	


