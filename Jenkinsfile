pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/DIAS35/war-build-docker.git'
            }
        }

        stage('Maven package') {
            steps {
                sh 'mvn clean package'
            }
        }
    }
}
