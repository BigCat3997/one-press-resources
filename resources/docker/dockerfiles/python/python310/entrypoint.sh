#!/bin/bash
# Purpose: Run the application using Uvicorn with the specified entry point and options.
# Reference link: https://www.uvicorn.org/#running-programmatically
# --------------------------------------

uvicorn $ENTRYPOINT --host 0.0.0.0 --port $APP_PORT --workers 4 $OPTS