node {
    stage('Checkout') {
      checkout scm
    }
    def backend
    def frontend

    stage('Build') {
      parallel(
        Backend: {
          backend = docker.build('saraswat2385/backend','./docker')
        },
        Frontend: {
          frontend = docker.build('saraswat2385/frontend','-f ./docker/Dockerfile1 ./docker')
        }
      )
    }
    stage('Publish') {
        parallel(
          Backend: {
            docker.withRegistry('https://registry.hub.docker.com/saraswat2385', 'docker') {
              backend.push("${env.BUILD_NUMBER}")
              backend.push("latest")
            }
          },
          Frontend: {
            docker.withRegistry('https://registry.hub.docker.com/saraswat2385', 'docker') {
              frontend.push("${env.BUILD_NUMBER}")
              frontend.push("latest")
            }
          }
        )
    }
}
