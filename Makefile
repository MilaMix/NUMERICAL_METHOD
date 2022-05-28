.PHONY deploy:
deploy:
	echo "Deploying..."
	docker build --pull --rm -f "Dockerfile" -t numericalmethodecsb:latest-frontend "." <
	

.PHONY dev:
dev: 
	echo "Building..."
	yarn start