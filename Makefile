.PHONY: all build clean rebuild

all: build

build: env-setup
	@for i in $$(ls out/) ; do hackmyresume BUILD abr-resume-cloud-2017.yaml out/$$i/resume.all -t $$i ; done

clean: env-setup
	@for i in $$(ls out/) ; do rm -fR ./out/$$i/* ; done

rebuild: clean build

env-setup:
	@mkdir -p out/awesome out/compact out/modern out/positive
