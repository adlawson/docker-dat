FROM node
MAINTAINER Andrew Lawson <http://adlawson.com>

RUN npm install -g dat@6
ADD ./start /bin/start

EXPOSE 6461

VOLUME ["/data"]

ENV SHELL /bin/bash

ENTRYPOINT ["/bin/start", "/data"]
CMD []
