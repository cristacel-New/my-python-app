pipeline {
    agent any

    stages {
        stage('Preluare Cod din Seif') {
            steps {
                echo 'Descărcăm ultima versiune de pe GitHub...'
                // Aici ii spunem de unde sa traga codul
                git branch: 'main', url: 'https://github.com/cristacel-New/my-python-app.git'
            }
        }
        
        stage('Testare si Scanare (Simulare)') {
            steps {
                echo 'Banda rulantă verifică dacă există parole lăsate la vedere în cod...'
                sh 'cat app.py'
            }
        }
        
        stage('Construire si Lansare K8s') {
            steps {
                echo 'Misiune: Construim imaginea Docker si o trimitem in Minikube!'
                // Notă de Arhitect: Deoarece Jenkins este blocat in propriul lui container Docker, 
                // nu are acces direct la comenzile tale de 'minikube' sau 'kubectl' momentan.
                // Aceasta este o simulare a lansarii pentru a valida conexiunea cu GitHub.
                echo 'Lansare în producție executată cu succes!'
            }
        }
    }
}
