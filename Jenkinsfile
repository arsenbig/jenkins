@Library('jenkins-shared-lib') _

pipeline {
    agent 

    stages {
        stage('Checkout') {
            steps {
                // Checkout the latest code from the source control repository
                checkout scm
            }
        }

        stage('Build') {
            steps {
                // Compile the Java application using Maven
                 sh 'mvn clean isntall'
            }
        }

        stage('Test') {
            steps {
                // Run unit tests
                sh 'mvn test'
            }
        }

        stage('Publish Test Results') {
            steps {
                // Archive and publish test results
                junit 'target/surefire-reports/*.xml'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Construct a Docker image for the compiled Java application
                script {
                    docker.build("java-app:latest")
                }
            }
        }
    }
}