SHELL := /bin/bash

# target: all - Default target. Does nothing.
all:
	@echo "Hello $(LOGNAME), nothing to do by default."
	@echo "Try 'make help'"

help:
	@$(MAKE) -pRrq -f $(lastword $(MAKEFILE_LIST)) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'

test:
	hugo server

build:
	hugo

compress:
	tar -czf public.tar.gz public/

deploy:
	cd www/
	tar -xzf public.tar.gz
	rm -Rf website ; mv public website

clean:
	rm -Rf public/ 2>/dev/null
	rm public.tar.gz 2>/dev/null
