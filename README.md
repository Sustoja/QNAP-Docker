# QNAP-Docker
Scripts para crear los contenedores Docker que tengo en la NAS, evitando la interfaz gráfica de Container Station.
- En la carpeta "bash_scripts" se crean utilizando scripts de linux
- En la carpeta "compose_yaml" se crean con "docker-compose up -d <nombre servicio>"

NOTA: El contenedor de proxy inverso Traefik incluido necesita que haya una resolución de nombres en la red local para obtener las IPs locales (p. ej. nas.casa, portainer.casa, homer.casa, etc.)
