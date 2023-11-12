@Library('jenkins-shared-lib') _

pipeline {
    agent {
        label 'agent1'
    }

    stages {
        stage('Checkout') {
            steps {
                script {
                    JavaPipeline.callCheckout()
                }
            }
        }

        stage('Build') {
            steps {
                script {
                    JavaPipeline.callBuild()
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    JavaPipeline.callTest()
                }
            }
        }

        stage('Publish Test Results') {
            steps {
                script {
                    JavaPipeline.callPublishTestResults()
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    JavaPipeline.callBuildDockerImage()
                }
            }
        }
    }
}
