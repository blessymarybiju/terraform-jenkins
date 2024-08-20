pipeline {
    agent any

    environment {
        TF_VAR_location = 'East US'
        TF_VAR_role_name = 'myCustomRole'
        TF_VAR_policy_name = 'myCustomPolicy'
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout code from version control
                checkout scm
            }
        }

        stage('Terraform Init') {
            steps {
                // Initialize Terraform
                sh 'terraform init'
            }
        }

        stage('Terraform Validate') {
            steps {
                // Validate Terraform configuration
                sh 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                // Generate and review the Terraform execution plan
                sh 'terraform plan -out=tfplan'
            }
        }
    }
}
