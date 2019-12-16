FROM renovate/pip@sha256:8b93b1c6af5d3b6c8d1dbf6a4adb5bb0f3c13fd9e2888833aa00a1dfe6767beb

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python

ENV PATH="/home/ubuntu/.poetry/bin:$PATH"
RUN poetry config virtualenvs.create false
