pipeline {
  agent any
  stages {
    stage('Cloning Repository') {
      git 'https://github.com/prakashio/spring3hibernate.git'
    }
    stage('Code Stability') {
      steps {
        sh 'mvn clean install'
      }
    }
  }
}