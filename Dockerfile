FROM python:3.10
RUN pip install poetry
WORKDIR /app
COPY pyproject.toml /app/
RUN poetry lock
RUN poetry install

ENTRYPOINT ["poetry", "run", "newhelm"]
