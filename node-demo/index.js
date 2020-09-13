const os = require('os');
const http = require('http');

function handleRequest(req, res){
    res.writeHead(200);
    res.end(`you are at ${os.hostname}`);
}


const app = http.createServer(handleRequest);
app.listen(8200);