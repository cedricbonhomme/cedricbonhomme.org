SHELL := /bin/bash

REMOTE      ?= cedric@ssh-cedric.alwaysdata.net
REMOTE_PATH ?= www/website/

# target: all - Default target. Does nothing.
all:
	@echo "Hello $(LOGNAME), nothing to do by default."
	@echo "Try 'make help'"

help:
	@$(MAKE) -pRrq -f $(lastword $(MAKEFILE_LIST)) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'

test:
	hugo server

build:
	hugo --cleanDestinationDir

compress:
	tar -czf public.tar.gz public/

# target: deploy - Build the site and sync it to AlwaysData with rsync.
deploy: build
	rsync -avz --delete --delay-updates public/ $(REMOTE):$(REMOTE_PATH)

# target: deploy-dry-run - Show what deploy would change, without changing anything.
deploy-dry-run: build
	rsync -avzn --delete public/ $(REMOTE):$(REMOTE_PATH)

clean:
	rm -Rf public/ 2>/dev/null
	rm public.tar.gz 2>/dev/null
