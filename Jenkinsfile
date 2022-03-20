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
          sh "mvn clean install"
        }
      }
    }

    stage("Build Docker Image") {
      steps {
        script {
          sh "docker build -t java-project ."
        }
      }
    }
    stage("Push Docker Image") {
      steps {
        script {
          sh "docker push java-project"
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
