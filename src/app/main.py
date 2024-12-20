import os
from fastapi import FastAPI
from fastapi.responses import FileResponse
from fastapi.staticfiles import StaticFiles
from app.routers.hello import router as hello_router

app = FastAPI()

# Register the hello router
app.include_router(hello_router, prefix="/hello")

# Set the correct paths for static files and templates
base_dir = os.path.dirname(os.path.abspath(__file__))
static_dir = os.path.join(base_dir, "static")
template_dir = os.path.join(static_dir, "templates")

# Serve static files
app.mount("/templates", StaticFiles(directory=template_dir), name="templates")


@app.get("/", response_class=FileResponse)
def serve_index():
    return os.path.join(template_dir, "index.html")

