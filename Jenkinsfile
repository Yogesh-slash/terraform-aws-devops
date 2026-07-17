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

        stage('Terraform Version') {
            steps {
                sh 'terraform version'
            }
        }

    }
}