# docker-mule-secure-tool
Docker image to run secure properties tool from cli

### Building
```
# docker build . -t docker-mule-secure-tool:latest
```

### Encrypting
```
# docker run docker-mule-secure-tool encrypt "P@55w0Rd" "Hello, World"
jRUjOepQdGb1s+v5KD2Fdg==
```

### Decrypting
```
# docker run docker-mule-secure-tool decrypt "P@55w0Rd" jRUjOepQdGb1s+v5KD2Fdg==`
Hello, World
```
