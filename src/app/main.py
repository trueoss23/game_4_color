from fastapi import FastAPI

app = FastAPI()


@app.post("/signup/")
def register(username: str, password: str):
    # Логика регистрации пользователя
    pass


@app.post("/login/")
def login(username: str, password: str):
    # Логика авторизации пользователя
    pass


@app.get("/game/{game_id}")
def get_game(game_id: int):
    # Логика получения информации об игре
    pass
