pipeline {
    agent {
        label 'ec2-agent'
    }

    stages {

        stage('Check Agent') {
            steps {
                sh 'echo Running on Dynamic EC2 Agent'
                sh 'hostname'
                sh 'whoami'
                sh 'java -version'
            }
        }

        stage('Checkout Source') {
            steps {
                checkout scm
            }
        }

        stage('Terraform Debug') {
            steps {
                sh 'whoami'
                sh 'pwd'
                sh 'echo $PATH'
                sh 'which terraform || true'
                sh 'ls -l /usr/local/bin/terraform || true'
                sh 'terraform version || true'
            }
        }
    }
}