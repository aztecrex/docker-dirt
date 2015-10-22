FROM ubuntu:15.04
MAINTAINER Greg Wiley <aztec.rex@jammm.com>

#ENV SOME_VAR value

# shield security configuration
# ADD source /path/to/dest
# RUN /path/to/command

RUN apt-get update && \
    apt-get install -y \
      git \
      build-essential \
      libsndfile1-dev \
      libsamplerate0-dev \
      liblo-dev


COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["dirt"]



