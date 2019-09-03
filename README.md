# Yo Service
> A simple API for demonstrating Jenkins X with multiple services

## Quickstart
### Docker (recommended)
```
docker build . -t yo-service:latest
docker run --name yo-service -d -p 4567:4567 yo-service:latest
```

### Locally
```
bundle install
ruby web.rb
```

## Interacting
http://localhost:4567 -> simple homepage

http://localhost:4567/api/v1/yo -> returns { message: "yo" } 

