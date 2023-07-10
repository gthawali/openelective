 
<%@page import="models.*"%>
<%@page import="java.util.List"%>
<%@page import="beans.BranchList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
 
<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title> </title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">

<script language="Javascript" type="text/javascript">
 

function createRequestObject() {
    var tmpXmlHttpObject;
    if (window.XMLHttpRequest) {
            tmpXmlHttpObject = new XMLHttpRequest();
    } else if (window.ActiveXObject) {
        tmpXmlHttpObject = new ActiveXObject("Microsoft.XMLHTTP");
    }

    return tmpXmlHttpObject;
}


var http = createRequestObject();

function makeGetRequest1(st) {
   // st=document.frm.state.value;
   
    http.open('get', 'Semesters1?courseId=' + st);
    http.onreadystatechange = processResponse1;
    http.send(null);
}

function processResponse1() {
    if(http.readyState == 4){
        var response = http.responseText;
        document.getElementById('sem').innerHTML = response;
    }
}
 
</script>

<script language="Javascript" type="text/javascript">
 

function createRequestObject() {
    var tmpXmlHttpObject;
    if (window.XMLHttpRequest) {
            tmpXmlHttpObject = new XMLHttpRequest();
    } else if (window.ActiveXObject) {
        tmpXmlHttpObject = new ActiveXObject("Microsoft.XMLHTTP");
    }

    return tmpXmlHttpObject;
}


var http = createRequestObject();

function makeGetRequestInd(st) {
   // st=document.frm.state.value;
   
    http.open('get', 'Courses?branch=' + st);
    http.onreadystatechange = processResponseInd;
    http.send(null);
}

function processResponseInd() {
    if(http.readyState == 4){
        var response = http.responseText;
        document.getElementById('courses').innerHTML = response;
    }
}
 
</script>
</head>
<body id="top">
  
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row1">
  <header id="header" class="hoc clear">
    <div id="logo" class="fl_left"> 
      <!-- ################################################################################################ -->
      <h1><a href="/home"> Open Elective System
</a></h1>
      <!-- ################################################################################################ -->
    </div>
    <nav id="mainav" class="fl_right"> 
      <!-- ################################################################################################ -->
      <ul class="clear">
        <li class="active"><a href="/home">Home</a></li>
        <!--<li><a class="drop" href="#">Pages</a>
          <ul>
            <li><a href="pages/gallery.html">Gallery</a></li>
            <li><a href="pages/full-width.html">Full Width</a></li>
            <li><a href="pages/sidebar-left.html">Sidebar Left</a></li>
            <li><a href="pages/sidebar-right.html">Sidebar Right</a></li>
            <li><a href="pages/basic-grid.html">Basic Grid</a></li>
            <li><a href="pages/font-icons.html">Font Icons</a></li>
          </ul>
        </li>-->
        <!--<li><a class="drop" href="#">Dropdown</a>
          <ul>
            <li><a href="#">Level 2</a></li>
            <li><a class="drop" href="#">Level 2 + Drop</a>
              <ul>
                <li><a href="#">Level 3</a></li>
                <li><a href="#">Level 3</a></li>
                <li><a href="#">Level 3</a></li>
              </ul>
            </li>
            <li><a href="#">Level 2</a></li>
          </ul>
        </li>-->
        <li><a href="#introblocks">Registration</a></li>
        <li><a href="#latest">Login</a></li>
         
      </ul>
      <!-- ################################################################################################ -->
    </nav>
  </header>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper bgded overlay gradient" style="background-color:transparent">
    <div class="container-fluid">
        <!-- #region Jssor Slider Begin -->
        <!-- Generator: Jssor Slider Composer -->
        <!-- Source: https://www.jssor.com/demos/banner-slider.slider/=edit -->
        <script src="js/jssor.slider-28.0.0.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            window.jssor_1_slider_init = function () {

                var jssor_1_SlideshowTransitions = [
                    { $Duration: 800, x: -0.3, $During: { $Left: [0.3, 0.7] }, $Easing: { $Left: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
                    { $Duration: 800, x: 0.3, $SlideOut: true, $Easing: { $Left: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 }
                ];

                var jssor_1_options = {
                    $AutoPlay: 1,
                    $SlideshowOptions: {
                        $Class: $JssorSlideshowRunner$,
                        $Transitions: jssor_1_SlideshowTransitions,
                        $TransitionsOrder: 1
                    },
                    $ArrowNavigatorOptions: {
                        $Class: $JssorArrowNavigator$
                    },
                    $ThumbnailNavigatorOptions: {
                        $Class: $JssorThumbnailNavigator$,
                        $Orientation: 2,
                        $NoDrag: true
                    }
                };

                var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

                /*#region responsive code begin*/

                var MAX_WIDTH = 1200;

                function ScaleSlider() {
                    var containerElement = jssor_1_slider.$Elmt.parentNode;
                    var containerWidth = containerElement.clientWidth;

                    if (containerWidth) {

                        var expectedWidth = Math.min(MAX_WIDTH || containerWidth, containerWidth);

                        jssor_1_slider.$ScaleWidth(expectedWidth);
                    }
                    else {
                        window.setTimeout(ScaleSlider, 30);
                    }
                }

                ScaleSlider();

                $Jssor$.$AddEvent(window, "load", ScaleSlider);
                $Jssor$.$AddEvent(window, "resize", ScaleSlider);
                $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
                /*#endregion responsive code end*/
            };
        </script>
        <style>
            /*jssor slider loading skin spin css*/
            .jssorl-009-spin img {
                animation-name: jssorl-009-spin;
                animation-duration: 1.6s;
                animation-iteration-count: infinite;
                animation-timing-function: linear;
            }

            @keyframes jssorl-009-spin {
                from {
                    transform: rotate(0deg);
                }

                to {
                    transform: rotate(360deg);
                }
            }

            .jssora061 {
                display: block;
                position: absolute;
                cursor: pointer;
            }

                .jssora061 .a {
                    fill: none;
                    stroke: #fff;
                    stroke-width: 360;
                    stroke-linecap: round;
                }

                .jssora061:hover {
                    opacity: .8;
                }

                .jssora061.jssora061dn {
                    opacity: .5;
                }

                .jssora061.jssora061ds {
                    opacity: .3;
                    pointer-events: none;
                }
        </style>
        <div id="jssor_1" style="position:relative;margin:0 auto;top:0px;left:0px;width:980px;height:380px;overflow:hidden;visibility:hidden;">
            <!-- Loading Screen -->
            <div data-u="loading" class="jssorl-009-spin" style="position:absolute;top:0px;left:0px;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
                <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="img/spin.svg" />
            </div>
            <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:980px;height:380px;overflow:hidden;">
                <div>
                    <img data-u="image" src="img/045.jpg" />
                    <div u="thumb">
                        

                    </div>
                </div>
                <div>
                    <img data-u="image" src="img/043.jpg" />
                    <div u="thumb">
                       
                    </div>
                </div>
                <div>
                    <img data-u="image" src="img/044.jpg" />
                    <div u="thumb">
                        
                    </div>
                </div>
            
            </div> 
            <!-- Thumbnail Navigator -->
            <div u="thumbnavigator" style="position:absolute;bottom:0px;left:0px;width:980px;height:50px;color:#FFF;overflow:hidden;cursor:default;background-color:rgba(0,0,0,.5);">
                <div u="slides">
                    <div u="prototype" style="position:absolute;top:0;left:0;width:980px;height:50px;">
                        <div u="thumbnailtemplate" style="position:absolute;top:0;left:0;width:100%;height:100%;font-family:arial,helvetica,verdana;font-weight:normal;line-height:50px;font-size:16px;padding-left:10px;box-sizing:border-box;"></div>
                    </div>
                </div>
            </div>
            <!-- Arrow Navigator -->
            <div data-u="arrowleft" class="jssora061" style="width:55px;height:55px;top:0px;left:25px;" data-autocenter="2" data-scale="0.75" data-scale-left="0.75">
                <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                    <path class="a" d="M11949,1919L5964.9,7771.7c-127.9,125.5-127.9,329.1,0,454.9L11949,14079"></path>
                </svg>
            </div>
            <div data-u="arrowright" class="jssora061" style="width:55px;height:55px;top:0px;right:25px;" data-autocenter="2" data-scale="0.75" data-scale-right="0.75">
                <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                    <path class="a" d="M5869,1919l5984.1,5852.7c127.9,125.5,127.9,329.1,0,454.9L5869,14079"></path>
                </svg>
            </div>
        </div>
        <script type="text/javascript">
    jssor_1_slider_init();
        </script>
        <!-- #endregion Jssor Slider End -->
    </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
 
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper coloured">
  <article class="hoc cta clear"> 
    <!-- ################################################################################################ -->
 
    <!-- ################################################################################################ -->
  </article>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <main class="hoc container container1 clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <section id="introblocks">
      <div class="sectiontitle">
        <h2>Student Registration</h2>
         
      </div>
      <ul class="nospace group">
        <li class="one_half first">
          <article> 
            <h6 class="heading"> </h6>
             <img src="images/studReg.png" width="60%"/>
          </article>
        </li>
        <li class="one_half">
           
<%
	BranchList bl = new BranchList();
	List<BranchList> lst = bl.getBranchList();
%>
  
<form name="frm" method="post" action="registeruser" enctype="multipart/form-data"><table>
	<tr><td>Userid</td>
	<td><input type="text" name="userid" class="form-control" required></td>
	</tr>
	<tr><td>User Name</td>
	<td><input type="text" name="usernm" class="form-control" required></td>
	</tr>
	<tr><td>Password</td>
	<td><input type="password" name="pswd" class="form-control" required></td>
	</tr>
	 <tr>
                    <td>Usertype</td>
                    <td><select name="usertype" required class="form-control">                   
                    <option value="student">Student</option>
                    <option value="exstudent">Ex-student</option>

                        </select>          </td>
                </tr>
       <tr><td>Mobile Number</td>
       	<td><input type="text" name="mobileno"  pattern="^\d{10}$" class="form-control" required></td></tr>
       <tr>
		<td>Email Address</td>       
       <td><input type="text" name="emailid" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"  class="form-control" required></td>
       </tr>
     
       <tr>
<td>Gender</td>
<td>
  <input type="hidden" name="userstatus" value="deactive"/>
<input type="radio" name="gender" value="Male"   checked="checked" required />Male 
<input type="radio" name="gender" value="Female"  required/>Female 
</td>
</tr>
        
       <tr>
       	<td>Branch</td>
       	<td><select name="branch" required class="form-control" onchange="makeGetRequestInd(this.value)">
       	<option value=""><---Select---></option> 
		
       	<%for(int i=0 ;i<lst.size();i++) {%>
       			<option value=<%=lst.get(i).getBranchname()%>><%=lst.get(i).getBranchname() %></option>
		<%} %>
       	</select></td>
       	
       </tr>
       <tr>
	<td>Course</td>
	<td>
	<div id="courses" name="courses"></div>
	</td>
	</tr>
	<tr>
	<td>Semester</td>
	<td>
	<div id="sem" name="sem"></div>
	</td>
	</tr>
      
       <tr>
       	<td>Date Of Birth</td>
       	<td><input type="date" name="dob" class="form-control"></td>
       </tr>
       <tr><td>Photo</td>
       <td>
       <input type="file" name="file" class="form-control"/>
       </td>
	<tr>
	<td><input type="submit" value="Submit" class="btn btn-primary" ></td>
	</tr>
	</table>
</form>
        </li>
        
      </ul>
     
 
    </section>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>

<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper coloured">
  <article class="hoc cta clear"> 
    <!-- ################################################################################################ -->
 
    <!-- ################################################################################################ -->
  </article>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row2">
  <section id="latest" class="hoc container clear"> 
    <!-- ################################################################################################ -->
    <div class="sectiontitle">
    
     
    </div>
    <ul class="nospace group">
      <li class="one_half first">
         <img src="images/login.jpg" width="50%"/>
      </li>
      <li class="one_half">
      <br/><br/><br/>  <h6 class="heading">Login</h6>
         <form name="frm" method="post" action="check">
         <table class="tblform"> 
         <tr><td>Userid</td>
         <td>
          <input type="text" class="form-control" name="userid" required>
          </td>
          </tr>
          <tr><td>Password</td>
          <td> <input type="password"  class="form-control" name="pswd" required>
          </td>
          </tr>
          <tr><td colspan="2"><input type="submit" class="btn btn-primary" value="Submit"></td></tr>
          <tr><td colspan="2"><a href="forgetpassword">Forget Password?</a></td></tr>
         </table>
				<br/><br/>			 
							 
							 
						</form>
						
						
      </li>
      
    </ul>
     
    <!-- ################################################################################################ -->
  </section>
</div> 
 
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2023 - All Rights Reserved - <a href="#">Open Elective System
</a></p>
     
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>

<%
//double cosinesim=CosineSimilarity.cosineSimilarity1("Waterfall model is one of the system design models", "waterfall model is a model for system design");
//System.out.println("cosine="+cosinesim +" "+FuzzySearch.ratio("Waterfall model is one of the system design models", "waterfall model is a model for system design"));
%>
</body>
</html>