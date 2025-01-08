from flask import Flask, jsonify
from tools.logs import get_logger
from decouple import config

app = Flask(__name__)
PORT = config("PORT", default="11000")
logging = get_logger()


@app.route("/hello", methods=["GET"])
def hello_world():
    logging.info("Hello world called")
    return jsonify({"message": "hello world"})


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=PORT)
