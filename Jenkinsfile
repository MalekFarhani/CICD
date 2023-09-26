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
        sh 'pwd'
        sh 'ls'
        sh 'cd target/'
        sh 'ls'

}}
}
}


