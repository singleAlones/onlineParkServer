var express = require('express');
var router = express.Router();
var pool=require('../pool');
/* insert user */
router.get('/user', function(req, res, next) {
       var obj=req.query;
       console.log(obj);
       if(obj.hname==""||obj.hphone==""){
           res.send({code:400,msg:'用户名或密码为空'})
       }else{
        var reg= /^((0\d{2,3}-\d{7,8})|(1[3584]\d{9}))$/;
          if(reg.test(obj.hphone)&&obj.hname!=""){
            var check="select hphone from h_user where hphone=?";
            pool.query(check,[obj.hphone],function(err,result){
                 if(err) throw err;
                 if(result.length>0){
                  res.send({code:300,msg:'电话已经预留，请重新输入'})
                 }else{
                  var str='insert into h_user set ?';
                  pool.query(str,[obj],function(err,result){
                    if(err) throw err;
                    if(result.affectedRows>0){
                      res.send({code:200,msg:'预留信息成功'})
                    }else{
                      res.send({code:301,msg:'预留信息失败，请重新输入'})
                    }
                  }) 
                 }
            })
          }else{
            res.send({code:305,msg:'手机号格式不正确，请重新输入'})
          }
       }   
});
// select user
router.get("/seluser",function(req,res,next){
  var obj=req.query;
  if(!obj.pno) obj.pno=1;
  if(!obj.count) obj.count=4;
  obj.count=parseInt(obj.count);
  var start=(obj.pno-1)*obj.count;
  var sql="select * from h_user limit ?,? ";
  pool.query(sql,[start,obj.count],function(err,result){
            if(err) throw err;
          if(result.length>0){
           res.send(JSON.stringify(result));
          }else{
              res.send({code:301,msg:'查询失败'})
          }
  })
})
// delete user
router.get("/deluser",function(req,res,next){
  var hphone=req.query.hphone;
  console.log(hphone)
  if(hphone==""){
    res.send({code:400,msg:'请重新点击要删除的用户信息'})
  }
  var sql="delete from  h_user where hphone =? ";
  pool.query(sql,[hphone],function(err,result){
     if(err) throw err;
     console.log(result)
     if(result.affectedRows>0){
      res.send({code:200,msg:'删除成功'})
     }else{
       res.send({code:301,msg:'删除失败'})
     }
  })
})

// login admin
router.get("/admin",function(req,res,next){
     var obj=req.query;
     console.log(obj);
     if(obj.auser==""||obj.apwd==""){
      res.send({code:400,msg:'管理员账号或密码为空'})
     }
      var sql="select aid from admin where auser=? and apwd=?";
      pool.query(sql,[obj.auser,obj.apwd],function(err,result){
                if(err) throw err;
                console.log(result)
              if(result.length>0){
                  res.send({code:200,msg:'登录成功'})
              }else{
                  res.send({code:301,msg:'管理员账号或密码不正确'})
              }
      })
})
// 查询管理员账号
router.get("/seladmin",function(req,res,next){
  var obj=req.query;
  if(!obj.pno) obj.pno=1;
  if(!obj.count) obj.count=4;
  obj.count=parseInt(obj.count);
  var start=(obj.pno-1)*obj.count;
   var sql="select * from admin  limit ?,?";
   pool.query(sql,[start,obj.count],function(err,result){
             if(err) throw err;
           if(result.length>0){
            res.send(JSON.stringify(result));
           }else{
               res.send({code:301,msg:'查询失败'})
           }
   })
})
// 增加管理员账号
router.get("/addadmin",function(req,res,next){
     var obj=req.query;
     console.log(obj);
     if(obj.auser==""||obj.apwd==""){
      res.send({code:400,msg:'管理员账号或密码为空'})
     }
     var check="select auser from  admin where auser= ?";
     pool.query(check,[obj.auser],function(err,result){
         if(err) throw err 
         if(result.length>0){
           res.send({code:300,msg:'管理员账号已存在，请重新输入'})
         }else{
          var sql="insert into admin set ? ";
          pool.query(sql,[obj],function(err,result){
                if(err) throw err;
                if(result.affectedRows>0){
                 res.send({code:200,msg:'添加管理员成功'})
               }else{
                 res.send({code:301,msg:'添加管理员失败'})
               }
          })
         }
     })
     
})
// 删除管理员账号
router.get("/deladmin",function(req,res,next){
      var auser=req.query.auser;
      console.log(auser)
      if(auser==""){
        res.send({code:400,msg:'请重新点击要删除的管理员账号'})
      }
      var sql="delete from  admin where auser =? ";
      pool.query(sql,[auser],function(err,result){
         if(err) throw err;
         console.log(result)
         if(result.affectedRows>0){
          res.send({code:200,msg:'删除成功'})
         }else{
           res.send({code:301,msg:'删除失败'})
         }
      })
})


module.exports = router;  
