@Library('jenkins-shared-lib') _

pipeline {
    agent {
        label 'agent1'
    }

    tools {
        maven 'Maven 3.8.4'
    }

    stages {
        stage('Checkout') {
            steps {
                script {
                    myPipeline.callCheckout()
                }
            }
        }

        stage('Build') {
            steps {
                script {
                    myPipeline.callBuild()
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    myPipeline.callTest()
                }
            }
        }

        stage('Publish Test Results') {
            steps {
                script {
                    myPipeline.callPublishTestResults()
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    myPipeline.callBuildDockerImage()
                }
            }
        }
    }
}
