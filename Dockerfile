# 1. Luam un Linux minimalist care are deja Python instalat
FROM python:3.10-slim

# 2. Ne mutam in folderul /app din interiorul containerului
WORKDIR /app

# 3. Copiem lista de cumparaturi si instalam dependentele
COPY requirements.txt .
RUN pip install -r requirements.txt

# 4. Copiem codul nostru de Python
COPY app.py .

# 5. Spunem lumii ca aplicatia asta asculta pe portul 5000
EXPOSE 5000

# 6. Comanda care ruleaza cand porneste cutia
CMD ["python", "app.py"]
