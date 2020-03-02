.PHONY: all build clean rebuild analyze env-setup node-setup

all: build

build: env-setup
	@#for i in $$(ls out/) ; do hackmyresume BUILD abr-resume-cloud-2017.json out/$$i/resume.all -t $$i ; done
	@hackmyresume BUILD abr-resume-cloud-leidos.json TO out/modern/resume.all -t ./themes/modern
	@#hackmyresume BUILD abr-resume-cloud-leidos.json TO out/material/resume.all -t node_modules/jsonresume-theme-material
	@#hackmyresume BUILD abr-resume-cloud-leidos.json TO out/macchiato/resume.all -t node_modules/jsonresume-theme-macchiato
	@#hackmyresume BUILD abr-resume-cloud-leidos.json TO out/a11y/resume.all -t node_modules/jsonresume-theme-a11y
	@#hackmyresume BUILD abr-resume-cloud-leidos.json TO out/orbit/resume.all -t node_modules/jsonresume-theme-orbit

clean: env-setup
	@for i in $$(ls out/) ; do rm -fR ./out/$$i/* ; done

rebuild: clean build

analyze: env-setup
	@hackmyresume analyze abr-resume-cloud-leidos.json

env-setup: node-setup
	@for i in out/awesome out/compact out/modern out/positive out/material out/macchiato out/orbit ; do \
	  mkdir -p $$i ; \
	  /bin/cp andy-smiling-dsci.jpg $$i ; \
	done

node-setup: node_modules

node_modules:
	@npm install jsonresume-theme-material jsonresume-theme-macchiato jsonresume-theme-a11y jsonresume-theme-orbit

