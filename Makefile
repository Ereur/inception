reset_all: stop rm rmi volumes_rm network_rm

build:
	docker compose -f srcs/docker-compose.yml up --build

stop:
	docker stop $$(docker ps -qa)

rm:
	docker rm $$(docker ps -qa)

rmi:
	docker rmi -f $$(docker images -qa)

volumes_rm:
	docker volume rm $$(docker volume ls -q)

network_rm:
	docker network rm $$(docker network ls -q) 2>/dev/null