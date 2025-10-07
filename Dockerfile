FROM frappe/bench:latest

WORKDIR /workspace

# copy everything first (ensures init.sh is included)
COPY . .

RUN chmod +x ./init.sh

CMD ["bash", "./init.sh"]
