const express = require('express');
const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
    res.send('<h1>Ustoz, Docker va GitHub Actions muvaffaqiyatli deploy bo‘ldi! 🚀</h1>');
});

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});
