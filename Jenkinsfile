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

    stage('Build') {
      steps {
        sh 'cat versionImage | xargs ./scripts/build.sh'
      }
    }

    stage('Run Container') {
      steps {
        sh 'cat versionImage | xargs ./scripts/run.sh'
      }
    }

    stage('Test') {
      steps {
        sleep 5
        sh './scripts/test.sh'
      }
    }

    stage('Stop Conainer') {
      steps {
        sh './scripts/stop.sh'
      }
    }

  }
}