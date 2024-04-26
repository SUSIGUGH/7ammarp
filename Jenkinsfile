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
        
        stage('Terrafrom execution'){
            steps{
                sh 'cd terraform && terraform init && terraform apply -auto-approve'
            }
        }

        
        stage('Docker Image Creation'){
            steps{
                sh 'echo "Creating Docker Image"'
                sh 'ls -ltr'
            }
        }

      stage('Run PHP Docker Container'){
            steps{
                sh 'sudo docker run -dit --name=nginx01 -p8081:80 nginx'
            }
        }
        
            stage('Send Docker Image to Docker Hub'){
            steps{
                sh 'echo "Releasing to Docker Hub"'
                sh 'ls -ltr'
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

