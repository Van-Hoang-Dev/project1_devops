const express  = require('express')
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


app.get('/', (req, res) =>{
    res.send({
        stats: "OK",
        message: "ola"
    })
})

app.get('/banners', (req, res) =>{
    const banners = [{
        title : 'Beauty  Kit',
        description : 'Ncididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo',
        image : 'images/banner-img.png'
    },
    {
        title : 'Beauty Kit2',
        description : 'Ncididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo',
        image : 'images/banner-img.png'
    },
    {
        title : 'Beauty Kit3',
        description : 'Ncididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo',
        image : 'images/banner-img.png'
    }]
    res.send(banners)
})

app.get('/products',(req, res) =>{
    try {
        const data = fs.readFileSync('../data/datajson.json', 'utf8');
        res.send(data)
    } catch (error) {
        console.log(error);
    }
})

app.listen(port, ()=>{
    console.log(`example app listening on port ${port}`)
})
