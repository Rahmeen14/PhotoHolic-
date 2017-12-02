var express = require("express");
var app = express.Router(),
 mysql    = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',  //your username
  password : 'password',
  database : 'photoholic'         //the name of your db
});
app.get("/profile_view/:id/:logged_id", function(req, res){
  var count=0, count2=0, truth_value=false, isPage=false;
      
  connection.query('select follower_user_id from follows where followee_user_id = ?', [req.params.id], function(err, result){
      if(err)
        throw err;
      else
      {
        for(i=0;i<result.length; i++)
        {
          if(result[i].follower_user_id == req.params.logged_id)
          {
                      truth_value=true;
            break;
          }
        }
      }
  connection.query(
  'SELECT * FROM users WHERE user_id = ?',
  [req.params.id],
  function (err, result) {
    var us= result[0];
    connection.query('select count(*) as cnt from follows where followee_user_id = ?', [req.params.id], function(err, result){
        if(result!=undefined)
        count=result[0].cnt;
    });
    connection.query('select count(*) as cnt from follows where follower_user_id = ?', [req.params.id], function(err, result){
        if(result!=undefined)
        count2=result[0].cnt;
    });
 
    var ui=req.params.id;
    if (err) console.log("err");
     connection.query(
          'SELECT * FROM photos WHERE photo_user_id = ?',
         [ui],
          function (err, result) {
          if (err) console.log("err");
          var ress=result;
                   
          connection.query('select * from person where userid = ?', [ui], function(err, result){
              if(result[0]!=undefined)
             res.render("person_profile",{u:us,p:ress, per:result[0], foll:count, folr:count2, id:req.params.logged_id,truth_value:truth_value});
              else
              {
                  connection.query('select * from page where user__id = ?', [ui], function(err, result){
             res.render("page_profile",{u:us,p:ress, per:result[0], foll:count, folr:count2, id:req.params.logged_id,truth_value:truth_value});
          });
          
              }
          });
          
      });
   
  });
});

});



app.get("/edit/:id", function(req, res){
  connection.query('select * from users where user_id = ?', [req.params.id], function(err, result){
    var editProfile={
              "user_name":result[0].user_name,
        "email_id":result[0].email_id,
        "password":result[0].password,
        "profile_pic":result[0].profile_pic
    };
    connection.query('select * from page where user__id = ?', [req.params.id], function(err, result){
      if(result[0]!= undefined){
        editProfile["page_title"]=result[0].page_title;
 
       editProfile["purpose"]=result[0].purpose;
       res.render("editPage", {person: editProfile, id: req.params.id});
      }
        else
        {
            connection.query('select * from person where userid = ?', [req.params.id], function(err, result){
                editProfile["first_name"]=result[0].first_name;
                editProfile["last_name"]=result[0].last_name;
                res.render("editPerson", {person: editProfile, id: req.params.id});
            });
        }
    });
  });
});

module.exports =app;