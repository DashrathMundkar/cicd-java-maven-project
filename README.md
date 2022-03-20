![example workflow](https://github.com/DashrathMundkar/cicd-java-maven-project/actions/workflows/maven.yml/badge.svg) ![Jenkins](https://img.shields.io/badge/jenkins-%232C5263.svg?style=for-the-badge&logo=jenkins&logoColor=purple) ![Kubernetes](https://img.shields.io/badge/kubernetes-%23326ce5.svg?style=for-the-badge&logo=kubernetes&logoColor=white) ![Apache Maven](https://img.shields.io/badge/Apache%20Maven-C71A36?style=for-the-badge&logo=Apache%20Maven&logoColor=white) ![Java](https://img.shields.io/badge/java-%23ED8B00.svg?style=for-the-badge&logo=java&logoColor=white) 

# cicd-java-maven-project
This is simple java-maven project for cicd enviroment such as kubernetes using jenkins,sonarQube etc.

### Build and deploy locally 

1. ```mvn clean install```


3. ```docker build -t hello-world .```


4. ```docker run -d -p 8080:8080 --name hello-world hello-world```


5. Access the application on ```localhost:8080```



