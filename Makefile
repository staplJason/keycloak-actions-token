build-jar:
	docker run --rm \
		-v .:/home/app \
		-v ~/.m2:/root/.m2 \
		maven:3.9.7-eclipse-temurin-21 \
		bash -c "cd /home/app && mvn clean verify"

# cp target/actions-token-0.0.10.jar ~/dev/deployit/deploystack/keycloak/providers