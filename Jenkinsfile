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

        
        stage('MYSQL Docker Image Creation and Run'){
            steps{
                sh 'echo "Creating Docker Image"'
		sh 'cd 7ammarp/docker/mysql && sudo docker build -t susimysql .'
		sh 'sudo docker stop mysql01 && sudo docker rm mysql01'
		sh 'sudo docker run -dit --name mysql01 susimysql'
		sh 'sudo docker ps | grep susimysql'
                sh 'echo "Container created"'
            }
        }

      stage('Mongodb'){
            steps{
                sh 'sudo docker run -dit --name=mongodb1 -p27017:27017 mongo'
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

