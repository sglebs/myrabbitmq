FROM rabbitmq:3-management

WORKDIR /app
COPY CHECKS /app

EXPOSE 15672 5672

