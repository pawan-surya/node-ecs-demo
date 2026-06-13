FROM node:18-alpine
WORKDIR /app

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

COPY app.js package.json ./

USER appuser

EXPOSE 3000
CMD ["node", "app.js"]