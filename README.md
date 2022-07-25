# Rest-AAPI-Flask-Docker-Database-integration

## Backend
1. First creating Dockerfile which creates the python image for deploy backend application.

2. Deploying backend application using `docker-compose.yml` file. 

## Database
MySQL database contaier deployed directly from docker-compose.yml file.  

## API Gateway
Haproxy are used as a API Gateway(loadbalancer). When any users from internet hit loadbalancer IP address then it's redirect traffic to the frontend application. 

# ansible playbook
- There is three task which is creating with the help of Ansible playbook.

a) Installing docker

b) Installing docker-compose to run docker-compose.yml file

c) Triggers the `docker-compose.yml` file

## Note
First Clean docker environment before deploying your application using the Jenkins. Use below command to cleanup the environment at same path where your `docker-compose.yml` file located.
```
docker-compose kill
docker rm -f $(docker ps -a -q)
docker rmi -f $(docker images -a -q)

```
# Jenkins Integration
After cleanup your environment trigger the Jenkins job eighter manually or using any triggers.




