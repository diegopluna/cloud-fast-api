from fastapi import FastAPI

app = FastAPI()


@app.post("/auth/me")
def get_me():
    return {"user": {"id": 1, "name": "diego1"}, "ping": "pong"}
