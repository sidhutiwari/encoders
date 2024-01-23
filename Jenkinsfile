pipeline {
    agent any

tools {
        maven 'Maven 3.9.6'
        jdk 'Java 17.0.4.1'
    }
    environment {
        // Define environment variables
        TOMCAT_HOME = '/Users/sidhu/tomcat'
        PROJECT_DIR = '/Users/sidhu/eclipse-workspace/TestSpring'
        WAR_FILE_NAME = 'sidhu.war'
    }

    stages {
        stage('git') {
            steps {
               git branch: 'main', url: 'https://github.com/sidhutiwari/encoders.git'
            }
        }
        stage('maven') {
            steps {
               sh "mvn -f ${PROJECT_DIR}/pom.xml clean install"
            }
        }
        stage('build docker image') {
            steps {
            script
        {
    sh 'docker build -t latest/sidhu .'
         }
                 
            }
        }
    }
    post {
        success {
            echo 'Build and Deployment completed successfully.'
        }
        failure {
            echo 'The build or deployment failed.'
        }
    }
}
