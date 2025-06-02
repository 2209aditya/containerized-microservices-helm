const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.json({ message: 'Hello from Service 2!' });
});

app.listen(port, () => {
  console.log(`Service 2 listening on port ${port}`);
});
