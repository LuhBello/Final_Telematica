FROM ubuntu
    RUN apt update
    RUN apt install tzdata -y
    RUN apt install git -y
    RUN apt install apache2 -y
    RUN apt install php -y 
    RUN git clone https://github.com/LuhBello/proyecto_frontend.git
    EXPOSE 80
    RUN cp -r proyecto_frontend/* /var/www/html
