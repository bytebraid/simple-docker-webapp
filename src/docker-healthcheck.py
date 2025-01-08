""" This class does a simple health check and returns a POSIX 
    status code, 0 if healthy, 1 if the app is not responding 
    correctly. Docker runs this healthcheck periodically to 
    ascertain if the container is behaving correctly. It can stop
    the container if the healthcheck fails, and restart if 
    a policy is defined.
"""

import urllib.request
import sys
from tools.logs import get_logger

logging = get_logger()

if __name__ == "__main__":
    try:
        with urllib.request.urlopen("http://127.0.0.1:11000/hello") as response:
            res = response.read()
            logging.info("Good health ping")
            sys.exit(0)
    except Exception:
        logging.exception("Bad response on health ping")
        sys.exit(1)
