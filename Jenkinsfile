timestamps {
ansiColor('xterm') {

node('docker') {

    //load from shared librarys
    settingVars()
    //pipeline
    // env.SERVICE_NAME and env.SERVICE_VERISON set above, taken from repo name and version fro ruby.json file
       
    stage('Build Docker Image ') {
        sh "docker build --rm -f Dockerfile -t jenkins-hue-monitor:${env.SERVICE_VERSION} ."
    }

    stage('Push To Registry') {
        pushDkrToArtifactory()
    }

    stage('CleanUp'){
        sh "docker system prune -f"
    }

}
}
}
