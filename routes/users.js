var express = require('express');
var router = express.Router();
var pool=require('../pool');
/* GET users listing. */
router.get('/user', function(req, res, next) {
   var $phone =req.query.phone;
   var str='select * from h_user where hphone=?';
   pool.query(str,[$phone],function(err,result){
     if(err) throw err;
     console.log(result)
     if(result.length>0){
       res.send({code:0,msg:'hased phone'})
     }else{
       var obj=req.query;
       var str='insert into h_user set ?';
       pool.query(str,[obj],function(err,result){
         if(err) throw err;
         if(result.affectedRows>0){
           res.send({code:200,msg:'signin succ'})
         }else{
           res.send({code:301,msg:'signin fail'})
         }
       }) 
     }
   })
});
router.get('/update',function(req,res){
  var obj=req.query;
  var sql="update h_user set hname= ? ,hphone= ? ,hgender= ?,haddress= ?  where hid= ? ";
  pool.query(sql,[obj.hname,obj.hphone,obj.hgender,obj.haddress,obj.hid],function(err,result){
    if(err) throw err;
    if(result.affectedRows>0){
      res.send({code:200,msg:"update succ"})
    }else{
      res.send({code:301,msg:'update fail'})
    }
  })
})
//注册
router.get('/reg',function(req,res,next){
  var hname=req.query.uname;
  var hphone=req.query.uphone;
  console.log(hname,hphone)
  var sql=`insert into h_user values hname= ? and hphone=?`;
  pool.query(sql,[hname,hphone],(err,result)=>{
   if(err) throw(err);
    res.send(JSON.stringify(result));
 })
});
module.exports = router;  
