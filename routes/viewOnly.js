var express = require("express"),
 mysql    = require('mysql');
var router = express.Router();


var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',  //your username
  password : 'password',
  database : 'photoholic'         //the name of your db
});

router.get("/view1/:id", function(req, res){
connection.query("select * from view1", function(err, result){
  if(err)
    res.send(err);
  else
  {
    res.render("../views/view1.ejs", {p: result, id:req.params.id});
  }
});

});


router.get("/view3/:id", function(req, res){
connection.query("select * from new_view", function(err, result){
  if(err)
    res.send("Error, please go back and do something that would work");
  else
  {
    res.render("../views/view3.ejs", {result: result, id:req.params.id});
  }
});

});

router.get("/view2/:id", function(req, res){
connection.query("select * from view2 where user_id != ?", [req.params.id], function(err, result){
  if(err)
    res.send("Error, please go back and do something that would work");
  else
  {
    res.render("../views/view2.ejs", {f: result, id:req.params.id});
  }
});

});
module.exports =router;