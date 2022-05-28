# Manual de Uso

>Para poder usarlo hay que tener varias cosas en cuenta:
>  - Tener Docker instalado en el dispositivo:
>  > En el caso de un sistema Linux, se pueden usar estos comandos: 
>  > 
>  > `sudo apt update`
>  > 
>  >  `sudo apt install docker-compose -y`
>  -  Ahora se pocede con la creaciòn de la imagen:
>  >  `sudo docker pull ubuntu`
>  -  Para confimar su creaciòn correcta puedes usar:
>  >  `sudo docker image ls`
>  -  El siguiente paso consiste en construir el proceso, para ello solo debes asegurarte que en el Dockerfile se hallen estas lìneas:
>  >
>  >  FROM ubuntu
>   
>  >  RUN apt update
>   
>  >  RUN apt install tzdata -y
>   
>  >  RUN apt install git -y
>   
>  >  RUN apt install apache2 -y
>   
>  >  RUN apt install php -y 
>    
>  >  RUN git clone https://github.com/LuhBello/proyecto_frontend.git
> 
>  >  EXPOSE 80
>   
>  >  RUN cp -r proyecto_frontend/* /var/www/html
>  -  Para construir el programa procede usando:
>  > `sudo docker build -t app/ubuntu/lastest:latest`
>  - Por ùltimo, para entrar usa:
>  > `sudo docker run -it -p 80:80 app/ubuntu/lastest:latest`
>  > e ingresa al http://localhost:8080

## Muchas gracias 
