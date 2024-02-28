pipeline{
    agent none
    environment{
        ENV_BUILD = 'Build value'
        ENV_TEST = 'Test value'
    }
    parameters{
        string(name:'PARAM_STRING', defaultValue:'input_param',description:'This is a String Parameter')
    }
    triggers{
        cron('*****')
    }
    stages{
        stage('Build'){
            agent {
                label 'slave1'
            }
            steps{
                sh '''
                sleep 5
                echo "This is stage Build"
                echo "Running in slave1 executor"
                echo $ENV_BUILD
                echo $PARAM_STRING
                '''
            }
        }
        stage('Test'){
            agent{ 
            label 'slave2'
            }
            steps{
                sh '''
                sleep 5
                echo "This is stage Test"
                echo "Running in slave2 executor"
                '''
                script{
                    echo "${env.ENV_TEST}"
                    echo "${params.PARAM_STRING}"
                }
            }
        }
        stage('Deploy'){
            agent any
            environment{
                ENV_DEPLOY = 'Deploy value'
            }
            steps{
                sh '''
                sleep 5
                echo "This is stage Deploy"
                echo "Running in random executor"
                echo $ENV_DEPLOY
                '''
            }
        }
        }
    }