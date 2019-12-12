//引入第三方模块
var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var cors=require('cors');
var session=require('express-session');
var bodyParser=require('body-parser');
var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');

var app = express();
 //session
app.use(session({
  secret:"128位字符串",
  resave:true,
  saveUninitialized:true
}))
app.use(bodyParser.json());
app.use(express.static('public'));
//跨域
app.use(cors({
  origin:["http://127.0.0.1:8080",
  "http://localhost:8080"],
  credentials:true
}))

//post
app.use(bodyParser.urlencoded({
	extended:false
}));
// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
//引入路由模块
app.use('/indexs', indexRouter);
app.use('/users', usersRouter);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
