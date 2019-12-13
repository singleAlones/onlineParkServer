var express = require('express');
var router = express.Router();
var pool=require('../pool');
/* GET users listing. */
router.get('/user', function(req, res, next) {
       var obj=req.query;
       console.log(obj);
       if(obj.hname==""||obj.hphone==""){
           res.send({code:400,msg:'用户名或密码为空'})
       }else{
        var reg= /^((0\d{2,3}-\d{7,8})|(1[3584]\d{9}))$/;
          if(reg.test(obj.hphone)&&obj.hname!=""){
            var str='insert into h_user set ?';
            pool.query(str,[obj],function(err,result){
              if(err) throw err;
              if(result.affectedRows>0){
                res.send({code:200,msg:'预留信息成功'})
              }else{
                res.send({code:301,msg:'预留信息失败，请重新输入'})
              }
            }) 
          }else{
            res.send({code:305,msg:'手机号格式不正确，请重新输入'})
          }
       }   
});
 
module.exports = router;  
