install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	pylint --disable=R,C,w1203,w0702 app.py

test:
	python -m pytest -vv --cov=app test_app.py

format:
	black *.py

all: install lint test format