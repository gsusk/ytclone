FROM node:lts-alpine AS base

WORKDIR /app

COPY ./package*.json ./

RUN npm install

##########################

FROM base AS development

# RUN pnpm install

CMD [ "npm", "run", "dev" ]

##########################

FROM base AS production

COPY . .

RUN pnpm install
RUN pnpm build

COPY --from=base /app/public ./public
COPY --from=base /app/.next/standalone ./
COPY --from=base /app/.next/static .next/static

EXPOSE 3000

CMD [ "node", "server.js" ]