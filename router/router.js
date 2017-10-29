var express = require('express')
var compania = require('../models/companias')

var router = express.Router()


router.get('/compania', function(req,res,next){

    compania.find(function(err,data){
        if(err) return next(err)
        res.json(data)
    })
})

router.put('/compania', function(req,res,next){
    compania.findOneAndUpdate({"_id": req.body._id},
     {$set:{codigoCompania:req.body.codigoCompania,
      nitCompania:req.body.nitCompania,
      nombreCompania:req.body.nombreCompania,
      img:req.body.img}},function(err,data){
      if (err) return next(err)
      res.json(data)
    })
  })
  
  
  
  router.delete('/compania', function(req,res,next){
    compania.findByIdAndRemove({"_id": req.body._id},function(err,data){
      if (err) return next(err)
      res.json(data)
    })
  })
  
  
  router.post('/companias', function(req,res,next){
  
    compania.create(req.body, function(err,data){
      console.log(req.body.codigoCompania)
      console.log(req.body.nitCompania)
      console.log(req.body.nombreCompania)
      console.log(req.body.img)
      
      if(err) return next(err)
      res.json(data)
    })
  })


module.exports = router;
