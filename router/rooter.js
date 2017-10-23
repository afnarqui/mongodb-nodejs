var express = require('express')
var datos = require('../models/ajustesVentasDiarias')
var login = require('..//models/login')

var rooter = express.Router()

rooter.post('/datos', function(req, res, next) {
    
    datos.create(req.body, function (err, post) {
      if (err) return next(err);
      res.json(post);
    });
  });

  rooter.post('/login', function(req, res, next) {
    login.create(req.body, function (err, post) {
      if (err) return next(err);
      res.json(post);
    });
  });

  rooter.get('/login', function(req, res, next) {
    login.find(function (err, login) {
      if (err) return next(err);
      res.json(login);
    });
  });

  rooter.post('/cargos', function(req, res, next) {
    login.create(req.body, function (err, post) {
      if (err) return next(err);
      res.json(post);
    });
  });

  rooter.get('/cargos', function(req, res, next) {
    login.find(function (err, login) {
      if (err) return next(err);
      res.json(login);
    });
  });  

module.exports = router