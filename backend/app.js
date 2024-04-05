const express = require('express')
const app = express()
const port = process.env.port || 3300
const cors = require('cors');
const fs = require('node:fs');

const CORS_WHITELIST = [
    "http://localhost:3000",
    "http://localhost:3002",
    "http://localhost:3006"
]

const corsOptions = {
    origin: CORS_WHITELIST /* accept all origin */,
    optionSuccessStatus: 200
}

app.use(cors(corsOptions))

app.get('/products', (req, res) => {

    const myData = fs.readFileSync('../data/products.json', 'utf8');

    try {
        res.send(JSON.parse(myData));
    } catch (error) {
        res.send(JSON.stringify([]));
        throw error;
    }

})

app.get('/configs', (req, res) => {

    const myData = fs.readFileSync('../data/configs.json', 'utf8');

    try {
        res.send(JSON.parse(myData));
    } catch (error) {
        res.send(JSON.stringify([]));
        throw error;
    }
})

app.get('/banners', (req, res) => {
    try {
        const data = fs.readFileSync('../data/banners.json', 'utf8');
        res.send(JSON.parse(data))
    } catch (error) {
        console.log(error);
    }
    res.send(JSON.stringify([]))
})



app.listen(port, () => {
    console.log(`example app listening on port ${port}`)
})

