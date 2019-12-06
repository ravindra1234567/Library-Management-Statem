
<html>
	<head>
	
	<script>
		
		function auther2()
		{
			
			if (typeof XMLHttpRequest != "undefined")
			{
				xmlHttp= new XMLHttpRequest();
			
			}

			else if (window.ActiveXObject)
			{
				xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
		
			}
	
			if (xmlHttp==null)
			{
				alert ("Browser does not support XMLHTTP Request")
				return
			}
	
	
			var v = document.getElementById("auther");
			v1 = v.value;
			//alert(v1);
			var url= "authernamewise.jsp?auther="+v1;
			xmlHttp.onreadystatechange = stateChange3;
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}	
		function stateChange3()

		{
			if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
			{
		
				a=document.getElementById("d1");
				a.style.background="white";
				a.style.color="black";
				a.innerHTML=xmlHttp.responseText;
		
			}
		}
		
		
	</script>
	
	<style>
		form{
				border-style:solid;
				width:500px;
				height:310px;
				border-width:2px;
				border-color:#232451;
				padding-top-width:50px;
				border-left-width:2px;
				border-right-width:2px;
				margin-left:500px;
			}
			.xyz{background:#76bcb9;text-align:center;height:50px;}
			input{
				width:400px;
				border-radius:7px;
				height:35px;
				background:#efebe8;
				margin-left:20px;
				}
				
				
				tr
			{	
					height: 30px;
					font-size: 10pt;
					color:black;
       				transition-property:background,height,font-weight,font-size;
    				transition-duration: 3s;
			}
			tr:hover 
			{	
   				 	height: 60px;
					background:#0000ff;
					font-weight: bold; 
					font-size: 13pt;
					color:#ffffff;
			}
			td
			{
				width:60px;	
			}
			td:hover
			{
				background:#ffff00;
				color:#000000;	
			}
			#headline{
						background-color:rgb(242, 192, 145);
						font-size:2em;color:rgb(226, 11, 32);
						font-family:bungee inline;
						height:50px;
						font-size:30px;
						color:white;
						text-align:center;
						transition-property:background,height,font-size,color;
						transition-duration:3s;
						transition-timing-function:linear;
						}
			   #headline:hover{
								height:100px;
								background:yellow;
								font-size:60px;
								color:blue;
							 }
		
				
				
	</style>
	
	</head>
	<body>
		<span style="font-size:30px;margin-left:50px;">Book Search</span>
		
		<div class="xyz">Auther Name Wise</div>
		
			<br><br><br>&nbsp&nbsp&nbsp Enter Auther Name<br><input type="text" name="auther" id="auther"><br><br><br>cjxbvxkn
			&nbsp&nbsp&nbsp Verification Code<input style="width:90px;"type="text" name="verfi">   <input style="width:90px"type="display"><br> 
			<button onclick="auther2();" style="border-redius:10px;margin-left:20px;height:30px;width:80px;background:#22c413;">click</button>
			
			<div id="d1"></div>
			
			
		
	</body>
</html>
