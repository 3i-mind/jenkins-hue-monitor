timestamps {
ansiColor('xterm') {

node('docker') {

    //load from shared librarys
    settingVars()
    //pipeline
    

    stage('Build Docker Image ') {
        sh "docker build --rm -f "Dockerfile" -t jenkins-hue-monitor:latest ."
    }

    stage('Push To Registry') {
//        env.SERVICE_NAME="taken from git repo name"
        env.SERVICE_VERSION="1.0.0"
        pushDkrToArtifactory()
    }

}
}
}
