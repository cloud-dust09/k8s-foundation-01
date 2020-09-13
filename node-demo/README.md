### Build Docker image
```bash
docker build -t node-demo . 
```
### Start the Docker container
1. Run a container based on your image:
```bash
docker run -d --name node-container -p 9090:80 node-demo
```
## Check the result
curl on `http://localhost:8200`