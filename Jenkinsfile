pipeline{
    agent any
stages{
stage('pulling the code'){
    steps{
        git branch: 'main', 
        url: 'https://github.com/MalekFarhani/TestingJavaApp'
}}
stage('build'){
    steps{ 
        sh 'mvn clean package'
        sh 'mv target/*.war target/myweb.war'
        

}}
stage ('deploy-dev'){
    steps{
        sshagent(['Tomcat-new']) {
            sh """
                scp -o StrictHostKeyChecking=no -o ServerAliveInterval=60 target/myweb.war  malek@4.178.98.60:/opt/tomcat8/webapps/

                ssh malek@4.178.98.60 /opt/tomcat8/bin/shutdown.sh

                ssh malek@4.178.98.60 /opt/tomcat8/bin/startup.sh


            """

        }
    }
}
}
}


