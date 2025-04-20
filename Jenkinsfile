pipeline {
  agent any
  stages {
    stage('verify make is installed') {
      steps {
        bat 'make --version'
      }
    }
    stage('run make') {
      steps {
        bat 'make'
      }
    }
  }
}
