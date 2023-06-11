pipeline {
  agent any
  
  stages {
    stage('Build') {
      steps {
        bat 'docker build -t server .'
      }
    }
    stage('Deploy') {
      steps {
        bat 'docker run -d -p 8086:5000 server'
        
      }
    }
  }
}
