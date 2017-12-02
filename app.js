var express     = require("express"),
    app         = express(),
    bodyParser  = require("body-parser"),
    mysql 		= require('mysql'),
    flash       = require("connect-flash");
    var session = require('express-session');
    var cookieParser = require('cookie-parser');
    var moment = require('moment');
  
    moment().format();
      var viewOnlyRoutes = require('./routes/viewOnly'),
        adminRoutes= require('./routes/admin'),
        pageRoutes = require('./routes/page'),
        indexRoutes = require('./routes/index'),
        personRoutes= require('./routes/person'),
        extraRoutes = require('./routes/extras');
app.use(bodyParser.urlencoded({extended: true}));
app.set("view engine", "ejs");
//app.use(flash());
app.use(express.static(__dirname + "/public"));

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',  //your username
  password : 'password',
  database : 'photoholic'         //the name of your db
});

app.use(cookieParser('secret'));
app.use(session({cookie: { maxAge: 60000 }}));
app.use(flash());
app.use(function(req, res, next){
   //res.locals.currentUser = req.user;
   res.locals.error = req.flash("error");
   res.locals.success = req.flash("success");
   next();
});
app.get("/", function(req, res){
 var q = 'SELECT COUNT(*) as count FROM users';
 connection.query(q, function (error, results) {
 if (error) throw error;
 
 res.render("index",{results:results});
 });
});
app.use(viewOnlyRoutes);
app.use(adminRoutes);
app.use(pageRoutes);
app.use(indexRoutes);
app.use(personRoutes);
app.use(extraRoutes);

app.listen(3000, 'localhost',function(){
	console.log("server on duty, mallady");
});
