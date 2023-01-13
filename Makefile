all : up

up :
	sudo mkdir -p ~/data/mariadb ~/data/wordpress
	sudo chmod 777 /etc/hosts
	sudo echo "127.0.0.1 sesim.42.fr" > /etc/hosts
	sudo docker compose -f ./srcs/docker-compose.yml up --build 

down :
	sudo docker compose -f ./srcs/docker-compose.yml down

clean : 
	sudo docker compose -f ./srcs/docker-compose.yml down --rmi all

fclean : clean
	sudo rm -rf /home/sesim/data
	sudo docker system prune -f

re : fclean
	@make all

.PHONY : all up down clean fclean re
