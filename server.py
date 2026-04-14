from flask import Flask, send_from_directory, request, jsonify
import subprocess

app = Flask(__name__, static_folder="static", static_url_path="")

# состояние микрофона (по умолчанию выключен)
mic_enabled = False

@app.route('/')
def index():
    return send_from_directory(app.static_folder, "index.html")

@app.route('/toggle', methods=['POST'])
def toggle():
    global mic_enabled

    mic_enabled = not mic_enabled

    if mic_enabled:
        subprocess.Popen(["powershell", "-File", "mic_2.ps1"])
    else:
        subprocess.Popen(["powershell", "-File", "mic_1.ps1"])

    return {"mic": mic_enabled}

@app.route('/status')
def status():
    return jsonify({"mic": mic_enabled})

@app.route('/<path:path>')
def static_files(path):
    return send_from_directory(app.static_folder, path)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)