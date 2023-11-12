@Library('jenkins-shared-lib') _

pipeline {
    agent {
        label 'agent1'
    }

    stages {
        stage('Checkout') {
            steps {
                JavaPipeline.callCheckout()
            }
        }

        stage('Build') {
            steps {
                JavaPipeline.callBuild()
            }
        }

        stage('Test') {
            steps {
                JavaPipeline.callTest()
            }
        }

        stage('Publish Test Results') {
            steps {
                JavaPipeline.callPublishTestResults()
            }
        }

        stage('Build Docker Image') {
            steps {
                JavaPipeline.callBuildDockerImage()
            }
        }
    }
}
