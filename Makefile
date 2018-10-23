# If the first argument is "create-mode" ...
ifeq (create-mode,$(firstword $(MAKECMDGOALS)))
  # use the rest as arguments for "run"
  RUN_ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))
  # ...and turn them into do-nothing targets
  $(eval $(RUN_ARGS):;@:)
endif

# ... or "publish-mode"...
ifeq (publish-mode,$(firstword $(MAKECMDGOALS)))
  # use the rest as arguments for "run"
  RUN_ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))
  # ...and turn them into do-nothing targets
  $(eval $(RUN_ARGS):;@:)
endif

build:
	docker-compose build

up:
	docker-compose up -d

setup-panacea:
	cp -v karp-backend/config/lexiconconf.json{.panacea,}
	cp -v karp-backend/config/lexiconconf.json dummyauth
	cp -v karp-backend/config/modes.json{.panacea,}
	cp -v karp-backend/config/mappings/fieldmappings_panacea.json{.panacea,}
	cp -v karp-backend/config/mappings/mappingconf_panacea.json{.panacea,}

create-metadata:
	cd karp-backend
	docker-compose run --rm  karp python offline.py --create_metadata

create-mode:
	cd karp-backend
	docker-compose run --rm karp python offline.py --create_mode $(RUN_ARGS)

publish-mode:
	cd karp-backend
	docker-compose run --rm karp python offline.py --publish_mode $(RUN_ARGS)

.PHONY: build up
