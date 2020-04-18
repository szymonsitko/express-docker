import express from "express";

const createServer = () => {
  const app = express();
  
  app.all("*", (req, res) => {
    res.status(200).json({
      message: "Test app v 1.0",
    });
  });

  return app;
}

export { createServer };
