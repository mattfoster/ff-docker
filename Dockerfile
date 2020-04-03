# Firefox over VNC

FROM ubuntu:latest
RUN apt update && apt upgrade -y

# Install vnc, xvfb in order to create a 'fake' display and firefox
RUN apt install -y x11vnc xvfb firefox net-tools

RUN useradd -s /bin/bash -m user
USER user

RUN mkdir ~/.vnc
WORKDIR /home/user

# What is the best way to do this? Clearly not this!
RUN bash -c 'echo "exec firefox" > ~/.bashrc'

COPY --chown=user entrypoint.sh /home/user/entrypoint.sh
RUN chmod +x /home/user/entrypoint.sh

CMD ["/home/user/entrypoint.sh"]
