ENV_NAME ?= ads-log-daemon-env
PYTHON := $(ENV_NAME)/bin/python
PIP := $(PYTHON) -m pip


initialize:
	if [ ! -d "$(ENV_NAME)" ]; then \
		python3 -m venv $(ENV_NAME); \
	fi

	$(PIP) install --upgrade pip
	$(PIP) install -r requirements.txt


run:
	bash ./run.sh


.PHONY: initialize run
