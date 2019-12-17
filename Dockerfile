FROM renovate/pip@sha256:8b93b1c6af5d3b6c8d1dbf6a4adb5bb0f3c13fd9e2888833aa00a1dfe6767beb

ENV POETRY_VERSION=1.0.0

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python - --version ${POETRY_VERSION}

ENV PATH="${HOME}/.poetry/bin:$PATH"
RUN poetry config virtualenvs.in-project false
