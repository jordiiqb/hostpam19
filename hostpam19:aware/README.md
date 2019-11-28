# Exàmen LDAP 28/11/2019
## Jordi Quirós Berbel

Ruta github: https://github.com/jordiiqb/hostpam19/tree/master/hostpam19:aware
Ruta dockerhub: https://hub.docker.com/repository/docker/jordiiqb/hostpam19/general

Aquest Readme.md explica la realització de l'examen de ldap de l'asignatura M06-ASO de l'Escola del Treball.

En el repositori es troben tots els fitxers necessaris per la creació d'un docker basat en una imatge de Fedora 27 on hi haurà un servidor pam.

En aquest servidor pam, quan un usuari local (anna, jordi) vulguin canviar-se el seu finger amb l'ordre chfn, hauran de respondre una pregunta matemàtica per tal d'autenticar-se.

S'utilitzaran un script en python "pamaware.py" que en executar-se verificarà que qui l'executi sigui un usuari unix vàlid i un mòdul de pam "pam_mates.py" que farà la pregunta matemàtica.

### COM UTILITZAR EL CONTAINER

*Arrencar en mode interactiu*
> $ docker run --rm --name pam -h pam -it jordiiqb/hostapm19:aware /bin/bash

Un cop dins fer:

> \# bash startup.sh

**I ja es poden fer servir les apps:**

Com a root

> \# python pamaware.py

Com a usuari

> $ chfn
