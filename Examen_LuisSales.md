<!-- markdownlint-disable MD033 -->

# Examen

<br></br>

![img](pps.jpg)

<br></br>

**<div style="font-size:30px"><center>Curs 2022 - 2023</center></div>**

<br></br>
<br></br>

**<div style="font-size:35px"><center>Posada en Producció Segura</center></div>**

----

<br />

**<div style="font-size:35px"><center>Ciberseguretat</center></div>**

<div style="page-break-after: always; "></div>

<br></br>

- [Examen](#examen)
  - [Inicialitza un repositori git](#inicialitza-un-repositori-git)
  - [Crea una carpeta images que serà exclosa del seguiment de git](#crea-una-carpeta-images-que-serà-exclosa-del-seguiment-de-git)
  - [Crea en l’arrel del repositori un fitxer anomenat Examen\_elTeuNom.odt](#crea-en-larrel-del-repositori-un-fitxer-anomenat-examen_elteunomodt)
  - [Realitza un commit indicant com a missatge «Creació del fitxer examen»](#realitza-un-commit-indicant-com-a-missatge-creació-del-fitxer-examen)
  - [Baixa els fitxers sample.war i default.conf, necessaris per al següent apartat, en l’arrel del repositori i fes un commit amb el missatge «Important fitxers»](#baixa-els-fitxers-samplewar-i-defaultconf-necessaris-per-al-següent-apartat-en-larrel-del-repositori-i-fes-un-commit-amb-el-missatge-important-fitxers)
  - [Crea una branch anomenada «dockerRun»](#crea-una-branch-anomenada-dockerrun)
  - [Documenta l’apartat Llançament amb docker run de l’apartat següent i realitza un commit amb el missatge «docker run»](#documenta-lapartat-llançament-amb-docker-run-de-lapartat-següent-i-realitza-un-commit-amb-el-missatge-docker-run)
    - [crearem la xarxa y el contenedo de tomcat](#crearem-la-xarxa-y-el-contenedo-de-tomcat)
    - [crearem el contenedor del proxy](#crearem-el-contenedor-del-proxy)
    - [Comprovacio que funciona](#comprovacio-que-funciona)
    - [creacio del commit](#creacio-del-commit)
  - [Crea una branch anomenada «Dockerfile»](#crea-una-branch-anomenada-dockerfile)
  - [Documenta l’apartat Creació dels Dockerfile de l’apartat següent i realitza un commit amb el missatge «Dockerfile»](#documenta-lapartat-creació-dels-dockerfile-de-lapartat-següent-i-realitza-un-commit-amb-el-missatge-dockerfile)
    - [Creació del Dockerfile Tomcat](#creació-del-dockerfile-tomcat)
    - [creació del Dockerfile nginx](#creació-del-dockerfile-nginx)
    - [Llançament del contenidor Tomcat](#llançament-del-contenidor-tomcat)
    - [Llançament del contenidor nginx](#llançament-del-contenidor-nginx)
    - [Comprovació funcionamet de l’aplicació](#comprovació-funcionamet-de-laplicació)
    - [creació del commit](#creació-del-commit)
  - [Fusiona les dues rames](#fusiona-les-dues-rames)
  - [Crea una branch anomenada «docker-compose»](#crea-una-branch-anomenada-docker-compose)
  - [Documenta l’apartat Llançament amb docker-compose de l’apartat següent i realitza un commit amb el missatge «docker-compose»](#documenta-lapartat-llançament-amb-docker-compose-de-lapartat-següent-i-realitza-un-commit-amb-el-missatge-docker-compose)
    - [Creació del fitxer docker-compose.yaml](#creació-del-fitxer-docker-composeyaml)
    - [Comprovació funcionamet de l’aplicació](#comprovació-funcionamet-de-laplicació-1)
    - [comit](#comit)
  - [Fusiona les dues rames](#fusiona-les-dues-rames-1)
  - [Exporta el fitxer Examen\_elTeuNom.md a format pdf i realitza un commit amb el missatge «pdf examen»](#exporta-el-fitxer-examen_elteunommd-a-format-pdf-i-realitza-un-commit-amb-el-missatge-pdf-examen)
  - [crea un repositori remot (Github) i fes un push del teu repositori local](#crea-un-repositori-remot-github-i-fes-un-push-del-teu-repositori-local)
  - [Adreça GitHub](#adreça-github)

<div style="page-break-after: always; "></div>

## Inicialitza un repositori git

![i](images/1.png)

## Crea una carpeta images que serà exclosa del seguiment de git

![i](images/2.png)

## Crea en l’arrel del repositori un fitxer anomenat Examen_elTeuNom.odt

![i](images/3.png)

## Realitza un commit indicant com a missatge «Creació del fitxer examen»

![i](images/4.png)

## Baixa els fitxers sample.war i default.conf, necessaris per al següent apartat, en l’arrel del repositori i fes un commit amb el missatge «Important fitxers»

![i](images/5.png)

## Crea una branch anomenada «dockerRun»

![i](images/6.png)

## Documenta l’apartat Llançament amb docker run de l’apartat següent i realitza un commit amb el missatge «docker run»

### crearem la xarxa y el contenedo de tomcat

![i](images/7.png)

### crearem el contenedor del proxy

![i](images/8.png)

### Comprovacio que funciona

![i](images/26.png)

### creacio del commit

![i](images/10.png)

## Crea una branch anomenada «Dockerfile»

![i](images/12.png)

## Documenta l’apartat Creació dels Dockerfile de l’apartat següent i realitza un commit amb el missatge «Dockerfile»

### Creació del Dockerfile Tomcat

```properties
FROM tomcat:9.0
ADD ./sample.war /usr/local/tomcat/webapps/sample.war
```

![i](images/13.png)

### creació del Dockerfile nginx

```properties
FROM nginx
ADD ./default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
```

### Llançament del contenidor Tomcat

![i](images/14.png)

### Llançament del contenidor nginx

![i](images/15.png)

### Comprovació funcionamet de l’aplicació

![i](images/16.png)

### creació del commit 

![i](images/17.png)

## Fusiona les dues rames

![i](images/22.png)

## Crea una branch anomenada «docker-compose»

![i](images/19.png)

## Documenta l’apartat Llançament amb docker-compose de l’apartat següent i realitza un commit amb el missatge «docker-compose»

### Creació del fitxer docker-compose.yaml

```yaml
version: "3.9"
services:
  tomcat:
    container_name: aplicacionjava
    image: tomcat:9.0
    volumes:
    - ./sample.war:/usr/local/tomcat/webapps/sample.war
  nginx:
    image: nginx
    ports:
      - 80:80
    volumes:
    - ./default.conf:/etc/nginx/conf.d/default.conf
```

### Comprovació funcionamet de l’aplicació

![i](images/20.png)

### comit 

![i](images/21.png)

## Fusiona les dues rames

![i](images/23.png)

## Exporta el fitxer Examen_elTeuNom.md a format pdf i realitza un commit amb el missatge «pdf examen»

![i](images/24.png)

## crea un repositori remot (Github) i fes un push del teu repositori local

![i](images/25.png)

## Adreça GitHub

<https://github.com/llaurator/examenPPS>

