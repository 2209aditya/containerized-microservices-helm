const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.json({ message: 'Hello from Service 1!' });
});

app.listen(port, () => {
  console.log(`Service 1 listening on port ${port}`);
});
