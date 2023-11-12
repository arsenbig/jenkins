@Library('mySharedLibrary') _

pipeline {
    agent { label 'agent1' }

    stages {
        stage('Checkout') {
            steps {
                script {
                    myPipeline.checkoutCode()
                }
            }
        }

        stage('Build') {
            steps {
                script {
                    myPipeline.buildJavaApp()
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    myPipeline.runTests()
                }
            }
        }

        stage('Publish Test Results') {
            steps {
                script {
                    myPipeline.publishTestResults()
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    myPipeline.buildDockerImage()
                }
            }
        }
    }
}
