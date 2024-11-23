FROM node:alpine3.20 as build
WORKDIR /apps
COPY . .
RUN npm install
RUN npm run build


FROM node:alpine3.20 as prod
ENV NODE_ENV=production
COPY package*.json ./
WORKDIR /apps
RUN npm install --only=production
COPY --from=build /apps/dist ./dist
CMD [ "node", "dist/main" ]