#!/bin/bash
# Purpose: Run the .NET application specified by the TARGET_DLL_FILE variable with provided options.
# Reference link: https://docs.microsoft.com/en-us/dotnet/core/tools/dotnet-run
# --------------------------------------

dotnet $TARGET_DLL_FILE $OPTS
