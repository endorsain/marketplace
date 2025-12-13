COMPOSE_FILE := docker-compose.yml
NESTJS_API_REST := nestjs

.PHONY: up build down logs start-api

up:
	docker compose up -d --build

down:
	docker compose down

start-api:
	docker compose up -d $(NESTJS_API_REST)

api-exec:
	docker compose exec $(NESTJS_API_REST) $(COMMAND)

logs:
	docker compose logs -f

api-logs:
	docker compose logs -f $(NESTJS_API_REST)
