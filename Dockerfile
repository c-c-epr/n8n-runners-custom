FROM n8nio/runners:latest
USER root
COPY requirements.txt /requirements.txt
RUN cd /opt/runners/task-runner-javascript && pnpm add moment uuid
RUN cd /opt/runners/task-runner-python && uv pip install -r /requirements.txt
RUN rm /requirements.txt
COPY n8n-task-runners.json /etc/n8n-task-runners.json
USER runner