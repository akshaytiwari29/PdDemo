
pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/akshaytiwari29/PdDemo.git'

            }
        }
           stage('Build') {
            steps {
                // Run Maven on a Unix agent.
                sh "mvn -Dmaven.test.failure.ignore=true clean package"

                // To run Maven on a Windows agent, use
                // bat "mvn -Dmaven.test.failure.ignore=true clean package"
            }
        }
          stage('Deployment') {
                 steps {
			       	echo 'deployment started.....'
					        sh 'docker image build -t adminservice:1.0 .'
					        sh 'docker run -d  --net=host  --name=Admin-Service adminservice:1.0'
                    }
              
          }
    }
}
