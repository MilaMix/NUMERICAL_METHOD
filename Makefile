.PHONY deploy:
deploy:
	echo "Deploying..."
	docker build --pull --rm -f "Dockerfile" -t numerical-method:lasted "." <
	

.PHONY dev:
dev: 
	echo "Building..."
	yarn start

.PHONY i:
i:
	echo "Installing..."
	yarn
	