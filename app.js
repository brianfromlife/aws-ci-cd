const express = require("express");

const app = express();

app.get("/", (_req, res) => {
  return res.send("hell");
});

module.exports = { app };
