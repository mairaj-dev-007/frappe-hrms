FROM frappe/bench:latest

WORKDIR /workspace

<<<<<<< HEAD
# copy everything first (ensures init.sh is included)
COPY . .

RUN chmod +x ./init.sh

CMD ["bash", "./init.sh"]
=======
COPY . .

# Debug: list files to confirm init.sh exists
RUN ls -la /workspace

# Make sure script is executable
RUN chmod +x ./init.sh

CMD ["bash", "./init.sh"]

>>>>>>> a3986effb (coomit new)
