FROM node:12.7.0-alpine

RUN yarn global add swagger-merger@1.4.3

ENTRYPOINT ["/usr/local/bin/swagger-merger"]
