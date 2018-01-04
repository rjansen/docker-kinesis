build:
	@docker build -t docker-kinesis .

run:
	@docker run -d --rm --name docker-kinesis -p 4567:4567 docker-kinesis

