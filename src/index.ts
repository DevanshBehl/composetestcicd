import express from "express";
const app = express();
import { prisma } from "./lib/prisma.js"
app.use(express.json());

app.post("/create", async (req, res) => {
    const username = req.body.username;
    const password = req.body.password;
    try {
        const user = await prisma.user.create({
            data: {
                username: username,
                password: password
            }
        })

        res.send("user created successfully");
    } catch (e) {
        res.send(e);
    }

})

app.listen(3002);