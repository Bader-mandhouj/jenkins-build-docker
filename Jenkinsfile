def pipelineContext = [:]
node{

   def registryProjet='registry.gitlab.com/xavki/presentations-jenkins'
   def IMAGE="${registryProjet}:version-${env.BUILD_ID}"

    stage('Clone') {
          checkout scm
    }

    def img = stage('Build') {
          docker.build("$IMAGE",  '.')
    }

    stage('Run') {
          img.withRun("--name run-$BUILD_ID -p 81:81") { c ->
            sh 'curl localhost'
          }
    }

    stage('Push') {
          docker.withRegistry('https://github.com/Bader-mandhouj/Docker-registry.git', 'reg1') {
              img.push 'latest'
              img.push()
          }
    }

}
                                                                                                                                                    
