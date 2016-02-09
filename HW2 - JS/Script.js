function fib(n){
	if(n==0){
		return 0;
	}
	if(n==1){
		return 1;
	}
	else{
		return fib(n-1)+fib(n-2);
	}
}



$(document).ready(function(){

	setInterval(function(){
		var d = new Date();
		$(".date").text(d);
	},1000);

	var n = 0;
	 setInterval(function(){
		n = n + 1;
		if (n==11){
			n=1;
		}
		$(".fib").text( "fibonacci of "+ n +"= " +fib(n));
	}, 2000);

	 setInterval(function(){
	 	if ($(".flag").attr("src")=="brasil.png"){
	 		$(".flag").attr("src","us.gif");
	 	}
	 	else{
	 		$(".flag").attr("src","brasil.png");	
	 	}

	 },500);


});
