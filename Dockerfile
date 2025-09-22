FROM python:3.13-slim

COPY --from=ghcr.io/astral-sh/uv:latest /uv /bin/uv

COPY . ./app


WORKDIR /app

RUN uv sync --locked --no-cache

CMD ["/app/.venv/bin/fastapi", "run", "app/main.py", "--port", "3000"]

