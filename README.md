# Firefox Docker Container

A simple docker container that runs Firefox in Ubuntu using xvfb + x11vnc.

A password will be dynamically generated when run you a container.

## Usage

Build with:

        docker build -t ff .

Run with:

        docker run -it -p 5900:5900 ff

Then connect to `vnc://127.0.0.1:5900` (or whatever port you forwarded) and paste
in the password.

## Alternatives

This was based on
[creack's](https://github.com/creack/docker-firefox/blob/master/Dockerfile)
container, but I wanted to use a more recent Ubuntu release a dynamic password.

A quick search will turn up loads of better versions, which use NoVNC and other
similar tools.
