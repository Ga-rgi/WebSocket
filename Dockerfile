FROM golang:1.19
ENV APP_HOME /home/roverx/Documents/Projects/websocketconnection
RUN mkdir -p "$APP_HOME"
WORKDIR $APP_HOME
ENV PATH="${PATH}:/home/roverx/Documents/Projects/websocketconnection"
RUN GOOS=linux GOARCH=amd64
COPY . .
RUN go mod download
RUN go mod tidy
RUN go build
EXPOSE 8080
CMD websocketconnection