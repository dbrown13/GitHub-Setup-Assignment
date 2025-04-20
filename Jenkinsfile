        pipeline {
            agent any

            stages {
                stage('Build') {
                    steps {
                        checkout scm
                        sh 'make all'  // Example: Execute the 'make all' command
                        // You can add more make commands here as needed
                    }
                }
            }
        }
