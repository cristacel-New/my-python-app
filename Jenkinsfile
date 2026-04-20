pipeline {
    agent any

    stages {
        stage('Preluare Cod din Seif') {
            steps {
                echo 'Descarcam codul nou...'
                git branch: 'main', url: 'https://github.com/cristacel-New/my-python-app.git'
            }
        }
        
        stage('🛡️ DevSecOps: Scanare Secrete') {
            steps {
                echo 'Căutăm parole uitate în codul Python...'
                // Acest script cauta cuvintele "parola" sau "secret" in app.py
                // Daca gaseste ceva, executa 'exit 1' care declanseaza o alarma si opreste Jenkins
                sh '''
                    if grep -qi "parola" app.py || grep -qi "secret" app.py; then
                        echo "🚨 EROARE FATALĂ: Scurgere de informații! S-a detectat o parolă în cod!"
                        exit 1 
                    else
                        echo "✅ Cod curat. Nu au fost găsite parole."
                    fi
                '''
            }
        }
        
        stage('Construire si Lansare K8s') {
            steps {
                echo 'Lansăm cu succes în producție!'
            }
        }
    }
}
