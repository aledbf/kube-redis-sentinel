all: push

# 0.0 shouldn't clobber any released builds
TAG = 0.0
PREFIX = aledbf/redis-alpine

container:
	docker build -t $(PREFIX):$(TAG) image

push: container
	docker push $(PREFIX):$(TAG)

clean:
	docker rmi -f $(PREFIX):$(TAG) || true
