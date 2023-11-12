@Library('jenkins-shared-lib') _

pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                myPipeline.checkoutCode()
            }
        }

        stage('Build Java App') {
            steps {
                myPipeline.buildJavaApp()
            }
        }

        stage('Run Tests') {
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
