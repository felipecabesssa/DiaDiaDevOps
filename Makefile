test:
	@ ./mvnw test

package:
    @ ./mvnw clean package -DskipTests

docker-image-build: package
    @ docker build -t caelum/clines-api .

run: docker-image-build
    @ docker-compose up -d

stop: 
    @ docker-compose down -v