var mongoose = require('mongoose');

var ajustesVentasDiariasSchema = new mongoose.Schema({
	ajustesVentasDiariasId:Number,
	productoId:Number,
	tipoProducto:String,
	fechaAjuste:{ type: Date, default: Date.now },
	cantidad:Number,
	valorUnitario:Number,
	usuariosId:Number,
  companiasId:Number
});

module.exports = mongoose.model('ajustesVentasDiarias', ajustesVentasDiariasSchema);