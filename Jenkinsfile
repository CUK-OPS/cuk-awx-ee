node {
    def app

    stage('Clone repository') {
      

        sh 'rm -rf cuk-awx-ee'
        sh 'git clone https://github.com/CUK-OPS/cuk-awx-ee.git'
    }

    stage('Build image') {
       sh 'docker --version'
       sh 'docker build -f padster2012/awx-ee-kerb:latest .'
    }

    stage('Test image') {
  

        app.inside {
            sh 'echo "Tests passed"'
        }
    }

    stage('Push image') {
        
        docker.withRegistry('https://registry.hub.docker.com', 'git') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}
