

var express = require("express");
var app = express.Router(),
 mysql    = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',  //your username
  password : 'password',
  database : 'photoholic'         //the name of your db
});
app.get("/page/:id",function(req,res){

  console.log(req.params.id);
	var u={}, r;
	
	var today = new Date();
	connection.query(
  'SELECT * FROM page WHERE user__id = ?',
  [req.params.id],
  function (err, result) {
    if (err || result[0]==undefined)
    {console.log("e7");
    }

    console.log("lalala");
    console.log(result[0]);
    
    u["page_title"]=result[0].page_title;
    u["purpose"]=result[0].purpose;
    u["user__id"]=req.params.id;
    r=req.params.id;
 
    connection.query(
  'SELECT * FROM users WHERE user_id = ?',
  [r],
  function (err, result) {
    if (err) console.log("e8");

 
    u["user_name"]=result[0].user_name;
    u["email_id"]=result[0].email_id;
  	u["password"]=result[0].password;
  	u["profile_pic"]=result[0].profile_pic;
  	u["created_at"]=today;
    u["user_id"]=req.params.id;
    connection.query('select * from page where user__id = ?',[req.params.id], function(err, result){
        var pageu=result[0];
    connection.query('select count(*) as cnt from follows where followee_user_id = ?', [req.params.id], function(err, result){
      var count= result[0].cnt;
     connection.query(
          'SELECT * FROM photos WHERE photo_user_id = ?',
         [r],
          function (err, result) {
          if (err) console.log("err");
                    res.render("pageprofile",{pag:pageu,u:u,p:result, cnt: count});
     
      });});} );
  });	
  });	
	});
app.get("/page/:id/newpagepost", function(req, res){
  res.render("../views/newpagepost", {id: req.params.id});
});

app.post("/page/:id/newpagepost",function(req,res){
  var today = new Date();
  var pic={
    "image_url":req.body.imageurl,
    "caption":req.body.caption,
    "posted_at":today,
    "photo_user_id":req.params.id,
    "photo_tag_text":req.body.tags
  }
  var t=req.body.tags;
  var arr=[];
  var k=0;
  for(var i=0;i<t.length;++i)
  {
    if(t[i]==="#")
    {
      i++;
      while(t[i]!="#")
      {
        ++i;
        if(i>=t.length)
        {
          break;
        }
      }
       arr.push(t.substring(k+1, i));
      k=i;
      i--;
    }
   
  }
  var hashtags=[];
    connection.query(
  'SELECT * FROM users WHERE user_id = ?',
  [req.params.id],
  function (err, result) {
    pic["photo_user_name"]=result[0].user_name;
   connection.query('INSERT INTO photos SET ?',pic, function (error, results, fields) {
  if (error) {
    console.log("error ocurred",error);
   
    req.flash('error', error.sqlMessage);
    res.redirect("/person/"+req.params.id+"/newpagepost");
  }else{
    
    
    for(j=0;j<arr.length;++j){
      var temp=[];
      temp.push(arr[j],results.insertId,today);
      hashtags.push(temp);
    }
    console.log(hashtags);

     connection.query(
  'SELECT * FROM users WHERE user_id = ?',
  [req.params.id],
  function (err, result) {
      console.log("e1");
     var m=result[0];
       connection.query('select * from page where user__id = ?', [req.params.id], function(err, result){
        var pag=result[0];
        var count=0;
         connection.query('select count(*) as cnt from follows where followee_user_id = ?', [req.params.id], function(err, result){
          var count=result[0].cnt;
     connection.query(

          'SELECT * FROM photos WHERE photo_user_id = ?',
         [req.params.id],
          function (err, result) {
          if (err) console.log("e5");

            var sql = "INSERT INTO hashtags (tag_name,tag_photo_id,created_at) VALUES ?";
            connection.query(sql, [hashtags], function(err) {
               if (err) throw err;
              });
          
          res.render("pageprofile",{pag:pag,u:m,p:result,cnt:count});

      }); }); });
 
});
        
  }

  });
 });
});
app.get("/page/profile/:id", function(req, res){
  res.render("page", {});
});
app.get("/delete/page/:perID/:id", function(req, res){
 
    connection.query("delete from likes where like_photo_id= ?",[req.params.id], function(err, result){
    if(err)
      throw err;
    connection.query("delete from comments where comment_photo_id= ?",[req.params.id], function(err, result){
    if(err)
      throw err;
    connection.query("delete from hashtags where tag_photo_id= ?",[req.params.id], function(err, result){
    if(err)
      throw err; 
     connection.query("delete from photos where photo_id = ?", [req.params.id], function(err, result){
    if(err)
      throw err;
    res.redirect("/page/"+req.params.perID);
  });
  });
  });
  });
});

app.post('/updatePage/:id', function(req, res){
      console.log("THe body REsponse is     ", req.body);
    connection.query('update users set ? where user_id = ?', [{
    "user_id":req.params.id,
      "user_name":req.body.username,
        "email_id":req.body.emailid,
        "password":req.body.password,
        "profile_pic":req.body.profilepic
  } ,req.params.id], function(err, result){
    connection.query('update page set ? where user__id = ?', [{
      "page_title": req.body.pagetitle,
      "purpose": req.body.purpose
    } ,req.params.id], function(err, result){
          res.redirect("/page/"+req.params.id);
      });
    });
});
module.exports = app;