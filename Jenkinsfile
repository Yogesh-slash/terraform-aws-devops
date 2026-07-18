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

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        } 
    }
}