FROM renovate/python@sha256:f73ad21f5078b6d31f8b6321d1fe7a98393067405c71fb50f6ea505caf82275a

RUN curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python

ENV PATH="/home/ubuntu/.poetry/bin:$PATH"
