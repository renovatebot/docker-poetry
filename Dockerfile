FROM renovate/pip@sha256:9071034f2d67c0ef5211aa8bedd2a56191dcab7e95f8c440ffb11b4675817e96

ENV HOME=/home/ubuntu

ENV POETRY_VERSION=1.0.0

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python - --version ${POETRY_VERSION}

ENV PATH="${HOME}/.poetry/bin:$PATH"
RUN ${HOME}/.poetry/bin/poetry config virtualenvs.in-project false
