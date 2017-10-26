var express = require('express')
var ajustesVentasDiarias = require('../models/ajustesVentasDiarias')
var login = require('../models/login')
var cargos = require('../models/cargos')
var productos = require('../models/productos')

var router = express.Router()


/*********** prueba */



router.get('/productos', function(req, res, next) {
  productos.find(function (err, data) {
    if (err) return next(err);
    res.json(data);
  });
});  

router.post('/productos', function(req, res, next) {
  productos.create(req.body,function (err, data) {
    if (err) return next(err);
    res.json(data);
  });
});  




/*****************prueba */
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

  router.get('/cargos', function(req, res, next) {
    cargos.find(function (err, login) {
      if (err) return next(err);
      res.json(login);
    });
  });  

module.exports = router
