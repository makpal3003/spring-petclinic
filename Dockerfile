FROM java
COPY . /app
WORKDIR /app
RUN ./mvnw package && mv target/*.jar app.jar 
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]
