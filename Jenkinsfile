node {
    def app

    stage('Clone repository') {
        checkout([
         $class: 'GitSCM',
         branches: [[name: '*/master']],
         doGenerateSubmoduleConfigurations: false,
         extensions: [[$class: 'CleanCheckout']],
         userRemoteConfigs: [[url: 'https://github.com/thanhnluu/SWE-645-WebApp']]
    ])
    }

    stage('Generate WAR file') {
        sh 'gradle war'
    }

    stage('Build image') {
        app = docker.build("swe645_hw1:latest")
    }

    stage('Push image') {
        app.push()
    }
}