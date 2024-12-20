from fastapi import APIRouter
from fastapi.responses import FileResponse
import os

router = APIRouter()

@router.get("")
def hello():
    file_path = os.path.join("app", "static", "templates", "hello.html")
    return FileResponse(file_path)
