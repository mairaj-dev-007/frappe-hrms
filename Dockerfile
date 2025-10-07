FROM frappe/bench:latest

WORKDIR /workspace

# Copy everything into /workspace (make sure init.sh is included)
COPY . .

# Debug: check what files exist
RUN echo "==== Files inside /workspace ====" && ls -la /workspace && cat /workspace/init.sh || echo "init.sh NOT FOUND"

# Make sure script is executable
RUN chmod +x /workspace/init.sh

# Run initialization script
CMD ["bash", "/workspace/init.sh"]
