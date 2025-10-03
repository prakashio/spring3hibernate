pipeline {
  agent any
  tools {
    maven 'mvn' // Ensure this matches the name of your Maven installation in Jenkins
  }
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