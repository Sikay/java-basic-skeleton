include .env

.PHONY: docker-up
docker-up:
	@docker-compose up -d

.PHONY: docker-down
docker-down:
	@docker-compose down -v

.PHONY: build
build:
	@./gradlew build --warning-mode all

.PHONY: test
test:
	@./gradlew test --warning-mode all

.PHONY: docker-test
docker-test:
	@docker exec agenda-java ./gradlew test --warning-mode all

.PHONY: ping-mysql
ping-mysql:
	@docker exec "$(MYSQL_HOST)" mysqladmin -u "$(MYSQL_ROOT_USER)" --host "127.0.0.1" ping --silent
