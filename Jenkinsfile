@Library('jenkins-shared-lib') _

pipeline {
    agent {
        label 'agent1'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                script {
                    buildJavaApplication()
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    testJavaApplication()
                }
            }
        }

        stage('Publish Test Results') {
            steps {
                script {
                    publishTestResults()
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    buildDockerImage()
                }
            }
        }
    }
}
