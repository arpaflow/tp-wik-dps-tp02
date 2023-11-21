# tp-wik-dps-tp02
## Description

A dockerized version of tp-wik-dps-tp01.
This repo contains two services :
- typescript for the first challenge (Dockerfile) (vuln report trivy.txt)
- typescript2 for the second challenge (Dockerfile.2) (vuln report trivy2.txt)

## Run
### Software needed
```
docker, git, curl
```
1. Clone the repository
```
git clone https://github.com/arpaflow/tp-wik-dps-tp02.git
```
2. Launch services with docker compose
```
docker compose up -d
```
### Try it
1. Go to http://localhost:8080/ping
```
curl http://localhost:8080/ping
```