<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" indent="yes"/>	
	<xsl:template match="/">
		<xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;</xsl:text>
			<xsl:element name="html" >
			<xsl:element name="head">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<style>	
			
/* Style the tab content */


.tab button {
  background-color: white;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
margin-top: 35px;
  transition: 0.3s;
 margin-bottom: 10px;
font-size: 16px;
}

.tab {
  overflow: hidden;
   background-color:white;
	
}

div.td1 {
	height: 570px;	
	overflow-y:auto;
	
}



.accordion {
  background-color: black;
  color: white;
  cursor: pointer;
  padding:  10px;
  width: 910px;
  border: none;
  text-align: left;
  outline: none;
  transition: 0.4s;
  display: block;
  
}

.accordion:after {
  content: '\005E';
  color: white;
  font-weight: bold;
  float: left;
	 margin-right:10px
 
}

.active:after {
  content: "\2304";
}

.panel {
  width: 910px;
  display: none;
  background-color: white;
  overflow: hidden;
 }

	.accordion1 {
	background-color:purple;
  color: white;
  cursor: pointer;
  padding:  10px;
	width: 288px;
  border: none;
    text-align: left;
  outline: none;
  transition: 0.4s;
  display:inline-blocks;
  
}
.accordion1:after {
  content: '\005E';
  color: white;
  font-weight: bold;
  float: left;
     margin-right:10px
 
}
.active:after {
  content: "\2304"; 
}

.panel1 {

  display: none;
  background-color: white;
  overflow: hidden;
  font-size: 15px;

}

.accordion2 {
	background-color:black;
  color: white;
  cursor: pointer;
  padding:  10px;
  width: 288px;
  border: none;
    text-align: left;
  outline: none;
  transition: 0.4s;
  display:inline-blocks;
  
}
.accordion2:after {
  content: '\005E';
  color: white;
  font-weight: bold;
  float: left;
	 margin-right:10px
 
}
.active:after {
  content: "\2304"; 
  
}

.accordion3 {
	background-color:maroon;
  color: white;
  cursor: pointer;
  padding:  10px;
  width: 288px;
  border: none;
    text-align: left;
  outline: none;
  transition: 0.4s;
  display:inline-blocks;
  
}
.accordion3:after {
  content: '\005E';
  color: white;
  font-weight: bold;
  float: left;
	 margin-right:10px
 
}
.active:after {
  content: "\2304"; 
  
}

div.main {
margin-left:75px;
}

	</style>
		</xsl:element>
	<body onload="myFunctionO();">
	
<div class="main">

<table><tr><td>
	<div class="tab">
	<table>
	<tr><td>
        <img width="150" height="50"  src="\\Ctsc00954972001\C\HTMLDemo\POC_MP\logo.jpg"/>
	</td>
	<td>
	<button class="tablink" onclick="setColor1();openPage('OVERVIEW');myFunctionO();" id="button1" style="color:grey;margin-left:20px;"><b>OVERVIEW</b></button>
	<button class="tablink" onclick="setColor2();openPage('PAYMENT');myFunctionP();" id="button2" style="color:grey;margin-left:20px;"><b>PAYMENT SUMMARY</b></button>
	<button class="tablink" onclick="setColor3();openPage('CLAIMS');myFunctionC();" id="button3" style="color:grey;margin-left:20px;"><b>CLAIMS</b></button>
	<button class="tablink" onclick="setColor4();openPage('BENEFIT');myFunctionB();" id="button4" style="color:grey;margin-left:20px;"><b>BENEFIT SUMMARY</b></button>
	</td>
		
	</tr>
	</table>
	</div>
	</td>
	</tr>	
	<tr><td>  <div class="td1">
	<div id="OVERVIEW" class="tabcontent"  >	
		<div id="myTable" style="margin-top:10px;margin-bottom:10px;">
		</div>
	<table><tr><td>
	<button class="accordion1">CUSTOMER INFO</button>
	<div class="panel1" id="customerinfo1">

	</div>
	</td><td style="width:30px;"></td>
	<td>
	<button class="accordion2">MEMBER INFO </button>
	<div class="panel1" id = "memberinfo1">
	
	</div>
	</td><td style="width:30px;"></td>
	<td>
	<button class="accordion3">COMPANY INFO</button>
	<div class="panel1" id="companyinfo1">
	</div>
	</td><td style="width:25px;"></td></tr>
	<tr style="height:25px;"></tr></table>
	
	<button class="accordion">Explanation of Benefits (EOB)</button>
	<div class="panel" id="eob1">
	
	</div>
	
	
	
	<div id="myTable1" style="margin-top:30px;">
	</div>
	</div>

	
<div id="PAYMENT" class="tabcontent">
			<div> <table> <tr><td>
			<div id="myTable2" style="margin-top:10px;">
		
					</div>
			</td><td style="width:25px;"></td></tr></table></div>		
			</div>
			
			
			<div id="CLAIMS" class="tabcontent">
						<div> <table> <tr><td>

			<div id="myTable3" style="margin-top:10px;" >
					</div>
								</td><td style="width:25px;"></td></tr></table></div>		

			</div>
			
			<div id="BENEFIT" class="tabcontent">
						<div> <table> <tr><td>

			<div id="myTable4" style="margin-top:10px;">
			
			</div>
						</td><td style="width:25px;"></td></tr></table></div>		

			</div>
			
			
			<div id="unused" class="tabcontent">
			<xsl:copy-of select="@*|node()" />
			</div>
			
			
</div></td> <td style="width:10px;"></td><td>  <video id="vd" controls="controls" height="450" width="200" ></video></td></tr>
</table>
</div>		
			
	<script>
<![CDATA[
document.getElementById("unused").style.display="none";
document.getElementById("button1").click();






	var tst = vdo.textContent; 
	
	

var str1 = vdo.textContent.trim();
var str2 = ".mp4";
var res = str1.concat(str2); 
var result = res.trim();


var vsrc = document.getElementById("vd");
vsrc.src = result;
vsrc.autoplay = true;
vsrc.load(); 



function myFunctionP() {
 var x = document.getElementById("payment1");
x.setAttribute("id", "myTr");
  document.getElementById("myTable2").appendChild(x);
 var y = document.getElementById("payment2");
  document.getElementById("myTable2").appendChild(y);  
    var t = document.getElementById("test1");
	
	
 }
 

 
function myFunctionO() {
 var x = document.getElementById("overview");
x.setAttribute("id", "myTr");
  document.getElementById("myTable1").appendChild(x);
 var y = document.getElementById("overview2");
y.setAttribute("id", "myTr");
  document.getElementById("myTable1").appendChild(y);  
 var z = document.getElementById("overview3");
z.setAttribute("id", "myTr");
  document.getElementById("myTable1").appendChild(z);  
   var t = document.getElementById("test1");
t.setAttribute("id", "myTr");
  document.getElementById("myTable").appendChild(t);
   var a = document.getElementById("customerinfo");
a.setAttribute("id", "myTr");
  document.getElementById("customerinfo1").appendChild(a);
   var b = document.getElementById("memberinfo");
b.setAttribute("id", "myTr");
  document.getElementById("memberinfo1").appendChild(b);
   var c = document.getElementById("companyinfo");
c.setAttribute("id", "myTr");
  document.getElementById("companyinfo1").appendChild(c);
   var d = document.getElementById("eob");
d.setAttribute("id", "myTr");
  document.getElementById("eob1").appendChild(d);
  
  
  var vdo = document.getElementById("Video");
	vdo.setAttribute("id", "vdo1");
	document.getElementById("myTable1").appendChild(vdo);
	
	
	
	




	var tst = vdo.textContent; 
	
	

var str1 = vdo.textContent.trim();
var str2 = ".mp4";
var res = str1.concat(str2); 
var result = res.trim();


var vsrc = document.getElementById("vd");
vsrc.src = result;
vsrc.autoplay = true;
vsrc.load(); 
	
  
 }


function myFunctionC() {
  var x = document.getElementById("claims1");
 x.setAttribute("id", "myTr");
  document.getElementById("myTable3").appendChild(x);
  var y = document.getElementById("claims2");
 y.setAttribute("id", "myTr");
  document.getElementById("myTable3").appendChild(y);
  var z = document.getElementById("claims3");
 z.setAttribute("id", "myTr");
  document.getElementById("myTable3").appendChild(z);
}

function myFunctionB() {
  var x = document.getElementById("benefit1");
 x.setAttribute("id", "myTr");
  document.getElementById("myTable4").appendChild(x);
  var y = document.getElementById("benefit2");
 y.setAttribute("id", "myTr");
  document.getElementById("myTable4").appendChild(y);
  var z = document.getElementById("benefit3");
 z.setAttribute("id", "myTr");
  document.getElementById("myTable4").appendChild(z);
  var a = document.getElementById("benefit4");
 a.setAttribute("id", "myTr");
  document.getElementById("myTable4").appendChild(a);
}



function openPage(pageName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].style.backgroundColor = "";
  }
  document.getElementById(pageName).style.display = "block";
 }

var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.display === "block") {
      panel.style.display = "none";
    } else {
      panel.style.display = "block";
    }
  });
}
var acc = document.getElementsByClassName("accordion1");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.display === "block") {
      panel.style.display = "none";
    } else {
      panel.style.display = "block";
    }
  });
}

var acc = document.getElementsByClassName("accordion2");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.display === "block") {
      panel.style.display = "none";
    } else {
      panel.style.display = "block";
    }
  });
}

var acc = document.getElementsByClassName("accordion3");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.display === "block") {
      panel.style.display = "none";
    } else {
      panel.style.display = "block";
    }
  });
}

	
function setColor1(){
	var a,b,c,d
		a= document.getElementById("button1");
		b= document.getElementById("button2");
	   c= document.getElementById("button3");
	    d=document.getElementById("button4");
		
	
	 a.style.color = "purple";
	  b.style.color = "grey";
	   c.style.color = "grey";
	   d.style.color = "grey";
	
	}
	
	function setColor2(){
	var a,b,c,d
		a= document.getElementById("button1");
		b= document.getElementById("button2");
	   c= document.getElementById("button3");
	    d=document.getElementById("button4");
		
	
	 a.style.color = "grey";
	  b.style.color = "purple";
	   c.style.color = "grey";
	   d.style.color  = "grey";
	}
	
	function setColor3(){
	var a,b,c,d
		a= document.getElementById("button1");
		b= document.getElementById("button2");
	   c= document.getElementById("button3");
	    d=document.getElementById("button4");
		
	
	 a.style.color = "grey";
	  b.style.color = "grey";
	   c.style.color = "purple";
	   d.style.color  = "grey";
	}
	
	function setColor4(){
	var a,b,c,d
		a= document.getElementById("button1");
		b= document.getElementById("button2");
	   c= document.getElementById("button3");
	    d=document.getElementById("button4");
		
	
	 a.style.color = "grey";
	  b.style.color = "grey";
	   c.style.color = "grey";
	   d.style.color  = "purple";
	}
]]>
</script>
		
		</body>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>
