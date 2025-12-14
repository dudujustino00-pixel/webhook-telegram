from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route("/")
def home():
    return "Webhook online 🚀", 200

@app.route("/webhook", methods=["POST"])
def webhook():
    data = request.json
    print("📥 Webhook recebido:", data)

    # aqui depois você chama o bot Telegram
    return jsonify({"status": "ok"}), 200

if __name__ == "__main__":
    app.run()
