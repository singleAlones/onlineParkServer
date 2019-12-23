var express = require('express');
var router = express.Router();
var pool=require('../pool');
/* GET home page. */
// 主页轮播
router.get('/i_carousel', function(req, res, next) {
  var sql=`select * from i_carousel`;
 pool.query(sql,[],(err,result)=>{
   if(err) throw(err);
    res.send(JSON.stringify(result));
 })
});

//  新闻图

router.get('/news_img', function(req, res, next) {
  var sql=`select * from news_img`;
 pool.query(sql,[],(err,result)=>{
   if(err) throw(err);
    res.send(JSON.stringify(result));
 })
});
 
 
//新闻列表

router.get('/news', function(req, res, next) {
  var sql=`select * from news`;
 pool.query(sql,[],(err,result)=>{
   if(err) throw(err);
    res.send(JSON.stringify(result));
 })
});
 
//新闻详情
router.get('/new_content',function(req,res,next){
  console.log(req.query);
  var ncid=parseInt(req.query.ncid)+1;
  console.log(ncid);
   var sql=`select ncimg,ncontent, nccontent from news, new_content where new_content.ncid=? and news.nid=?`;
   pool.query(sql,[ncid,ncid],(err,result)=>{
     console.log(sql)
     if(err) throw (err);
     
     res.send(JSON.stringify(result));
   })
});
 
//公司列表

   router.get('/company', function(req, res, next) {
      var sql=`select * from company`;
      pool.query(sql,[],(err,result)=>{
       if(err) throw(err);
        res.send(JSON.stringify(result));
      })
    });
//公司详情 
 router.get('/company_content',function(req,res,next){
  console.log(req.query);
  var comcid=parseInt(req.query.comcid)+1;
   var sql=`select * from company_content where comcid=? `;
   pool.query(sql,[comcid],(err,result)=>{
     console.log(sql)
     if(err) throw (err);
     
     res.send(JSON.stringify(result));
   })
}); 
//扶持政策
router.get('/policy',function(req,res,next){
   var sql=`select * from policy`;
   pool.query(sql,[],(err,result)=>{
    if(err) throw(err);
     res.send(JSON.stringify(result));
  })
});

router.get('/policy_content',function(req,res,next){
  console.log(req.query);
  var pocid=parseInt(req.query.pocid)+1;
  var sql=`select * from policy_content where pocid = ?`;
  pool.query(sql,[pocid],(err,result)=>{
   if(err) throw(err);
    res.send(JSON.stringify(result));
 })
})
//每页大图
router.get('/big_img',function(req,res,next){
  var sql=`select * from big_img `;
  pool.query(sql,[],(err,result)=>{
   if(err) throw(err);
    res.send(JSON.stringify(result));
 })
});
 //园区简介
 router.get('/introduce',function(req,res,next){
  
  var sql=`select * from introduce `;
  pool.query(sql,[],(err,result)=>{
   if(err) throw(err);
    res.send(JSON.stringify(result));
 })
});
router.get('/introduce_content',function(req,res,next){
  console.log(req.query);
  var incid=parseInt(req.query.incid)+1;
  var sql=`select * from  introduce_content  where incid = ?`;
  pool.query(sql,[incid],(err,result)=>{
   if(err) throw(err);
    res.send(JSON.stringify(result));
 })
});

router.get('/advantage',function(req,res,next){
  var sql=`select * from  advantage`;
  pool.query(sql,[],(err,result)=>{
   if(err) throw(err);
    res.send(JSON.stringify(result));
 })
});
//轮播图子页面
router.get('/merit1',function(req,res,next){
  var sql=`select * from  merit1`;
  pool.query(sql,[],(err,result)=>{
   if(err) throw(err);
    res.send(JSON.stringify(result));
 })
});
router.get('/merit2',function(req,res,next){
  var sql=`select * from merit2`;
  pool.query(sql,[],(err,result)=>{
   if(err) throw(err);
    res.send(JSON.stringify(result));
 })
});
//application
router.get('/application',function(req,res,next){
  var sql=`select * from application`;
  pool.query(sql,[],(err,result)=>{
   if(err) throw(err);
    res.send(JSON.stringify(result));
 })
});

router.get('/application_content',function(req,res,next){
  console.log(req.query);
  var appcid=parseInt(req.query.appcid)+1;
  var sql=`select * from application_content where appcid = ?`;
  pool.query(sql,[appcid],(err,result)=>{
   if(err) throw(err);
    res.send(JSON.stringify(result));
 })
});
// 行业准入
router.get('/industry',function(req,res,next){
  console.log(req.query);
  var appcid=parseInt(req.query.appcid);
  if(appcid==3){
    inid=1
  }else if(appcid==5){
    inid=2
  }else {
    inid=3
  }
  var sql=`select * from industry where inid = ?`;
  pool.query(sql,[inid],(err,result)=>{
   if(err) throw(err);
    res.send(JSON.stringify(result));
 })
});
// 行业资讯
router.get('/industry_content',function(req,res,next){
  console.log(req.query);
  var appcid=parseInt(req.query.appcid);
  var indid;
  if(appcid==0||appcid==1||appcid==4){
    indid=1
  }else if(appcid==6){
    indid=5
  }else if(appcid==7){
    indid=6
  }else {
     indid=appcid+1
  }
  var sql=`select * from industry_content where indid = ?`;
  pool.query(sql,[indid],(err,result)=>{
   if(err) throw(err);
    res.send(JSON.stringify(result));
 })
});  
module.exports = router;
