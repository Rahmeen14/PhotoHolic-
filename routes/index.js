var express = require("express");
var app = express.Router(),
 mysql    = require('mysql');
var router = express.Router();
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',  //your username
  password : 'password',
  database : 'photoholic'         //the name of your db
});
app.get("/login", function(req, res){
   res.render("../views/login");
});
app.post("/login", function(req, res){
	
 if(req.body.username == "admin" && req.body.password=="password")
  res.redirect("/adminPage");
 else{
	 connection.query(
  'SELECT * FROM users WHERE user_name = ?',
  [req.body.username],
  function (err, result) {
  	console.log(result[0]); 	
    
  	
    if (err) console.log("o");
    if(result[0]===undefined)
    {
        req.flash('error', 'Incorrect Username or password!');
        res.redirect("/login");
    }
    	
  
    else
    {
      var ui=result[0].user_id;
    	var k=result[0];
    	if(k.password===req.body.password)
    	{
        connection.query(
          'SELECT * FROM person WHERE userid = ?',
         [ui],
          function (err, result) {
          if (err) throw err;
          else
          {
              if(result[0]===undefined)
               {
              var routey="/page/"+ui+"/";
                res.redirect(routey);
                
           } 
              else
              {
                 req.flash('success', "Succesfully logged in");
                //res.redirect("/register");
                res.redirect("/person/"+ui+"/");
              }
          }
      });

     }
    	else
    		
      {
         req.flash('error', 'Incorrect Username or password!');
                res.redirect("/login");
      }
    }
  }
);	}
  });	
app.get("/logout", function(req, res){
   res.redirect("/");
});
app.get("/register", function(req, res){
   res.render("../views/register"); 
});

app.post("/register", function(req, res){
  
  var today = new Date();
  var users={
    "user_name":req.body.username,
    "email_id":req.body.emailid,
    "DOB": req.body.dob,
    "password":req.body.password,
    "profile_pic":req.body.profilepic,
    "created_at":today

  }
  connection.query('INSERT INTO users SET ?',users, function (error, results, fields) {
  if (error) {
    console.log("error ocurred",error);
    
    req.flash('error', error.sqlMessage);
    res.redirect("/register");
  }else{
    
      if(req.body.page!=undefined)
    		res.render("../views/page",{id:results.insertId,p:[]});
    	else
    		res.render("../views/person",{id:results.insertId});
    }
  });
});
app.post("/register/page", function(req, res){
 
  var pages={
    "user__id":req.body.userid,
    "purpose":req.body.purpose,
    "page_title":req.body.pagetitle
  }
  connection.query('INSERT INTO page SET ?',pages, function (error, results, fields) {
  if (error) {
    console.log("error ocurred",error);
   
     req.flash('error', error.sqlMessage);
    res.redirect("/register/page");
  }else{
  
    res.redirect("/page/"+req.body.userid);
  }
});
});

app.post("/register/person", function(req, res){
  
  var person={
    "userid":req.body.userid,
    "first_name":req.body.firstname,
    "last_name":req.body.lastname
  }
  connection.query('INSERT INTO person SET ?',person, function (error, results, fields) {
  if (error) {
    console.log("error ocurred",error);
    
     req.flash('error', error.sqlMessage);
    res.redirect("/register/person");
  }else{
        res.redirect("/login");
  }
});
});
module.exports = app;