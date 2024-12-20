# FastAPI Project Template

**FastAPI Project Template** is a base structure for creating applications using FastAPI. It supports running either in a virtual environment or in Docker containers and provides examples of routing and static file handling.

---

## Project Structure

```plaintext
.
├── README.md                # Project documentation
├── docker-compose.yml       # Docker Compose configuration
├── setup_venv.sh            # Script to set up and run the virtual environment
├── src/                     # Project source code
│   ├── Dockerfile           # Docker configuration for the backend
│   ├── app/
│   │   ├── main.py          # FastAPI server entry point
│   │   ├── routers/
│   │   │   ├── __init__.py  # Routes package initializer
│   │   │   └── hello.py     # Example route
│   │   └── static/          # Static files and HTML templates
│   │       ├── scripts.js   # JavaScript for the frontend
│   │       └── templates/
│   │           ├── hello.html # "Hello" example page
│   │           └── index.html # Homepage
│   └── requirements.txt     # Python dependencies
├── start_docker.sh          # Script to launch Docker Compose
└── start_venv.sh            # Script to run the virtual environment
```

---

## Setup

### Running in a Virtual Environment (Without Docker)

1. **Prerequisites:**
   - Ensure **Python 3.9** or higher is installed.

2. **Use the `start_venv.sh` Script:**

   From the project's root directory, execute:

   ```bash
   ./setup_venv.sh
   ```

   This script:
   - Creates and activates a virtual environment.
   - Installs dependencies from `src/requirements.txt`.
   - Starts the FastAPI server at `http://127.0.0.1:8001`.

3. **Access the Application:**

   - Open your browser at `http://127.0.0.1:8001` to see the homepage (`index.html`).
   - Navigate to `/hello` to view the basic "Hello" example.

4. **Stop the Server:**

   Press `Ctrl + C` in the terminal to stop the server.

---

### Running with Docker

1. **Prerequisites:**
   - Ensure **Docker** and **Docker Compose** are installed.

2. **Use the `start_docker.sh` Script:**

   From the project's root directory, execute:

   ```bash
   ./start_docker.sh
   ```

   This script automates the steps above:
   - Builds the Docker image.
   - Starts the container using `docker-compose`.

4. **Access the Application:**

   Open your browser at `http://localhost:8001`.

5. **Stop the Project:**

   To stop and remove containers, you can either:
   - Run the command:
     ```bash
     docker-compose down
     ```
   - Or stop the Docker Compose process started by `start_docker.sh` by pressing `Ctrl + C` in the terminal.

---

## Technologies Used

- **Backend:** FastAPI
- **Frontend:** HTML and JavaScript (served as static files)
- **Containerization:** Docker and Docker Compose

---

This template provides a flexible and scalable foundation for building FastAPI applications, offering the choice of virtual environments or Docker-based workflows.

🎉 Happy coding! 🎉

