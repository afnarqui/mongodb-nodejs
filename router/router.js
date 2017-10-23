var express = require('express')
var ajustesVentasDiarias = require('../models/ajustesVentasDiarias')
var login = require('../models/login')
var cargos = require('../models/cargos')


var router = express.Router()
  router.post('/login', function(req, res, next) {
    login.create(req.body, function (err, post) {
      if (err) return next(err);
      res.json(post);
    });
  });

  router.get('/login', function(req, res, next) {
    login.find(function (err, login) {
      if (err) return next(err);
      res.json(login);
    });
  });

  router.post('/cargos', function(req, res, next) {
    cargos.create(req.body, function (err, post) {
      if (err) return next(err);
      res.json(post);
    });
  });

  router.get(`/${req.nombre}`, function(req, res, next) {
    cargos.find(function (err, login) {
      if (err) return next(err);
      res.json(login);
    });
  });  

module.exports = router