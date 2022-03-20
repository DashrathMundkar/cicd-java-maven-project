pipeline {

  agent any

  stages {

    stage("Git Checkout") {
      steps {
        script {
           sh "git clone https://github.com/DashrathMundkar/cicd-java-maven-project.git"
        }
      }
    }

    stage("Maven Build") {
      steps {
        script {
          sh "mvn clean install -T 1C"
        }
      }
    }

    stage("Build Docker Image") {
      steps {
        script {
          sh "docker build -t dash18/cicd-java-maven ."
        }
      }
    }
    stage("Push Docker Image") {
      steps {
        script {
          sh "docker push dash18/cicd-java-maven"
        }
      }
    }
  }
  post {
    always {
      script {
        if (currentBuild.currentResult == 'FAILURE') {
          step([$class: 'Mailer', notifyEveryUnstableBuild: true, recipients: "Test@test.com", sendToIndividuals: true])
        }
      }
    }
  }
}
