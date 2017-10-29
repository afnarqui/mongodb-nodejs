var express = require('express')
var ajustesVentasDiarias = require('../models/ajustesVentasDiarias')
var login = require('../models/login')
var cargos = require('../models/cargos')
var productos = require('../models/productos')
var companias = require('../models/companias')
var router = express.Router()


/*********** prueba */



router.post('/companias', function(req,res,next){

  companias.create(req.body, function(err,data){
    console.log(req.body.codigoCompania)
    if(err) return next(err)
    res.json(data)
  })
})



router.delete('/companias', function(req,res,next){
  companias.findByIdAndRemove({"_id": req.body._id},function(err,data){
    if (err) return next(err)
    res.json(data)
  })
})

router.put('/companias', function(req,res,next){
  companias.findOneAndUpdate({"_id": req.body._id},
   {$set:{codigoCompania:req.body.codigoCompania,
    nitCompania:req.body.nitCompania,
    nombreCompania:req.body.nombreCompania,
    img:req.body.img}},function(err,data){
    if (err) return next(err)
    res.json(data)
  })
})




router.get('/companias', function(req,res,next){
  companias.find(function(err,data){
    if (err) return next(err)
    res.json(data)
  })
})


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
