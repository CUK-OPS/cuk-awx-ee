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
        stage('push repo to remote host') {
            steps {
                echo 'connect to remote host and pull down the latest version'
            }
        }
        stage('Check website is up') {
            steps {
                echo 'Check website is up'
            }
        }
    }
}
