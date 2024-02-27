pipeline{
    agent none
    environment{
        ENV_BUILD = 'Build value'
        ENV_TEST = 'Test value'
    }
    stages{
        stage('Build'){
            agent {
                label 'slave1'
            }
            steps{
                sh '''
                sleep 10
                echo "This is stage Build"
                echo "Running in slave1 executor"
                echo $ENV_BUILD
                '''
            }
        }
        stage('Test'){
            agent{ 
            label 'slave2'
            }
            steps{
                sh '''
                sleep 10
                echo "This is stage Test"
                echo "Running in slave2 executor"
                echo $ENV_TEST
                '''
            }
        }
        }
    }