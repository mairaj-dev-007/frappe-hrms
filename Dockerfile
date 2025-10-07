FROM frappe/bench:latest

WORKDIR /workspace

# Copy init.sh with correct permissions
COPY --chmod=755 init.sh /workspace/init.sh

CMD ["bash", "/workspace/init.sh"]
