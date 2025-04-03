FROM golang:1.16-alpine

WORKDIR /app 

COPY . .

EXPOSE 8000

RUN go build 
 
ENV PORT=8000

ENV REQUEST_ORIGIN=http://localhost:5000

ENTRYPOINT ["./server"]