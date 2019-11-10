#!groovy

node {
    stage 'Checkout'
        checkout scm
    stage 'Steup'
        sh 'npm config set registry http://registry.npmjs.org'
        sh 'npm install'
    stage 'Mocha test'
        sh './node_modules/mocha/bin/mocha'
    stage 'CleanUp'
        echo 'purge and cleanup'
        sh 'npm purge'
        sh 'rm node_modules -rf'
}
