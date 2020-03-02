.PHONY: all build clean rebuild

all: build

build: env-setup
	#@for i in $$(ls out/) ; do hackmyresume BUILD abr-resume-cloud-2017.yaml out/$$i/resume.all -t $$i ; done
	#@hackmyresume BUILD abr-resume-cloud-leidos.yaml TO out/modern/resume.all -t ./themes/modern
	@hackmyresume BUILD abr-resume-cloud-leidos.yaml TO out/orbit/resume.all -t node_modules/jsonresume-theme-orbit

clean: env-setup
	@for i in $$(ls out/) ; do rm -fR ./out/$$i/* ; done

rebuild: clean build

analyze: env-setup
	@hackmyresume analyze abr-resume-cloud-leidos.yaml

env-setup:
	@mkdir -p out/awesome out/compact out/modern out/positive out/material out/macchiato out/orbit
