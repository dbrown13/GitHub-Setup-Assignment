pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        checkout scm // Check out the source code from your SCM (e.g., Git)
      }
    }
    stage('Run Make') {
      steps {
        bat 'make' // Use 'bat' for Windows to run the 'make' command
      }
    }
  }
}
