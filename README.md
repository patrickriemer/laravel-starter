make install

docker-compose run --rm api composer create-project --prefer-dist laravel/laravel tmp "8.*"
docker-compose run --rm api sh -c "mv -n tmp/.* ./ && mv tmp/* ./ && rm -Rf tmp"