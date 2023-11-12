@Library('mySharedLibrary') _

pipeline {
    agent { label 'agent1' }

    stages {
        stage('Checkout') {
            steps {
                myPipeline.checkoutCode()
            }
        }

        stage('Build') {
            steps {
                myPipeline.buildJavaApp()
            }
        }

        stage('Test') {
            steps {
                myPipeline.runTests()
            }
        }

        stage('Publish Test Results') {
            steps {
                myPipeline.publishTestResults()
            }
        }

        stage('Build Docker Image') {
            steps {
                myPipeline.buildDockerImage()
            }
        }
    }
}
