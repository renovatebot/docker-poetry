FROM renovate/pip@sha256:32bceb2e0efcd267777c5452c003ec0252bd5ae5505532d56b0d50a5b7f9ffb9

ENV HOME=/home/ubuntu

ENV POETRY_VERSION=1.0.0

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python - --version ${POETRY_VERSION}

ENV PATH="${HOME}/.poetry/bin:$PATH"
RUN ${HOME}/.poetry/bin/poetry config virtualenvs.in-project false
