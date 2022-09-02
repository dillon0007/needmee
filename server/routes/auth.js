const express = require("express");
const User = require("../models/user");
const bcryptjs = require("bcryptjs");
const auth = require("../middlewares/auth");

const authRouter = express.Router();

authRouter.post('/api/signup', async(req,res) =>{
    try{
        const {name,email,password} =  req.body;

    const existinguser = await User.findOne({email});
    if(existinguser){
        return res.status(400).json({msg: 'User with same email already exists!'});
    }

     const hashedpassword = await bcryptjs.hash(password,8);

    let user = new User({
        email,
        password: hashedpassword,
        name,

    })

    user = await user.save();
    res.json(user);

    //200

    //post that data in database

} catch(e){
    res.status(500).json({error: e.message});
}
    //return that data to the user
});

    //get the data from the client
    



module.exports = authRouter;