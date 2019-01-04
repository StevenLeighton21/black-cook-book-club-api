PRJ_NAME:=$(notdir $(shell pwd))

build:
	docker-compose down; docker-compose build
	
serve:
	docker-compose up

mysql:
	docker exec -it ${PRJ_NAME}_db_1 sh -c 'mysql -uroot -p$${MYSQL_ROOT_PASSWORD} $${MYSQL_DATABASE}'

ssh:
	docker exec -it ${PRJ_NAME}_ruby_1 ash
