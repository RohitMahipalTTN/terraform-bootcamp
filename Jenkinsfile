pipeline {
    agent {
	label{
		label "lemp-server"
		}
	}

    stages{
        stage('deploy Architecture in AWS'){
            steps{
		sh 'chmod +x deploy.sh'
                sh './deploy.sh'
            }
        }
    }
    

}
