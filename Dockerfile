ARG N8N_VERSION=latest
FROM n8nio/runners:${N8N_VERSION}

LABEL org.opencontainers.image.title="n8n-custom-runner"
LABEL org.opencontainers.image.description="Custom n8n runner image"
LABEL org.opencontainers.image.source="https://github.com/c-c-epr/n8n-runners-custom"
LABEL org.opencontainers.image.licenses="MIT"

USER root

# ---------- Lock pnpm version  ----------
RUN corepack enable \
 && corepack prepare pnpm@9.12.3 --activate

# ---------- Python runner ----------
COPY requirements.txt /requirements.txt
RUN cd /opt/runners/task-runner-python \
 && uv pip install -r /requirements.txt \
 && rm /requirements.txt

# ---------- JavaScript runner ----------
COPY package.json /opt/runners/task-runner-javascript/package.json
COPY pnpm-lock.yaml /opt/runners/task-runner-javascript/pnpm-lock.yaml

RUN cd /opt/runners/task-runner-javascript \
 && pnpm install --prod --frozen-lockfile

# ---------- n8n config ----------
COPY n8n-task-runners.json /etc/n8n-task-runners.json

USER runner