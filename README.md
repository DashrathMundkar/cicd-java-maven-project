# cicd-java-maven-project
This is simple java-maven project for cicd enviroment such as kubernetes.

### Build and deploy locally 

1. ```mvn clean install```


3. ```docker build -t your_image_name.```


4. ```docker run -d -p 8080:8080 --name your_container_name your_image_name```


5. Access the application on ```localhost:8080```



