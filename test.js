$.ajax({
	method: "POST",
	url: "load.php",
	dataType:"json"
}).done(function(tab){
	cdtheque=tab;
	console.log(cdtheque);
}).fail(function(){
	alert("error");
});