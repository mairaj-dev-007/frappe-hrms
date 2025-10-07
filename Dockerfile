FROM frappe/bench:latest

WORKDIR /workspace

# Copy only init.sh
COPY init.sh /workspace/init.sh

RUN chmod +x /workspace/init.sh

CMD ["bash", "/workspace/init.sh"]
