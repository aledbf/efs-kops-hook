all: image

.PHONY: image push

image:
	docker build -t aledbf/efs-hook:0.1 -f image/Dockerfile image/

push: image
	docker push aledbf/efs-hook:0.1
