FROM node:22-alpine

RUN npm install -g openclaw@latest

ENV OPENCLAW_GATEWAY_MODE=local \
    OPENCLAW_GATEWAY_PORT=8080 \
    OPENCLAW_ALLOW_UNCONFIGURED=true

EXPOSE 8080

CMD ["openclaw", "gateway", "run", "--allow-unconfigured", "--port", "8080"]
