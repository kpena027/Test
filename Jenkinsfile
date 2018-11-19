pipeline {
    agent any

    stage("Checkout") {
        steps {
            git 'https://github.com/kpena027/Test.git'
        }
    }
    stage("Build") {
        steps {
            // Build container using Jenkins build # as tag
            def container = docker.build("simple-flask:${env.BUILD_ID}")
        }
    }
    stage("Push") {
        steps {
            // Create credentials and use here to push to Docker Hub
            // Custom registry can be used here as well
            withDockerRegistry([url: "", credentialsId: "123456"]) {
                container.push()
            }
        }
    }
}