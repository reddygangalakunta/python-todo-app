# Python To-Do Web Application

This is a simple web-based to-do list application built with Flask.

## Features

- Add new to-do items
- Delete existing to-do items
- Simple, clean web interface

## Prerequisites

- Python 3.12 or higher
- pip (Python package manager)

## Setup Instructions

1. **Clone or Download the Project**

   - Place the files in a directory, e.g., `Python_app`.

2. **Create a Virtual Environment (Recommended)**

   - Open a terminal in the project directory.
   - Run:
     ```powershell
     python -m venv .venv
     .venv\Scripts\activate
     ```

3. **Install Dependencies**

   - Run:
     ```powershell
     pip install -r requirements.txt
     ```

4. **Run the Application (Locally)**

   - Start the Flask server:
     ```powershell
     python app.py
     ```
   - If you encounter a port error, try:
     ```powershell
     python app.py --port=5050
     ```

5. **Run the Application with Docker**

   - Build the Docker image:
     ```powershell
     docker build -t python-todo-app .
     ```
   - Run the Docker container:
     ```powershell
     docker run -p 5000:5000 python-todo-app
     ```
   - Access the app at [http://localhost:5000](http://localhost:5000)

## File Structure

```
Python_app/
│   app.py
│   requirements.txt
│   README.md
└───templates/
        index.html
```

## Troubleshooting

- If you get a socket/port error, make sure no other app is using the port, or change the port in `app.py`.
- For any issues, ensure your virtual environment is activated and dependencies are installed.

## License

This project is open source and free to use.
