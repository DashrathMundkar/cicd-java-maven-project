![example workflow](https://github.com/DashrathMundkar/cicd-java-maven-project/actions/workflows/maven.yml/badge.svg)

# cicd-java-maven-project
This is simple java-maven project for cicd enviroment such as kubernetes using jenkins,sonarQube etc.

### Build and deploy locally 

1. ```mvn clean install```


3. ```docker build -t hello-world .```


4. ```docker run -d -p 8080:8080 --name hello-world hello-world```


5. Access the application on ```localhost:8080```



