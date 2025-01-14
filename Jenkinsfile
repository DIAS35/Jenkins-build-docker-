pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/priximmo/ansible-jenkins.git'
            }
        }

        stage('Ansible') {
            steps {
                sh 'ansible-playbook -i hosts.yml playbook.yml'
            }
        }
    }
}
