pipeline {
    agent any

    environment {
        RESULTS_DIR = "results"
        VENV = "/opt/robotenv"
    }

    stages {
        stage('Cleanup') {
            steps {
                echo "Cleaning up old results..."
                sh "rm -rf ${RESULTS_DIR}"
                sh "mkdir -p ${RESULTS_DIR}"
            }
        }

        stage('Activate Python Env') {
            steps {
                sh """
                . ${VENV}/bin/activate
                python --version
                robot --version
                """
            }
        }

        stage('Check Browser') {
            steps {
                sh """
                google-chrome --version || chromium --version
                chromedriver --version
                """
            }
        }

        stage('Run Robot Tests') {
            steps {
                sh """
                . ${VENV}/bin/activate
                robot --outputdir ${RESULTS_DIR} tests/
                """
            }
        }
    }

    post {
        always {
            step([$class: 'RobotPublisher',
                outputPath: "${RESULTS_DIR}",
                outputFileName: 'output.xml',
                reportFileName: 'report.html',
                logFileName: 'log.html',
                disableReports: false,
                passThreshold: 100.0,
                unstableThreshold: 80.0
            ])

            archiveArtifacts artifacts: "${RESULTS_DIR}/*.*", allowEmptyArchive: true
        }
    }
}
