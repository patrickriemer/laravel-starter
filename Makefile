help:
	@echo "  install name=           Build project"
	@echo "  stop                 	 Stop project"
	@echo "  uninstall               Build all container and run (images, container, volumes...)"

install:
	docker-compose up -d
	docker-compose run --rm api composer create-project --prefer-dist laravel/laravel tmp "8.*"
	docker-compose run --rm api sh -c "mv -n tmp/.* ./ && mv tmp/* ./ && rm -Rf tmp"
	touch ./src/api/.env
	export name=${name}
	envsubst < .env.sample > src/api/.env


stop:
	docker-compose stop

uninstall:
	docker-compose down -v --rmi all --remove-orphans