"use strict"
var express = require('express')
var bodyParser = require('body-parser')
var cors = require('cors')
var path = require('path')
var config = require('./config')
var app = express()

var rooter = require('./router/router')

var mongoose = require('mongoose');

mongoose.Promise = global.Promise;

var bd;

bd = mongoose.connect("mongodb://192.190.42.119:27017/prueba", {
  useMongoClient: true,
});

mongoose.connection.on('connected', function () {
  console.log('mongoose conectado')
})

app.use(cors())
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({
  extended: true
}))

app.use('/',router)

app.listen(config.port, () => console.log(` servidor corriendo por el puerto ${config.port}`))


