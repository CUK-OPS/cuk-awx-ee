pipeline {
    agent any 
    stages {
        stage('Clone the repo') {
            steps {
                echo 'clone the repo'
                sh 'rm -rf cuk-awx-ee'
                sh 'git clone https://github.com/CUK-OPS/cuk-awx-ee.git'
            }
        }
        stage('Build docker image') {
            steps {
                echo 'connect to remote host and pull down the latest version'
                sh 'docker build -t padster2012/awx-ee-kerb:latest .'
            }
        }
        stage('Check website is up') {
            steps {
                echo 'Check website is up'
            }
        }
    }
}
