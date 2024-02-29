pipeline{
    agent none
    environment{
        ENV_BUILD = 'Build value'
        ENV_TEST = 'Test value'
    }
    /*parameters{
        string(name:'PARAM_STRING', defaultValue:'input_param',description:'This is a String Parameter')
    }*/
    triggers{
        //cron('* 23 * * *')
        pollSCM('* * * * *')
    }
    stages{
        stage('Build'){
            agent {
                label 'slave1'
            }
            steps{
                catchError(buildResult:'SUCCESS',stageResult:'FAILURE'){
                sh '''
                sleep 5
                echo "This is stage Build"
                echo "Running in slave1 executor"
                echo $ENV_BUILD
                exit 1
                '''
                }
            }
        }
        stage('Parallel Test'){
            agent{ 
            label 'slave2'
            }
            stage('Test A'){
            steps{
                sh '''
                sleep 5
                echo "This is stage Test"
                echo "Running in slave2 executor"
                '''
            }
            }
            stage('Test B'){
                script{
                    echo "${env.ENV_TEST}"
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