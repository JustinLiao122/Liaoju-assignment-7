# Makefile for setting up and running the Flask app

# Default target to run the app
run: install
	python app.py

# Target to install required packages
install:
	pip install -r requirements.txt

# Clean up cache and temporary files
clean:
	rm -rf __pycache__ *.pyc

# Target to setup virtual environment and install requirements
setup:
	python -m venv venv
	./venv/bin/pip install -r requirements.txt

# Run the app using virtual environment
run_venv: setup
	./venv/bin/python app.py
