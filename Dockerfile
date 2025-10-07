FROM frappe/bench:latest

WORKDIR /workspace

# copy everything (ensures init.sh is included)
COPY . .

# List files to confirm init.sh is included
RUN ls -la /workspace

# Make sure script is executable
RUN chmod +x ./init.sh

# Run the initialization script
CMD ["bash", "./init.sh"]
