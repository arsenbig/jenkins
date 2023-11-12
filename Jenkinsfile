// Jenkinsfile

@Library('mySharedLibrary') _

def pipelineInstance = myPipeline()

pipeline {
    agent { label 'agent1' }

    stages {
        stage('Checkout') {
            steps {
                script {
                    pipelineInstance.checkoutCode()
                }
            }
        }

        stage('Build') {
            steps {
                script {
                    pipelineInstance.buildJavaApp()
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    pipelineInstance.runTests()
                }
            }
        }

        stage('Publish Test Results') {
            steps {
                script {
                    pipelineInstance.publishTestResults()
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    pipelineInstance.buildDockerImage()
                }
            }
        }
    }
}
