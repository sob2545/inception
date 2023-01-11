all : up

up :
	sudo mkdir -p ${HOME}/data/mariadb ${HOME}/data/wordpress
	sudo chmod 777 /etc/hosts
	sudo echo "127.0.0.1 sesim.42.fr" > /etc/hosts
	sudo docker compose -f ./srcs/docker-compose.yml up -d --build 

down :
	sudo docker compose -f ./srcs/docker-compose.yml down

clean : 
#	 sudo docker compose -f ./srcs/docker-compose.yml down -rmi all
	sudo docker stop nginx mariadb wordpress
	sudo docker rm nginx mariadb wordpress

fclean :
	sudo rm -rf ${HOME}/data
	sudo docker system prune -f
	sudo docker rmi $$(docker images -a)

re : fclean
	@make all

.PHONY : all up down clean fclean re
