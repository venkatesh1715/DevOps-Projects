pipeline {
    agent none

    environment {
        IMAGE_NAME = "venkatesh1503/capstone-project2"
        K8S_LABEL = "K8S-Master-Jenkins-Slave"
    }

    stages {
        stage('Clone Git Repo') {
            agent { label "${env.K8S_LABEL}" }
            steps {
                git 'https://github.com/venkatesh1715/capstone-project2.git'
            }
        }

        stage('Build & Push Docker Image') {
            agent { label "${env.K8S_LABEL}" }
            steps {
                script {
                    def imageTag = "${IMAGE_NAME}:${env.BUILD_NUMBER}"

                    // Update Dockerfile path here if not at repo root
                    sh "docker build -t ${imageTag} ."

                    withCredentials([usernamePassword(
                        credentialsId: 'b2bba9da-626d-4dca-bdf2-a7b3a58e2a0d',
                        usernameVariable: 'DOCKER_USER',
                        passwordVariable: 'DOCKER_PASS'
                    )]) {
                        sh 'echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin'
                    }

                    sh "docker push ${imageTag}"
                }
            }
        }

        stage('Deploy to Kubernetes') {
            agent { label "${env.K8S_LABEL}" }
            steps {
                script {
                    def imageTag = "${IMAGE_NAME}:${env.BUILD_NUMBER}"

                    // Inject new image tag into YAML if needed
                    sh "sed -i 's|image:.*|image: ${imageTag}|' deploy.yaml"

                    // Apply manifests (declarative)
                    sh 'kubectl apply -f deploy.yaml'
                    sh 'kubectl apply -f service.yaml'
                }
            }
        }
    }

    post {
        success {
            echo "✅ Pipeline completed successfully."
        }
        failure {
            echo "❌ Pipeline failed. Please check logs for details."
        }
        always {
            node("${env.K8S_LABEL}") {
                cleanWs()
            }
        }
    }
}
