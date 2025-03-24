#!/bin/bash

# Create .cursor directory if it doesn't exist
mkdir -p .cursor

bun install

# Create mcp.json with the correct configuration
echo "{
  \"mcpServers\": {
    \"TalkToFigma\": {
      \"command\": \"bunx\",
      \"args\": [
        \"cursor-talk-to-figma-mcp\",
        \"--port=3056\"
      ]
    }
  }
}" > .cursor/mcp.json 