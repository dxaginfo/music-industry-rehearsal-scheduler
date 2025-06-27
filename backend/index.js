const express = require('express');
const app = express();
app.use(express.json());
app.get('/api/health', (req, res) => res.send('OK'));
// API routes for scheduling, attendance, reminders would go here
app.listen(3001, () => console.log('API listening on 3001'));
