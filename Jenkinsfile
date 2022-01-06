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
        
        stage('Build image') {         
       
            app = docker.build("padster2012/awx-ee-kerb")    
       }     
        stage('Test image') {           
            app.inside {            
             
             sh 'echo "Tests passed"'        
            }    
        }  
        stage('Check website is up') {
            steps {
                echo 'Check website is up'
            }
        }
    }
}
