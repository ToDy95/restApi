const { json } = require('body-parser');
const express = require('express');
const db = require('../db/db')
const router = express.Router();


//get all data
router.get('/:tableName', async (req, res) => {
    try {
        let result = await db.all(req.params.tableName);
        res.json(result);
    } catch (e) {
        console.log(e)
    }
})

//get specific data
router.get('/s/:table/:id', async (req, res) => {
    try {
        let result = await db.one(req.params.table, req.params.id);
        res.json(result);
    } catch (e) {
        console.log(e)
    }
})

//delete
router.delete('/:table/:id', async (req, res) => {
    try {
        let result = await db.one(req.params.table, req.params.id);
        res.json(result);
    } catch (e) {
        console.log(e)
    }
})

//update
router.patch('/:table/:id', async (req, res) => {

    try {
        let result = await db.one(req.params.table, req.body, req.params.id);
        res.json(result);
    } catch (e) {
        console.log(e)
    }
})

// insert
router.post('/:table', async (req, res) => {
    try {
        let result = await db.one(req.params.table, req.body);
        res.json(result);
    } catch (e) {
        console.log(e)
    }

})

module.exports = router;