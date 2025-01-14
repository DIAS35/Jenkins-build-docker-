


















node {
    def registryProjet = 'registry.gitlab.com/xavki/presentations-jenkins'
    def IMAGE = "${registryProjet}:version-${env.BUILD_ID}"

    stage('Clone') {
        git 'https://github.com/DIAS35/jbuild.git'
    }

    def img
    stage('Build') {
        img = docker.build("$IMAGE", '.')
    }

    stage('Run') {
        img.withRun("--name run-${env.BUILD_ID} -p 80:80") { c ->
            sh 'docker logs run-${env.BUILD_ID}'
            sh 'curl localhost'
        }
    }

    stage('Push') {
        docker.withRegistry('https://registry.gitlab.com', 'reg1') {
            img.push 'latest'
        }
    }
}






