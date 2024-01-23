pipeline {
    agent any
    
    environment {
        // Define environment variables
        MAVEN_HOME = '/Users/sidhu/apache-maven-3.9.6'
        TOMCAT_HOME = '/Users/sidhu/tomcat'
        PROJECT_DIR = '/Users/sidhu/eclipse-workspace/TestSpring'
        WAR_FILE_NAME = 'TestSpring-0.0.1-SNAPSHOT.war'
    }

    stages {
        stage('git') {
            steps {
               git branch: 'main', url: 'https://github.com/sidhutiwari/encoders.git'
            }
        }
        stage('maven') {
            steps {
               sh "${MAVEN_HOME}/bin/mvn -f ${PROJECT_DIR}/pom.xml clean install"
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("my-springboot-app:${env.BUILD_ID}")
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    docker.run("my-springboot-app:${env.BUILD_ID}")
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
