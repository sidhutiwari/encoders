pipeline {
    agent any


    environment {
        // Define environment variables
        MAVEN_HOME = '/Users/sidhu/maven'
        TOMCAT_HOME = '/Users/sidhu/tomcat'
        PROJECT_DIR = '/Users/sidhu/eclipse-workspace/TestSpring'
        WAR_FILE_NAME = 'sidhu.war'
        DOCKERHUB_USERNAME = 'sidhu01'
        IMAGE_NAME = 'encoders'
        TAG = 'latest'
        DOCKER_IMAGE = 'my-spring-boot-app:latest'
    }

    stages {
       
        stage('build docker image') {
            steps {
            script
                  {
              
                       sh "/usr/local/bin/docker build -t ${DOCKER_IMAGE} -f Dockerfile ."
                  }
                 
                 }
                 }
        stage('deploy image') {
            steps {
           script {
                    // Login to Docker Hub
                    withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', usernameVariable: 'sidhu01', passwordVariable: 'Ss##120721')]) {
                        sh "echo ${PASSWORD} | /usr/local/bin/docker login -u ${USERNAME} --password-stdin"
                    }
                    // Push the Docker image to Docker Hub
                    sh "/usr/local/bin/docker push ${DOCKERHUB_USERNAME}/${IMAGE_NAME}:${TAG}"
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
