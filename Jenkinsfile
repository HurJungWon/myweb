pipline {
    agent any
    stages {
        stage('git pull') {
            steps {
                git url: 'https://github.com/HurJungWon/myweb.git', branch: 'main'
            }
        }
        stage('docker build and push') {
            steps {
                sh '''
                docker build -t 192.168.1.10:8443/myweb .
                docker push 192.168.1.10:8443/myweb
                '''
            }
        }
        stage('k8s deploy'){
            steps {
                kubernetesDeploy(kubeconfigId: 'kubeconfig', config: '*.yaml')
            }
        }
    }
}