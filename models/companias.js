var mongoose = require('mongoose')

var companiasSchema = new mongoose.Schema({
    codigoCompania:String,
    nitCompania:String,
    nombreCompania:String,
    img:String
})

module.exports = mongoose.model('companias', companiasSchema)

