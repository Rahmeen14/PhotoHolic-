var express     = require("express"),
    app         = express(),
    bodyParser  = require("body-parser"),
    mysql 		= require('mysql');
app.use(bodyParser.urlencoded({extended: true}));
app.set("view engine", "ejs");
app.use(express.static(__dirname + "/public"));

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',  //your username
  password : 'password',
  database : 'photoholic'         //the name of your db
});
app.get("/", function(req, res){
 var q = 'SELECT COUNT(*) as count FROM users';
 connection.query(q, function (error, results) {
 if (error) throw error;
 
 res.render("index",{results:results});
 });
});
app.get("/login", function(req, res){
   res.render("partials/login");
});
app.post("/login", function(req, res){
	//console.log(req);
	 connection.query(
  'SELECT * FROM users WHERE user_name = ?',
  [req.body.username],
  function (err, result) {
  	console.log(result);
  	var ui=result[0].user_id;
  	
    if (err) throw err;
    if(result[0]===undefined)
    	console.log("no such user");
    else
    {
    	var k=result[0];
    	if(k.password===req.body.password)
    	{
    		   connection.query(
  				'SELECT * FROM photos WHERE photo_user_id = ?',
 				 [ui],
  				function (err, result) {
    			if (err) throw err;
    				console.log(result);
    			res.render("personprofile",{u:k,p:result});
    		//res.render("personprofile",{u:result[0]});
    	});
     }
    	else
    		res.send("bhula dena mujhe");
    }
  }
);	
  });	//connection.close();

// show register form
app.get("/register", function(req, res){
   res.render("partials/register"); 
});
//handle sign up logic
app.post("/register", function(req, res){
  // console.log("req",req.body);
  var today = new Date();
  var users={
    "user_name":req.body.username,
    "email_id":req.body.emailid,
    "password":req.body.password,
    "profile_pic":req.body.profilepic,
    "created_at":today
  }
  connection.query('INSERT INTO users SET ?',users, function (error, results, fields) {
  if (error) {
    console.log("error ocurred",error);
    res.send({
      "code":400,
      "failed":"error ocurred"
    })
  }else{
    //console.log('The solution is: ', req.body.page);
      //console.log('The solution is: ', req.body.user);
      if(req.body.page!=undefined)
    		res.render("partials/page",{id:results.insertId,p:[]});
    	else
    		res.render("partials/person",{id:results.insertId});
    }
  });
});
app.post("/register/page", function(req, res){
  // console.log("req",req.body);
  var pages={
    "userid":req.body.userid,
    "purpose":req.body.purpose,
    "page_title":req.body.pagetitle
  }
  connection.query('INSERT INTO page SET ?',pages, function (error, results, fields) {
  if (error) {
    console.log("error ocurred",error);
    res.send({
      "code":400,
      "failed":"error ocurred"
    })
  }else{
    console.log('The solution is: ', results);
    res.redirect("/page/"+results.insertId);
  }
});
});

app.post("/register/person", function(req, res){
  // console.log("req",req.body);
  var person={
    "userid":req.body.userid,
    "first_name":req.body.firstname,
    "last_name":req.body.lastname
  }
  connection.query('INSERT INTO person SET ?',person, function (error, results, fields) {
  if (error) {
    console.log("error ocurred",error);
    res.send({
      "code":400,
      "failed":"error ocurred"
    })
  }else{
    console.log('The solution is: ', results);
    res.redirect("/person/"+results.insertId);
  }
});
});

app.get("/person/:id",function(req,res){
	//res.render("profile",{id:req.params.id});
	var u={}, r;
	//const r;
	var today = new Date();
	connection.query(
  'SELECT * FROM person WHERE person_id = ?',
  [req.params.id],
  function (err, result) {
    if (err) throw err;
    //console.log('SEARCH ' + result[0].first_name + ' rows');
    u["first_name"]=result[0].first_name;
    u["last_name"]=result[0].last_name;
    u["user_id"]=result[0].userid;
    r=result[0].userid;
    //console.log(u);
    connection.query(
  'SELECT * FROM users WHERE user_id = ?',
  [r],
  function (err, result) {
    if (err) throw err;
    //console.log(result[0]);
    u["user_name"]=result[0].user_name;
    u["email_id"]=result[0].email_id;
  	u["password"]=result[0].password;
  	u["profile_pic"]=result[0].profile_pic;
  	u["created_at"]=today;
  	connection.query(
  'SELECT * FROM photos WHERE user_id = ?',
  [r],
  function (err, result) {
    if (err) throw err;
    console.log(result);
    res.render("personprofile",{u:u});

});
  	
  	//console.log(u);
  }
);	
  }
);	//connection.close();
	
});
app.get("/page/:id",function(req,res){
	//res.render("profile",{id:req.params.id});
	var u={}, r;
	//const r;
	var today = new Date();
	connection.query(
  'SELECT * FROM page WHERE page_id = ?',
  [req.params.id],
  function (err, result) {
    if (err) throw err;
    //console.log('SEARCH ' + result[0].first_name + ' rows');
    u["page_title"]=result[0].page_title;
    u["purpose"]=result[0].purpose;
    u["userid"]=result[0].userid;
    r=result[0].userid;
    console.log(u);
    connection.query(
  'SELECT * FROM users WHERE user_id = ?',
  [r],
  function (err, result) {
    if (err) throw err;
    console.log(result[0]);
    u["user_name"]=result[0].user_name;
    u["email_id"]=result[0].email_id;
  	u["password"]=result[0].password;
  	u["profile_pic"]=result[0].profile_pic;
  	u["created_at"]=today;
  	res.render("pageprofile",{u:u});
  	console.log(u);
  }
);	
  }
);	//connection.close();
	
});
app.get("/person/:id/newpersonpost",function(req,res){
	res.render("partials/newpersonpost",{id:req.params.id});
	});
app.post("/person/:id/newpersonpost",function(req,res){
	var today = new Date();
  var pic={
    "image_url":req.body.imageurl,
    "caption":req.body.caption,
    "created_at":today,
    "photo_user_id":req.params.id
  }
   connection.query('INSERT INTO photos SET ?',pic, function (error, results, fields) {
  if (error) {
    console.log("error ocurred",error);
    res.send({
      "code":400,
      "failed":"error ocurred"
    })
  }else{
  	console.log("results are");
  	console.log(results);
  	 connection.query(
  'SELECT * FROM users WHERE user_id = ?',
  [req.params.id],
  function (err, result) {

  	 var m=result[0];
  	 connection.query(

  				'SELECT * FROM photos WHERE photo_user_id = ?',
 				 [req.params.id],
  				function (err, result) {
    			if (err) throw err;
    			//console.log("u cannot reach me");
    				//console.log(result);
    			res.render("personprofile",{u:m,p:result});
    		//res.render("personprofile",{u:result[0]});
    	});
    //console.log('The solution is: ', req.body.page);
});
    		
  }

	});
});
app.get("/person/:id/follows",function(req,res){
    var id=req.params.id;
     connection.query(

          'SELECT followee_user_id FROM follows WHERE follower_user_id = ?',
         [id],
          function (err, result) {
           
            var followed=[];
            for( i=0;i<result.length;++i)
              followed.push(result[i].followee_user_id);
             //console.log(not_followed);
          if (err) throw err;
          connection.query(

          'SELECT user_id FROM users WHERE user_id != ?',
         [id],
          function (err, result) {
            var not_followed=[];
           // console.log(result);
            for(i=0;i<result.length;++i)
              not_followed.push(result[i].user_id);
          if (err) throw err;
          //var diff = $(not_followed).not(followed);
          diff = not_followed.filter(function(x) { return followed.indexOf(x) < 0 })
          //console.log(diff);
          connection.query(
         'SELECT * FROM users WHERE user_id in (?)',
          [diff],
          function (err, result) {
            if(err) throw err;
            res.render("follows",{f:result,id:id});
          });
          

        });
          

      });
  });
app.post("/person/:id/:followee_id", function(req, res){
  // console.log("req",req.body);
  var today = new Date();
  var f={
    "followee_user_id":req.params.followee_id,
    "follower_user_id":req.params.id,
    "followed_at":today
  }
  console.log(f);
  connection.query('INSERT INTO follows SET ?',f, function (error, results, fields) {
  if (error) {
    console.log("error ocurred",error);
    res.send({
      "code":400,
      "failed":"error ocurred"
    })
  }else{
    console.log('The solution is: ', results);
    res.send("hey");
   // res.redirect("/page/"+results.insertId);
  }
});
});

app.listen(3000, 'localhost',function(){
	console.log("server on duty, mallady");
});