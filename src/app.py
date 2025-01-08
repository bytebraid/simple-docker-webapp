from flask import Flask, jsonify
from tools.logs import get_logger
from decouple import config

app = Flask(__name__)
PORT = config("PORT", default="11000")
logging = get_logger(Path(__file__).name)


@app.route("/hello", methods=["GET"])
def hello_world():
    """Returns a hello string in JSON format. Ideally these docstrings
    would be compiled with a documentation tool such as readthedocs.io...
    """
    logging.info("Hello world called")
    return jsonify(
        {"message": "hello world - visit https://github.com/bytebraid/simple-docker-webapp"}
    )


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=PORT)
