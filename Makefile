include .env

.PHONY: help
help:
	@echo ""
	@echo "usage: make COMMAND"
	@echo ""
	@echo "Commands:"
	@echo "  build			💻 Installs all the dependencies"
	@echo "  stop			💻 Stop all gradle daemons"
	@echo "  test			✅ Running all the tests"
	@echo "  docker-up		⏫ Lift the containers"
	@echo "  docker-down		⏫ Turn off the containers"
	@echo "  docker-build		💻 Installs all the dependencies in docker"
	@echo "  docker-clean		💻 Delete gradle build"
	@echo "  docker-test		✅ Running all the tests in docker"
	@echo "  ping-mysql		✅ Check that mysql docker is up"

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

.PHONY: docker-clean
clean:
	@docker exec "$(JAVA_PROJECT_NAME)" ./gradlew clean

.PHONY: ping-mysql
ping-mysql:
	@docker exec "$(MYSQL_HOST)" mysqladmin -u "$(MYSQL_ROOT_USER)" --host "127.0.0.1" ping --silent
