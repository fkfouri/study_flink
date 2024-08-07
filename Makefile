.PHONY: help date
help:
	@echo "Usage: make [target]\n"


compose_up:
	docker-compose -f docker-compose.yml up -d


compose_down:
	docker-compose -f docker-compose.yml down
