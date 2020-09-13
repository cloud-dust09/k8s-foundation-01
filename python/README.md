# This is a simple implememntation of FastAPI.
More info @ https://fastapi.tiangolo.com/

## To run this project locally:

```bash 
pip install -r requirements.txt
uvicorn app/main:app --reload
```
## Build the Docker image
1. Go to the project directory (in where your Dockerfile is, containing your app directory).
2. Build your FastAPI image:
```bash
docker build -t myimage .
```

## Start the Docker container
1. Run a container based on your image:
```bash
docker run -d --name mycontainer -p 9090:80 myimage
```
## Check the result

`http://localhost:9090/where-am-i`

`http://<public-ip-address>:<port>/where-am-i`
