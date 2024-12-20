from fastapi.testclient import TestClient
from app.main import app

client = TestClient(app)

def test_serve_index_page():
    response = client.get("/")
    assert response.status_code == 200
    assert response.headers["content-type"] == "text/html; charset=utf-8"

def test_serve_hello_page():
    response = client.get("/hello")
    assert response.status_code == 200
    assert response.json() == {"message": "Hello from router"}
