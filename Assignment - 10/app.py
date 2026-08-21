from flask import Flask
from datetime import datetime
import os

app = Flask(__name__)

DATA_DIR = "/app/data"
LOG_FILE = os.path.join(DATA_DIR, "greeting_log.txt")

@app.route("/")
def home():
    os.makedirs(DATA_DIR, exist_ok=True)

    with open(LOG_FILE, "a") as f:
        f.write(f"Request received at {datetime.now()}\n")

    with open(LOG_FILE, "r") as f:
        logs = f.read()

    return f"""
    <h1>Hello, Docker!</h1>
    <h2>Request Log</h2>
    <pre>{logs}</pre>
    """

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)