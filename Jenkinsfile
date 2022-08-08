pipeline {

  agent any

  tools {
    maven 'maven 3.8.4'
    jdk 'jdk17'
  }

  stages {
    stage('Build') {
      steps {
        sh 'mvn clean install -pl fyrnd -am'
      }
    }
    stage('Build Docker Image') {
      steps {
        dir("user") {
          sh 'docker-compose build'
        }
      }
    }
    stage('Run Docker Image') {
      steps {
        dir("user") {
          sh 'docker-compose up --detach'
        }
      }
    }
  }
}
