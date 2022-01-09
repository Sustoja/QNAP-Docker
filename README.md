# QNAP-Docker

Mi NAS de QNAP es el equipo de "producción" sobre el que se ejecutan los servicios TIC de casa, mientras que las Raspberry forman el entorno de pruebas y aprendizaje. Estas últimas se pueden configurar facilmente con Ansible (https://github.com/Sustoja/Ansible), sin embargo la versión de linux que incopora la NAS no lo permite y, por tanto, hay que hacerlo de otra manera.

<img src="https://github.com/Sustoja/QNAP-Docker/blob/main/images/dashboard.jpg?raw=true" width="800">

En este repositorio están los scripts necesarios para crear los contenedores Docker en la NAS evitando la interfaz gráfica de Container Station, que es mucho más lento y tedioso. Hay dos carpetas ya que aprendí a hacerlo de dos maneras diferentes, aunque la más cómoda es la segunda ya que todo se encuentra en un único fichero _compose_ de Docker.
- En la carpeta "_bash_scripts_" se encuentran scripts de linux para crear cada contenedor.
- En la carpeta "_compose_yaml_" hay un fichero de configuración que se ejecuta con ```docker-compose up -d <nombre servicio>```.

**IMPORTANTE**: El proxy inverso **Traefik** requiere que haya una resolución de nombres en la red local para obtener las IPs locales (p. ej. nas.casa, portainer.casa, etc.) En mi entorno esa funcionalidad la provee **Pihole** mediante la opción "_Local DNS -> DNS Records_"

<img src="https://github.com/Sustoja/QNAP-Docker/blob/main/images/DNSRecords.jpg?raw=true" width="800">

Si todo ha ido bien, el resultado se puede comprobar tanto desde Container Station como desde el Portainer que se acaba de crear en Docker y debería ser como aparece en la siguiente imagen:

<img src="https://github.com/Sustoja/QNAP-Docker/blob/main/images/docker_servers.jpg?raw=true" width="800">
