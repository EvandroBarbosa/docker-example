const express = require('express')

const app = express();

app.get('/', (req, res) => {
  return res.send('Hello Docker Compose!')
})

app.listen(8888)