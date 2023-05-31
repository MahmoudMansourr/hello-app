pipeline {
    agent {
        label 'slave'
    }

    stages {
        
        stage('image building') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker', passwordVariable: 'MYPASS', usernameVariable: 'MYUSER')]) {
                    sh """ 
                    docker login -u \${MYUSER} -p \${MYPASS}
                    docker build . -t myapp:1
                    docker tag myapp:1 mahmoudmansourr/myapp:1
                    docker push mahmoudmansourr/myapp:1
                    """
                }
            }
        }

         stage('app deployment') {
            steps {
               withCredentials([usernamePassword(credentialsId: 'docker', passwordVariable: 'MYPASS', usernameVariable: 'MYUSER')]) {
                    sh """
                    docker login -u \${MYUSER} -p \${MYPASS}
                    kubectl delete deployment --all -n express-app
                    kubectl apply -f namespace.yaml
                    kubectl apply -f deploy.yaml
                    kubectl apply -f load.yaml
                    """
               }
            }
        }


    
    }
}