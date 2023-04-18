FROM golang:1.16-alpine AS builder

WORKDIR /app

COPY . .

RUN go build -o main .

CMD ["./main"]