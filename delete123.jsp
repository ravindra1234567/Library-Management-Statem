<html>
	<head>
	<script>
		function delete1()
		{
			alert("hi");
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
	
	
			var v = document.getElementById("enrollment");
			v1 = v.value;
			alert(v1);
			var url= "studentdelete.jsp?enrollment="+v1;
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
				height:500px;
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
	</style>
	</head>
	<body >
		<span style="font-size:30px;margin-left:50px;">User Login Form</span>
		<div class="xyz">DELETE FORM</div>
		<br><br><br>&nbsp&nbsp&nbsp Enter Enrollment No.<br><input type="text" name="enrollment" id="enrollment"><br><br><br>
		<button  style="border-redius:10px;margin-left:20px;height:30px;width:80px;background:#22c413;" onclick="delete1();"> Click </button>
		<div id="d1"></div>