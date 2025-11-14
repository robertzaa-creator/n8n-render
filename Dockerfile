FROM n8nio/n8n:latest

# Required for Render.com
ENV NODE_ENV=production
ENV N8N_ENCRYPTION_KEY=default_secret
ENV N8N_BASIC_AUTH_ACTIVE=false
ENV N8N_DIAGNOSTICS_ENABLED=false
ENV N8N_LOG_OUTPUT=console

# Render looks for a PORT env var
ENV PORT=5678
EXPOSE 5678

# Start n8n through node in production mode
CMD ["node", "packages/cli/bin/n8n"]
