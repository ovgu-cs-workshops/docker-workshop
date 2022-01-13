FROM node:16-alpine as builder

WORKDIR /git-workshop
ADD package.json .
ADD package-lock.json .
RUN npm ci
ADD . .
RUN npm run build
RUN ls dist

FROM nginx:1.21-alpine

COPY --from=builder /git-workshop/dist /usr/share/nginx/html

