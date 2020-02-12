FROM renovate/pip@sha256:753f4ab74e59fa53a30ef598d7b52134a8ca7b85a3dee9db2e5a1f89bc0e5a6e

ENV HOME=/home/ubuntu

ENV POETRY_VERSION=1.0.0

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python - --version ${POETRY_VERSION}

ENV PATH="${HOME}/.poetry/bin:$PATH"
RUN ${HOME}/.poetry/bin/poetry config virtualenvs.in-project false
