# Docker cowsay image

Minimal Docker image with a fortune telling cow.

## Description

Small (<17Mb) Alpine Linux image with preinstalled ```cowsay``` and ```fortune``` utilities, which I created while playing around with Docker image sizes. Apart from showing silly messages has no particular purpose.

* Based on ```alpine:3.19```
* [Neo-cowsay](https://github.com/Code-Hex/Neo-cowsay) is used instead of old perl-based one

## Getting Started

Get it on [Docker Hub](https://hub.docker.com/r/vspl/cowsay), or build the image yourself:

```bash
docker build -t cowsay .
docker run --rm cowsay # or `docker run --rm cowsay [your message]`

# Should output somthing like this:
#  ________________________________________
# / No one gets too old to learn a new way \
# \ of being stupid.                       /
#  ----------------------------------------
#        \   ^__^
#         \  (oo)\_______
#            (__)\       )\/\
#                ||----w |
#                ||     ||
```
