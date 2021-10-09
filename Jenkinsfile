pipeline {
  agent any
  stages {
    stage('Inicio_env') {
      steps {
        echo 'Iniciando construccion'
        sh 'env'
      }
    }

    stage('Docker  Env') {
      parallel {
        stage('Docker  Env') {
          steps {
            sh 'docker -v'
          }
        }

        stage('Images Docker') {
          steps {
            sh 'docker images'
          }
        }

      }
    }

  }
}