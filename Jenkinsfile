pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t ongbavi/nestjs .'
            }
        }
        stage('push') {
            steps {
                withDockerRegistry(credentialsId: 'dockerhub', url: 'https://index.docker.io/v1/') {
                    sh 'docker push ongbavi/nestjs'
                }
            }
        }
    }
}
