FROM adoptopenjdk/openjdk11:latest
COPY target/demo-0.0.1-SNAPSHOT.jar demo-0.0.1.jar
ENTRYPOINT ["java","-jar","-DUSERNAME=postgres","-DPASSWORD=admin","-DHOST=jdbc:postgresql://localhost","-DPORT=5432","-DDB_NAME=cloud","/demo-0.0.1.jar"]
