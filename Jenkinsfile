def pipelineContext = [:]
node {

   def registryProjet='registry.gitlab.com/xavki/presentations-jenkins'
   def IMAGE="${registryProjet}:version-${env.BUILD_ID}"

    stage('Clone') {
          checkout scm
    }

    def img = stage('Build') {
          docker.build("$IMAGE",  '.')
    }

    stage('Run') {
          img.withRun("--name run-$BUILD_ID -p 80:80") { c ->
            sh 'curl localhost'
          }
    }

    stage('Push') {
          docker.withRegistry('https://registry.gitlab.com', 'reg1') {
              img.push 'latest'
              img.push()
          }
    }

}



#node{
 #def app

  #  stage('Clone') {
    #    checkout scm
   # }
   # stage('Build image') {
    #    app = docker.build("badra/nginx")
   # }
   # stage('Run image') {
   #     docker.image('badra/nginx').withRun('-p 81:81') { c ->
    #    sh 'docker ps'
     #   sh 'curl localhost'
    #}
#
 #   }
#}                                                                                                                                                    
