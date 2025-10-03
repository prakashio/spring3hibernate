pipeline {
  agent any
  stages {
    stage('Cloning Repository') {
      steps {
        git 'https://github.com/prakashio/spring3hibernate.git'
      }
    }
    stage('Code Stability') {
      steps {
        sh 'mvn clean install'
      }
    }
  }
}