include .env

.PHONY: docker-up
docker-up:
	@docker-compose up -d

.PHONY: docker-down
docker-down:
	@docker-compose down -v

.PHONY: stop
stop:
	@./gradlew --stop

.PHONY: build
build:
	@./gradlew build --warning-mode all

.PHONY: test
test:
	@./gradlew test --warning-mode all

.PHONY: docker-build
docker-build:
	@docker exec "$(JAVA_PROJECT_NAME)" ./gradlew build --warning-mode all

.PHONY: docker-test
docker-test:
	@docker exec "$(JAVA_PROJECT_NAME)" ./gradlew test --warning-mode all

.PHONY: clean
clean:
	@docker exec "$(JAVA_PROJECT_NAME)" ./gradlew clean

.PHONY: ping-mysql
ping-mysql:
	@docker exec "$(MYSQL_HOST)" mysqladmin -u "$(MYSQL_ROOT_USER)" --host "127.0.0.1" ping --silent
