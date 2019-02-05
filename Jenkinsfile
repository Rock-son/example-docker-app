node {
    def app

    stage('Clone repository') {
        checkout scm
    }
    stage('Build image') {
        app = docker.build('rokson5/example-app')
    }
    stage('test') {
        // run command in the container that we just built
        app.inside { 
            sh 'npm test'
        }
    }
    stage('Push image') {
        docker.withRegistry('https://registry.hub.docker.com ', 'docker-hub-credentials') {
            app.push('latest')
        }
    }
}