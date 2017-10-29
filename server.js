"use strict"
var express = require('express')
var bodyParser = require('body-parser')
var cors = require('cors')
var path = require('path')
var config = require('./config')
var app = express()
var cors = require('cors')

var router = require('./router/router')

var mongoose = require('mongoose');

mongoose.Promise = global.Promise;

var bd;

bd = mongoose.connect("mongodb://localhost:27017/prueba", {
  useMongoClient: true,
});

mongoose.connection.on('connected', function () {
  console.log('mongoose conectado')
})
// var bd;

// bd = mongoose.connect("mongodb://localhost:27017/restiendaprueba", {
//   useMongoClient: true,
// });


// bd = mongoose.connect("mongodb://localhost:27017/restiendaprueba", {
//   useMongoClient: true,
// });


// mongoose.connect('mongodb://localhost/prueba', {
//      useMongoClient: true})
// .then(() =>  console.log('mongo conectado'))
// .catch((err) => console.error(err));

// mongoose.connection.on('connected', function () {
//   console.log('mongoose conectado')
// })

app.use(cors())

app.use(express.static(path.join(__dirname,'public')))
app.use(cors())
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({
  extended: true
}))

app.use('/',router)

app.listen(8989, () => console.log(` servidor corriendo por el puerto 8989`))


