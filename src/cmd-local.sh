#!/bin/bash

uvicorn app.main:app --app-dir=./ --reload --host=0.0.0.0 --port=8080 --timeout-keep-alive 10
