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

    stage("Run SonarQube Analysis") {
      steps {
        script {
          withSonarQubeEnv('YOUR_SonarQube_INSTALLATION_NAME') {
            sh 'mvn clean package sonar:sonar'
          }
          try {
            timeout(time: 5, unit: 'MINUTES') { // pipeline will be killed after a timeout
              def qg = waitForQualityGate()
              if (qg.status != 'OK') {
                error "Pipeline aborted due to quality gate failure: ${qg.status}"
              }
            }
          } catch (e) {
            throw e
          }
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

    stage("Apply the Kubernetes files") {
      steps {
        script {
          sh "kubectl apply -f kubernetes/ "
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
