const express = require('express');
const app = express();
const cors = require('cors'); // npm install cors
const port = process.env.PORT || 3000;

const CORS_WHITELIST = [
    "http://localhost:3000",
    "http://localhost:3002",
    "http://localhost:3006",
]

const corsOptions = {
    origin: CORS_WHITELIST, //* accept all origin when developve
    optionsSuccessStatus: 200
};

app.use(cors(corsOptions));

app.get('/', (req, res) => {
    res.send({
        status: "OK",
    })
  })

app.get('/hoang', (req, res) => {
    res.send({
        status: "OK",
        message: "Hello!"
    })
  })

app.get('/banners', (req, res)=>{
    const banners = [{
        title : "Default kit 1",
        description : "1 Ncididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo",
        image : "images/banner-img.png"
    },
    {
        title : "Default kit 2",
        description : "2 Ncididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo",
        image : "images/banner-img.png" 
    },
    {
        title : "Default kit 3",
        description : "3 Ncididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo",
        image : "images/banner-img.png" 
    }

]

    res.send(banners)
})

app.listen(port, () => {
    console.log(`Example app listening on port ${port}`)
  })