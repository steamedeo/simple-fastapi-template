#! /bin/bash
uvicorn api.app:app --host 0.0.0.0 --port 8080 --reload --debug --workers 3