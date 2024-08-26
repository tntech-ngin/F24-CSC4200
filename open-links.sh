#!/bin/bash

# Define the list of URLs to open
URLS=(
    "https://teams.microsoft.com/l/team/19%3AsK66AEbJU7P3DCcyYG0QzOOyI5Fv1VMJk2i2PpT9-3g1%40thread.tacv2/conversations?groupId=edc876c0-cf65-43ce-b6dd-16f4fc0915a6&tenantId=66fecaf8-3dc0-4d2c-b8b8-eff0ddea46f0"
    "https://express.tntech.edu/index.php"
    "https://tntech-ngin.github.io/F24-CSC4200/docs/prologue/schedule/"
)

# Detect the operating system and use the appropriate command
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    OPEN_CMD="xdg-open"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    OPEN_CMD="open"
else
    echo "Unsupported OS"
    exit 1
fi

# Loop through each URL and open it
for url in "${URLS[@]}"; do
    $OPEN_CMD "$url"
done

