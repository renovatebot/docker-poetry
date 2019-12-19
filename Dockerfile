FROM renovate/pip@sha256:b2d36ceccbcaaed1b9b03c3febba9e7756be6340d8bfd25aad6494243f1d4058

ENV HOME=/home/ubuntu

ENV POETRY_VERSION=1.0.0

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python - --version ${POETRY_VERSION}

ENV PATH="${HOME}/.poetry/bin:$PATH"
RUN ${HOME}/.poetry/bin/poetry config virtualenvs.in-project false
