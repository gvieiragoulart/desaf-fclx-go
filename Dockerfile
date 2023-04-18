FROM golang:1.16-alpine AS builder

WORKDIR /app

COPY . .

RUN go build -o main .

FROM alpine:3.13
WORKDIR /app
COPY --from=builder /app/main .

CMD ["./main"]