var mongoose = require('mongoose')

var lineasSchema = new mongoose.Schema({
    id:String,
    linea:String,
    icono:String
})

module.exports = mongoose.model('lineas', lineasSchema)