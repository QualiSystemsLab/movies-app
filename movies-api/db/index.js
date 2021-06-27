const {DB_URL} = process.env
console.log(`DB URL: ${DB_URL}`)


const mongoose = require('mongoose')

mongoose
    .connect(`mongodb://${DB_URL}:27017/cinema`, { useNewUrlParser: true,server: {socketOptions: {socketTimeoutMS: 10000}}})
    .catch(e => {
        console.error('Connection error', e.message)
    })

const db = mongoose.connection

module.exports = db
