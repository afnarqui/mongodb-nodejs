var mongoose = require('mongoose');

var cargosSchema = new mongoose.Schema({
	cargosId:Number,
	codigoCargo:String,
	nombreCargo:String
});

module.exports = mongoose.model('cargos', cargosSchema);
