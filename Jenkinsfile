pipeline {
    agent any
    environment {
        PATH = "/root/buildtool/apache-maven-3.9.4/bin:$PATH"
    }
    stages {
        stage('scm') {
            steps {
                git 'https://github.com/marotigit/project.git'
            }
        }
        stage('deploy') {
            steps {
                sh "mvn clean install"
            
               }
            }
         stage('ansible-playbook') {
            steps {
                
             ansiblePlaybook installation: 'ansible', inventory: 'inventory file', playbook: 'ansible.yaml'
                
            }
        }  
    }
}
