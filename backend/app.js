const express = require("express");
const app = express();
require('dotenv').config()
const port = process.env.REACT_APP_PORT;
const cors = require("cors");
const fs = require("node:fs");
const mysql = require("mysql");

//CORS
const CORS_WHITELIST = [
  "http://localhost:3000",
  "http://localhost:3002",
  "http://localhost:3006",
];
const corsOptions = {
  origin: CORS_WHITELIST /* accept all origin */,
  optionSuccessStatus: 200,
};
//

//MYSQL
var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "devops",
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});
//
app.use(cors(corsOptions));

app.get("/api", (req, res) => {
  res.send({
    message: "Welcome to Làng gốm xì ke team",
    status: 200,
  });
});

app.get("/api/products", (req, res) => {
  con.query("SELECT * FROM `products`", (err, products) => {
    if (err) throw err;
    try {
      res.send(products);
    } catch (error) {
      res.send(JSON.stringify([]));
      throw error;
    }
  });
});

app.get("/api/users", (req, res) => {
  con.query("SELECT * FROM `users`", (err, users) => {
    if (err) throw err;
    try {
      res.send(users);
    } catch (error) {
      res.send(JSON.stringify([]));
      throw error;
    }
  });
});

app.get("/api/contacts", (req, res) => {
  con.query("SELECT * FROM `contacts`", (err, contacts) => {
    if (err) throw err;
    try {
      res.send(contacts);
    } catch (error) {
      res.send(JSON.stringify([]));
      throw error;
    }
  });
});

app.get("/api/configs", (req, res) => {
  con.query("SELECT * FROM `configs`", (err, configs) => {
    if (err) throw err;
    try {
      res.send(configs);
    } catch (error) {
      res.send(JSON.stringify([]));
      throw error;
    }
  });
});

app.get("/api/banners", (req, res) => {
  con.query("SELECT * FROM `banners`", (err, banners) => {
    if (err) throw err;
    try {
      res.send(banners);
    } catch (error) {
      res.send(JSON.stringify([]));
      throw error;
    }
  });
});

app.listen(port, (ms) => {
  console.log(`example app listening on port ${port}`);
  console.log(ms);
});
