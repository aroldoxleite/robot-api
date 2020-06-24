pipeline {
   agent {
        docker{
            image 'python:3.7.7-stretch'
            args '--network=host'
        }   
   }

   stages {
      stage('Build') {
         steps {
            sh 'pip install robotframework'
            sh 'pip install robotframework-requests'
         }
      }
      stage('Test') {
         steps {
            sh 'robot -d logs/ tests/'
         }
         post {
            always {
               robot 'logs'
            }
         }
      }
   }
}