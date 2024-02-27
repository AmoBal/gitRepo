pipeline{
    agent none
    stages{
        stage('Build'){
            agent label 'slave1'
            steps{
                sh '''
                echo "This is stage Build"
                echo "Running in slave1 executor"
                '''
            }
        }
        stage('Test'){
            agent label 'slave2'
            steps{
                sh '''
                echo "This is stage Test"
                echo "Running in slave2 executor"
                '''
            }
        }
        }
    }