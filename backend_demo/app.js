const express = require("express");
const app = express();
require("dotenv").config();
const port = process.env.REACT_APP_PORT;
const cors = require("cors");
const fs = require("node:fs");
const mysql = require("mysql2");

const dbHost = process.env.REACT_APP_DB_HOST || "localhost";
const dbPort = process.env.REACT_APP_DB_PORT || "3306";
const dbUser = process.env.REACT_APP_DB_USER || "root";
const dbPass = process.env.REACT_APP_DB_PASS || "";
const dbName = process.env.REACT_APP_DB_NAME || "devops";

//CORS
const CORS_WHITELIST = [
  "http://localhost:3000",
  "http://localhost:3002",
  "http://localhost:3006",
  "http://localhost:3306",
];
const corsOptions = {
  origin: CORS_WHITELIST /* accept all origin */,
  optionSuccessStatus: 200,
};
//

//MYSQL
var con = mysql.createConnection({
  host: dbHost,
  user: dbUser,
  password: dbPass,
  database: dbName,
  port: dbPort,
});

con.connect(function (err) {
  console.log(err ? "Cannot connect" : "Connected!");
  console.log(err);
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
    if (err) console.log("Error: ", err);
    try {
      res.send(products);
    } catch (error) {
      res.send(JSON.stringify([]));
      console.log(error);
    }
  });
});

app.get("/api/users", (req, res) => {
  con.query("SELECT * FROM `users`", (err, users) => {
    if (err) console.log("Error: ", err);
    try {
      res.send(users);
    } catch (error) {
      res.send(JSON.stringify([]));
      console.log(error);
    }
  });
});

app.get("/api/contacts", (req, res) => {
  con.query("SELECT * FROM `contacts`", (err, contacts) => {
    if (err) console.log("Error: ", err);
    try {
      res.send(contacts);
    } catch (error) {
      res.send(JSON.stringify([]));
      console.log(error);
    }
  });
});

app.get("/api/configs", (req, res) => {
  con.query("SELECT * FROM `configs`", (err, configs) => {
    if (err) console.log("Error: ", err);
    try {
      res.send(configs);
    } catch (error) {
      res.send(JSON.stringify([]));
      console.log(error);
    }
  });
});

app.get("/api/banners", (req, res) => {
  con.query("SELECT * FROM `banners`", (err, banners) => {
    if (err) console.log("Error: ", err);
    try {
      res.send(banners);
    } catch (error) {
      res.send(JSON.stringify([]));
      console.log(error);
    }
  });
});

app.listen(port, (ms) => {
  console.log(`example app listening on port ${port}`);
  console.log(dbHost);
  console.log(dbPort);
  console.log(dbUser);
  console.log(dbPass);
  console.log(dbName);
});
