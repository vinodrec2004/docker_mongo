FROM node

WORKDIR /usr/src/mongografanaproxy

COPY . /usr/src/mongografanaproxy

EXPOSE 3333

RUN cd /usr/src/mongografanaproxy

RUN npm install

ENTRYPOINT ["npm","run","server"]

#creating the grafana base image

FROM grafana/grafana

COPY . /var/lib/grafana/plugins/mongodb-grafana

EXPOSE 3000
