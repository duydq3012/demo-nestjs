pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                withDockerRegistry(credentialsId: 'dockerhub', url: 'https://index.docker.io/v1/') {
                    sh 'docker build -t ongbavi/nestjs .'
                }
            }
        }
    }
}
