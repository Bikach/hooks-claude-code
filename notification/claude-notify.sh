#!/bin/bash

# Parse JSON input from stdin
INPUT=$(cat)
MESSAGE=$(echo "$INPUT" | jq -r '.message // empty')
TITLE=$(echo "$INPUT" | jq -r '.title // empty')

# Default values if JSON parsing fails
if [ -z "$MESSAGE" ]; then
    MESSAGE="Claude Code notification"
fi
if [ -z "$TITLE" ]; then
    TITLE="Claude Code"
fi

# Play different sounds based on message content
if [[ "$MESSAGE" == *"completed"* ]] || [[ "$MESSAGE" == *"terminé"* ]] || [[ "$MESSAGE" == *"fini"* ]]; then
    afplay /System/Library/Sounds/Hero.aiff
elif [[ "$MESSAGE" == *"error"* ]] || [[ "$MESSAGE" == *"erreur"* ]]; then
    afplay /System/Library/Sounds/Basso.aiff
else
    afplay /System/Library/Sounds/Ping.aiff
fi

# Display macOS notification
osascript -e "display notification \"$MESSAGE\" with title \"$TITLE\""
