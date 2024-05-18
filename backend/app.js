const express = require('express')
const app = express()
const port = process.env.port || 3000
const cors = require('cors');
const fs = require('node:fs');
const mysql = require("mysql2")

const CORS_WHITELIST = [
    "http://localhost:3000",
    "http://localhost:3002",
    "http://localhost:3006"
]

const corsOptions = {
    origin: CORS_WHITELIST /* accept all origin */,
    optionSuccessStatus: 200
}

const dbHost = process.env.DB_HOST || 'localhost';
const dbPort = process.env.DB_PORT || '3300';
const dbUser = process.env.DB_USER || 'admin';
const dbPass = process.env.DB_PASS || 'admin';
const dbName = process.env.DB_NAME || 'tdc-devops';



let connection = mysql.createConnection({
    host: dbHost,
    port: dbPort,
    user: dbUser,
    password: dbPass,
    database: dbName 
});

app.use(cors(corsOptions))

app.get('/', (req, res) => {
    res.send({
        message: "Welcome to my API"
    });
});

app.get('/products', (req, res) => {

    const myData = fs.readFileSync('../data/products.json', 'utf8');

    try {
        res.send(JSON.parse(myData));
    } catch (error) {
        res.send(JSON.stringify([]));
        throw error;
    }

})

app.get('/users', (req, res) => {

    const myData = fs.readFileSync('../data/users.json', 'utf8');

    try {
        res.send(JSON.parse(myData));
    } catch (error) {
        res.send(JSON.stringify([]));
        throw error;
    }
})


app.get('/contacts', (req, res) => {

    const myData = fs.readFileSync('../data/contacts.json', 'utf8');

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

// app.get('/banners', (req, res) => {
//     // try {
//     //     const data = fs.readFileSync('../data/banners.json', 'utf8');
//     //     res.send(JSON.parse(data))
//     // } catch (error) {
//     //     console.log(error);
//     // }
//     // res.send(JSON.stringify([]))
// })


app.get('/banners', (req, res) => {
    // Thực hiện truy vấn để lấy dữ liệu từ bảng "banner"
    connection.query('SELECT * FROM banners', (error, results) => {
        if (error) {
            console.error('Lỗi truy vấn:', error);
            res.status(500).json({ error: 'Đã xảy ra lỗi khi truy vấn dữ liệu' });
            return;
        }
        // Trả về dữ liệu lấy được dưới dạng JSON
        res.json(results);
    });
});



app.listen(port, () => {
    console.log(`example app listening on port ${port}`)
})


