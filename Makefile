install:
	pip install --upgrade pip && \
		pip install -r Requirements.txt

format:
	black *.py
	
lint:
	pylint --disable=R, C Hello.py
	
test:
	python -m pytest -vv cov=Hello test_Hello.py

all:
	install lint test