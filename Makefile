help:
	@echo "  install                 Build project"
	@echo "  run                 	 Run project (stop with CTRL/CMD+C)"
	@echo "  uninstall               Build all container and run (images, container, volumes...)"
	@echo "  ssh                     Connect to the PHP container"

install:
	docker-compose up --build

run:
	docker-compose up

uninstall:
	docker-compose down -v --rmi all --remove-orphans

ssh:
	docker exec -it php /bin/sh; exit
