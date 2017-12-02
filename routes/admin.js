var express = require("express");
var router = express.Router(),
 mysql    = require('mysql');
var router = express.Router();
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',  //your username
  password : 'password',
  database : 'photoholic'         //the name of your db
});
var moment = require('moment');
  
    moment().format();

router.get("/adminPage", function(req, res){
  var date= new Date();
  date=date - 7*24*60*60*1000;
  var formatted = new Date(date);
  console.log(formatted, " lol ");
  //var obj={signedIn:0, };
  var obj={};
  connection.query('select count(*) as count from users where created_at >= ?', [formatted], function(err, result){
  obj["signedUp"]=result[0].count;
  connection.query('select count(*) as count from photos where posted_at >= ?', [formatted], function(err, result){
  obj["posted"]=result[0].count;
  connection.query('select count(*) as count from comments where created_at >= ?', [formatted], function(err, result){
  obj["commented"]=result[0].count;
  connection.query('select count(*) as count from follows where followed_at >= ?', [formatted], function(err, result){
  obj["followed"]=result[0].count;
  console.log(obj);

   res.render("../views/adminPage", {obj:obj});
});
  });
});
  });
 
});
router.get("/adminView1", function(req, res){
  connection.query('select * from photoholic.admin_details_person order by created_at desc', function(err, result){
    if(err)
    {
      req.flash("error", "No Users in the Database, LOL");
      res.redirect("/adminPage");
    }
    res.render("../views/admin_view", {o:result});
  });
});
router.get("/adminView2", function(req, res){
  connection.query('select * from photoholic.admin_details_page order by created_at desc', function(err, result){
    if(err)
    {
      req.flash("error", "No pages in the Database, LOL!");
      res.redirect("/adminPage");
    }
    res.render("../views/admin_view2", {o:result});
  });
});
router.get("/adminView3", function(req, res){
  connection.query('select * from photoholic.admin_details_photos order by posted_at desc', function(err, result){

    if(err)
    {
      req.flash("error", "No pictures in the Database, LOL!");
      res.redirect("/adminPage");
    }
    res.render("../views/admin_view3", {o:result});
  });
});
router.get("/adminView4", function(req, res){
connection.query("select * from new_view", function(err, result){
  if(err)
  {
    req.flash("error", "No tags in the Database, LOL!");
      res.redirect("/adminPage"); 
  }
  else
  {
    res.render("../views/admin_view4", {result: result});
  }
});

});
module.exports = router;