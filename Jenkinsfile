pipeline {
    agent any


    environment {
        // Define environment variables
        MAVEN_HOME = '/Users/sidhu/maven'
        TOMCAT_HOME = '/Users/sidhu/tomcat'
        PROJECT_DIR = '/Users/sidhu/eclipse-workspace/TestSpring'
        WAR_FILE_NAME = 'sidhu.war'
        DOCKERHUB_USERNAME = 'sidhu01'
        IMAGE_NAME = 'springapp'
        TAG = 'latest'
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
        stage('build docker image') {
            steps {
            script
                  {
                sh "/usr/local/bin/docker build -t ${DOCKERHUB_USERNAME}/${IMAGE_NAME}:${TAG} ."
                  }
                 
                 }
                 }
        stage('deploy image') {
            steps {
           script {
                    // Login to Docker Hub
                    withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', usernameVariable: 'sidhu01', passwordVariable: 'Ss##120721')]) {
                        sh "echo ${PASSWORD} | docker login -u ${USERNAME} --password-stdin"
                    }
                    // Push the Docker image to Docker Hub
                    sh "docker push ${DOCKERHUB_USERNAME}/${IMAGE_NAME}:${TAG}"
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
