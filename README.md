# SpringBoot + MySql Docker-compose

Getting started:

1. run Maven clean & Maven install

2. run docker:

    - start up docker, run: docker compose up -d 
    - spring-backend will fail for "communications link failure"
    - wait for mysql grants privilege to "root" user
    - restart spring-backend container