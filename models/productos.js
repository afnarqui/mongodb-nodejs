var mongoose = require('mongoose')

var productosSchema = new mongoose.Schema({
    codigo: String,
    producto: String,
    linea: String,
    linea_id: String,
    proveedor: String,
    descripcion: String,
    precio_compra: String


})

module.exports = mongoose.model('producto', productosSchema)
