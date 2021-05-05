const express = require("express");

const app = express();

app.get("/", (_req, res) => {
  return res.send("hello");
});

module.exports = { app };
