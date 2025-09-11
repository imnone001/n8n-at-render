#!/bin/bash

# Set public webhook URL dynamically if on Render
if [ -n "$RENDER_EXTERNAL_HOSTNAME" ]; then
  export WEBHOOK_URL="https://$RENDER_EXTERNAL_HOSTNAME"
  export N8N_EDITOR_BASE_URL="https://$RENDER_EXTERNAL_HOSTNAME"
fi

# Start n8n
npx n8n
