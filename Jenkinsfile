pipeline {

  agent any

  tools {
    maven 'maven 3.8.4'
    jdk 'jdk17'
  }

  stages {
    stage('Build') {
      steps {
        sh 'mvn clean install -pl :CICD-Test_FY -am'
      }
    }
    stage('Build Docker Image') {
      steps {
          sh 'docker-compose build'
      }
    }
    stage('Run Docker Image') {
      steps {
          sh 'docker-compose up --detach'
      }
    }
  }
}
