up:
	@docker-compose up -d

down:
	@docker-compose down

prune:
	@docker volume prune -f
