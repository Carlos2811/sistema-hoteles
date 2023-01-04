# sistema-hoteles
Sistema de gestión para hoteles
Buen día el siguiente sistema ha sido realizado con lo siguiente:
  - Codigo php para el backend
  - Html y css3 para la maquetacion y el diseño de las pantallas
  - Se utilizo como servidor la herramienta xampp con su servicio de apache
  - La base de datos esta construida en Mysql por medio del servicio phpMyAdmin instalado tambien con xampp
  - El usuario de ingreso para este sistema esta localizado en el archivo pswrd.txt localizado dentro del proyecto
El paso a paso para su ejecución es el siguiente:
  - Descargar e instalar la herramienta xampp en la siguiente ruta: https://www.apachefriends.org/es/index.html, si ya se cuenta con esta herramienta omitir este paso.
  - Clonar el proyecto con el comando git clone https://github.com/Carlos2811/sistema-hoteles.git en la ruta C:\xampp\htdocs
  - Una vez el proyecto se encuentre alojado en dicha ruta se debe ejecutar la herramienta xampp, una vez en el panel de control se deben iniciar los servicios de 
  Apache y MySql.
  - Cuando estos servicios se encuentren iniciados el siguiente paso es dar click en el boton que dice "Admin", desde alli tendremos acceso a la ruta donde esta
  desplegado el sistema que para su correcta visualizacion sería la siguiente: http://localhost/gestion-hoteles/index.php
  - Una vez ingresemos a esta ruta el sistema nos pedira identificarnos para acceder a los modulos correspondientes, este usuario y contraseña se encuentran en
  el archivo pswrd.txt localizado dentro del proyecto.
  - Para la creacion de la base de datos necesaria para el correcto funcionamiento de este sistema usted encontrara una carpeta dentro de este proyecto llamada 
  database, dentro de esta carpeta hay un archivo llamado hoteles.sql el cual contiene todo el script que contiene las tablas y la informacion correspondiente para el
  sistema. El contenido de este archivo se debe copiar y luego pegar en el servicio de MySql por medio de la opcion SQL.
