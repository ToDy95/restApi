const mysql = require('mysql');
require('dotenv/config')

const pool = mysql.createPool({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    database: process.env.DB_NAME,
    password: process.env.DB_PASSWORD,
    multipleStatements:true,
})
let appDb = {};

//get all info
appDb.all = (tableName) => {
return new Promise ((resolve, reject) => {
    pool.query(`SELECT * FROM foodfactory.${tableName}`,  (err, res) => {
        if (err) return reject(err);

        return resolve(res)
    })
})}

//get specific info 
appDb.one = (table, id) => {
    return new Promise((resolve, reject) => {
        pool.query(`SELECT * FROM ${table} where id = ?`, [id], (err, res) => {
            if (err) return reject(err);

            return resolve(res)
        })
    })
}

//delete
appDb.one = (table, id) => {
    return new Promise((resolve, reject) => {
        pool.query(`DELETE FROM ${table} where id = ?`, [id], (err, res) => {
            if (err) return reject(err);

            return resolve(res)
        })
    })
}

// update
appDb.one =(table,data,id) => {
    return new Promise((resolve, reject) => {

        let query = `UPDATE ${table} SET `;
        query += Object.keys(data).map((key) => {
            const valueToSet = typeof data[key] === 'string' ? `'${data[key]}'` : data[key];
            return `${key}=${valueToSet}`;
        }).join(', ');
        query += ` WHERE id=${id};`

        pool.query(query, (err, res) => {
            if (err) return reject(err);

            return resolve(res)
        })
     })
}

//Insert
appDb.one =(table,params) => {
    return new Promise((resolve, reject) => {
        pool.query(`INSERT INTO ${table} SET ?`,[params], (err, res) => {
            if (err) return reject(err);

            return resolve(res)
        })
     })

}

module.exports = appDb;