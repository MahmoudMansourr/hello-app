pipeline {
    agent {
        label 'slave'
    }

    stages {
        
        stage('image building') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker', passwordVariable: 'DOCKERPASS', usernameVariable: 'DOCKERENAME')]) {
                    sh """ 
                    docker login -u \${MYUSER} -p \${MYPASS}
                    docker build . -t myapp:1
                    docker tag myapp mahmoudmansourr/myapp:1
                    docker push mahmoudmansourr/myapp:1
                    """
                }
            }
        }
    
    }
}