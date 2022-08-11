pipeline {
 
  agent any

  triggers{
    GenericTrigger(
      genericVariables: [
      [key:'ref', value:'$.ref'],
      [key:'after',value:'$.after']
      ],
      token: 'abc',
      tokenCredentialId: '',
      causeString: 'Triggered on $ref',
      regexpFilterText: '$ref',
      regexpFilterExpression: 'refs/tags/deploy/test-tag'
      regexpFilterText: '$after'
      regexpFilterExpression: '^(?!0000000000000000000000000000000000000000$)'
    )
  }

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
