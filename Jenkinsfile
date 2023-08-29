node{
  def app

    stage('Clone') {
        checkout scm
    }
    stage('Build image') {
        app = docker.build("badra/nginx")
    }
    stage('Run image') {
        docker.image('badra/nginx').withRun('-p 81:81') { c ->
        sh 'docker ps'
        sh 'curl localhost'
    }

    }
}                                                                                                                                                    
