@Library('jenkins-shared-lib') _

pipeline {
    agent {
        label 'agent4'
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
                // dir('workspace/Java-app') {
                  script {
                    myPipeline.callBuildDockerImage()
                // }
              }
            }
        }
    }
}
