pipeline {
  agent any

  stages {
    stage('Clone Repo') {
      steps {
        git 'https://github.com/your-org/your-app.git'
      }
    }
    
    stage('Build') {
      steps {
        sh 'mvn clean package'
      }
    }

    stage('Deploy with Ansible') {
      steps {
        sh 'ansible-playbook ansible/deploy.yml'
      }
    }
  }
}
