pipeline{
    agent any
    stages{
        stage('Pull from GitHub'){
            steps{
                sh 'rm -Rf 7ammarp'
                sh 'pwd'
                sh 'git clone -b master https://github.com/SUSIGUGH/7ammarp.git'
                sh 'ls -ltr 7ammarp'
                sh 'mkdir terraform -p'
                sh 'cp -r 7ammarp/terraform/*.tf terraform/'
            }
        }
        

        
            stage('Node Application Image Creation'){
            steps{
                sh 'cd 7ammarp/docker/node && sudo docker build -t nodecust .'
                sh 'sudo docker run -dit --name=nodecust01 -p3000:3000 nodecust'
            }
        }
        
            stage('Deploy to Kubernetes'){
            steps{
                sh 'echo "Deploying to Test"'
                sh 'ls -ltr'
            }
        }
        
        
        
        
    }
}

