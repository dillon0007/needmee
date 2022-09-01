//Imports from packages
const express = require('express');
const mongoose = require('mongoose');

//import from other files
const authRouter = require("./routes/auth");

//INIT
const PORT = 3000;
const app = express();
const DB = "mongodb+srv://Draton:Draton2002@cluster0.nw4pkkw.mongodb.net/?retryWrites=true&w=majority"

//middleware
app.use(express.json());
app.use(authRouter);

//connections
mongoose.connect(DB).then(() => {
    console.log('connections successful');
})
.catch((e) => {
    console.log(e);
});

app.listen(PORT, "0.0.0.0", () => {
    console.log(`connected at port ${PORT}`);

});