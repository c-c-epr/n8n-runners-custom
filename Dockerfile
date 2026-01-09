ARG N8N_VERSION=latest
FROM n8nio/runners:${N8N_VERSION}

LABEL org.opencontainers.image.title="n8n-custom-runner"
LABEL org.opencontainers.image.description="Custom n8n runner image"
LABEL org.opencontainers.image.source="https://github.com/c-c-epr/n8n-runners-custom"
LABEL org.opencontainers.image.licenses="MIT"


USER root
COPY requirements.txt /requirements.txt
# RUN cd /opt/runners/task-runner-javascript && pnpm add moment uuid
RUN cd /opt/runners/task-runner-python && uv pip install -r /requirements.txt
RUN rm /requirements.txt
COPY n8n-task-runners.json /etc/n8n-task-runners.json
USER runner
