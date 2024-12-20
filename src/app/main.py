from fastapi import FastAPI
from fastapi.responses import FileResponse
from fastapi.staticfiles import StaticFiles
from app.routers.hello import router as hello_router

app = FastAPI()

# Register the hello router
app.include_router(hello_router, prefix="/hello")

# Serve static files
app.mount("/static", StaticFiles(directory="app/static"), name="static")


# Serve index.html on the root path
@app.get("/")
async def serve_index():
    return FileResponse("app/static/templates/index.html")


# Log registered routes
@app.on_event("startup")
async def log_routes():
    for route in app.routes:
        print(f"Ruta: {route.path} -> {route.name}")
