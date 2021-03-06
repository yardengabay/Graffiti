﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Grafitiy.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="initial-scale=1,user-scalable=no,maximum-scale=1,width=device-width">
        <meta name="mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <link rel="stylesheet" href="css/leaflet.css">
        <link rel="stylesheet" href="css/L.Control.Locate.min.css">
        <link rel="stylesheet" href="css/qgis2web.css">
        <link rel="stylesheet" href="css/fontawesome-all.min.css">
        <link rel="stylesheet" href="css/MarkerCluster.css">
        <link rel="stylesheet" href="css/MarkerCluster.Default.css">
        <link rel="stylesheet" href="css/leaflet-search.css">
        <link rel="stylesheet" href="css/filter.css">
        <link rel="stylesheet" href="css/nouislider.min.css">
        <link rel="stylesheet" href="css/leaflet-control-geocoder.Geocoder.css">
        <link rel="stylesheet" href="css/leaflet-measure.css">
                    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
            <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
            <script src='https://npmcdn.com/@turf/turf/turf.min.js'></script>
            <script src="js/qgis2web_expressions.js"></script>
            <script src="js/leaflet.js"></script>
            <script src="js/L.Control.Locate.min.js"></script>
            <script src="js/leaflet.rotatedMarker.js"></script>
            <script src="js/leaflet.pattern.js"></script>
            <script src="js/leaflet-hash.js"></script>
            <script src="js/Autolinker.min.js"></script>
            <script src="js/rbush.min.js"></script>
            <script src="js/labelgun.min.js"></script>
            <script src="js/labels.js"></script>
            <script src="js/leaflet-control-geocoder.Geocoder.js"></script>
            <script src="js/leaflet-measure.js"></script>
            <script src="js/leaflet.markercluster.js"></script>
            <script src="js/leaflet-search.js"></script>
            <script src="js/tailDT.js"></script>
            <script src="js/nouislider.min.js"></script>
            <script src="js/wNumb.js"></script>
            <script src="dataFiles/grafities_1.js"></script>
            <script src="dataFiles/LegalPlaces_2.js"></script>
     <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
     
    
    <style>
        html, body, #map {
            width: 100%;
            height: 100%;
            padding: 0;
            margin: 0;
        }
        #overlay {
			position:absolute;
			z-index: 1000;
			background: rgba(255,255,255,0.7);
			padding: 10px;
			right: 0;
		
			box-shadow: 1px 1px 1px grey;
			min-height: 700px;
            min-width: 300px;

		
		
		}
		#overlay h2 {
			margin: 0;
			padding: 0;
			margin-bottom: 10px;
		}

		#slide-in {
			position:absolute;
			width: 250px;
			z-index: 1000;
			background: white;
			margin-left: -270px;
			transition: 1.5s;
			
		}

		#slide-in.in {
			margin-left: 0px;


		}

    .inputLogin {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
.buttonLogin {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

.buttonLogin:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modalNewSubscribe {
  display: none; /* Hidden by default */

  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

.modal {
  display: none; /* Hidden by default */

  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 30%!important; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

.alert{
    margin-bottom:0px;
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}



.leaflet-control-geocoder{
    top: 250px!important;
 
}

.tdStyleHeader{
    font-size:large;
  
}

.tdStyle{
    font-size:medium;
  
}

.leaflet-popup-content-wrapper{
    background-color:rgba(255, 254, 245,0.9);
}

        </style>
     
    </head>
    <body >

    <div class="alert alert-success" id="success-alert" style="display:none"  >
  <button type="button" class="close" data-dismiss="alert">x</button>
  <strong>Success! </strong> <div id="successAlertText"> </div>
    </div>


          <div id="slide-in">
            <h2> Graffiti Map</h2>
        </div>
         

        <div id="overlay">
            <h2>Graffiti Map</h2>
            <h6>Name : <strong id="nameStrong" >not connected </strong></h6>
             <h6>User Type :<strong id="userTypeStrong" >guest </strong></h6>
            
   
         
               <button id="manageUsersButton" style="display:none" onclick="document.getElementById('userListModal').style.display='block'" width="50px" class="btn btn-warning">manage users</button>
               <button id="newGraffitiButton" onclick="document.getElementById('newGrafitiModal').style.display='block'"  width="50px"  class="btn btn-warning">new graffiti </button>
          <button id="newLegalButton" onclick="document.getElementById('newLegalModal').style.display='block'" style="display:none"  width="50px" class="btn btn-warning"> LegalPlaces </button>
  
            <br />   
            <br />
                 <h3>Filters</h3>

           <br/> <br/> <br/> <br/><br/><br/>
                   <h3>Search City</h3>
            <br />     <br />     <br />     <br />     <br />     <br />     <br />     <br /><br /><br />
               <button id="loginButtonOpenModal" onclick="document.getElementById('loginModal').style.display='block'" width="50px" class="btn btn-success">Login</button>
                  <button id="logOutButton"  width="50px" style="display:none" class="btn btn-danger">logOut</button>
        </div>
        <div id="map" style="width:100%;"></div>
  

        <!--  login modal-->
          <div id="loginModal" class="modal">
  
          <div class="modal-content animate" >
            <div class="imgcontainer">
              <span onclick="document.getElementById('loginModal').style.display='none'" class="close" title="Close Modal">&times;</span>
             
            </div>
        
            <div class="container">
                 <h2>Login</h2>
                <label id="errorLogin" style="display:none;color:orangered;"></label>
                <br />
              <label for="uname"><b>email</b></label>
              <input type="text" id="emailInputLogin" class="inputLogin" placeholder="Enter email" name="uname" />
        
              <label for="psw"><b>Password</b></label>
              <input type="password" id="passwordInputLogin" class="inputLogin" placeholder="Enter Password" name="psw" />
                
              <button class="buttonLogin" id="loginButton" >Login</button>
           
            </div>
        
            <div class="container" style="background-color:#f1f1f1">

              <button type="button" id="newSubscibeButtonOpenModal" onclick="document.getElementById('newSubscribeModal').style.display='block';document.getElementById('loginModal').style.display='none'" class="btn btn-primary">new subscribe</button>
              <button type="button"  onclick="document.getElementById('loginModal').style.display='none';" class="btn btn-danger">Cancel</button>
           
            </div>
          </div>

          <script>
              // Get the modal
              var modal = document.getElementById('loginModal');

              // When the user clicks anywhere outside of the modal, close it
              window.onclick = function (event) {
                  if (event.target == modal) {
                      modal.style.display = "none";
                  }
              }
            </script>
        </div>

            <div id="newSubscribeModal" class="modal" style="padding-top: 3px!important">
  
      <div class="modal-content animate" >
        <div class="imgcontainer">
          <span onclick="document.getElementById('newSubscribeModal').style.display='none'" class="close" title="Close Modal">&times;</span>
         
        </div>
       
        <div class="container">
          <h4>New subscribe:</h4>
            
             
             <label id="errorNewSubscribe" style="display:none;color:orangered;"> </label>


          <table>
            <tr>
              <td>
                <label for="firstName"><b>first name</b></label>
                <input type="text" id="firstNameInputNewSubscribe" class="inputLogin" placeholder="Enter first Name" name="firstName" />


              </td>
              <td>
                <label for="lastName"><b>last name</b></label>
                <input type="text" class="inputLogin" id="lastNameInputNewSubscribe" placeholder="Enter last Name" name="lastName" />


              </td>
            </tr>


            <tr>
              <td>
                <label for="email"><b>email</b></label>
            <input type="text" id="emailInputNewSubscribe" class="inputLogin" placeholder="Enter email" name="email" />


              </td>
              <td>
                <label for="psw"><b>Password</b></label>
                <input type="password" id="passwordInputNewSubscribe" class="inputLogin" placeholder="Enter Password" name="psw" />


              </td>
            </tr>

  
            <tr>
              <td>  
                <label ><b>type:</b></label>
                <br/>

                    <input type="radio" name="colors" id="radioButtonTypeArtist" checked/>Artist<br/>
                    <input type="radio" name="colors" id="radioButtonTypeArtLover"/>Art lover




              </td>
            </tr>
          </table>


 


    
     
            
       
        </div>
    
        <div class="container" style="background-color:#f1f1f1">

          <button type="button" id="saveNewSubscribeButton" class="btn btn-primary" >save</button>
          <button type="button" onclick="document.getElementById('newSubscribeModal').style.display='none'" class="btn btn-danger">Cancel</button>
       
        </div>
      </div>

      <script>
          // Get the modal
          var modal = document.getElementById('newSubscribeModal');

          // When the user clicks anywhere outside of the modal, close it
          window.onclick = function (event) {
              if (event.target == modal) {
                  modal.style.display = "none";
              }
          }
        </script>
    </div>
           

         <div id="userListModal" class="modal" style="padding-top: 3px!important">
  
      <div class="modal-content animate" >
        <div class="imgcontainer">
          <span onclick="document.getElementById('userListModal').style.display='none'" class="close" title="Close Modal">&times;</span>
            <h3>רשימת משתמשים </h3>
        <div style="margin-left:20px;margin-right:20px;">
   

     <ul id="header" class="list-group" style="text-align:left;"></ul>
            <br />

            </div>

         
        </div>
 
      </div>
             </div>

      <script type="text/javascript">
          // Get the modal
          var modal = document.getElementById('newSubscribeModal');

          // When the user clicks anywhere outside of the modal, close it
          window.onclick = function (event) {
              if (event.target == modal) {
                  modal.style.display = "none";
              }
          }

          function handelActive(email, toActive) {
              $.ajax({

                  type: "POST",
                  url: "WebForm1.aspx/handelActive",
                  data: '{email:"' + email + '" , toActive:' + toActive + '}',
                  contentType: "application/json; charset=utf-8",
                  dataType: "json",
                  success: function (response) {
                      $.ajax({

                          type: "POST",
                          url: "WebForm1.aspx/getUsersList",
                          contentType: "application/json; charset=utf-8",
                          dataType: "json",
                          success: function (response) {
                              $("#header").empty();


                              response.d.forEach(element => addUserToList(element));



                          },
                          failure: function (response) {
                              alert(response.d);
                          },
                          error: function (response) {
                              alert(response.d);
                          }
                      });



                  },
                  failure: function (response) {
                      alert(response.d);
                  },
                  error: function (response) {
                      alert(response.d);
                  }
              });
          }

          function addUserToList(user) {

              indexUl++;
              var name = user.firstName + " " + user.lastName;
              var email = user.email;
              var text = "email: " + email + " name: " + name;
              var isActive = user.isActive;

              if (isActive == true) {
                  //בטל פעילות == פעיל

                  $("#header").append('<li id="' + email + '"class="list-group-item"> email:' + email + '<br/> name:' + name + '<br/> <button class="btn btn-danger yarden"  onClick="handelActive(\'' + email + '\',false)"  id="cancelActiveButton" >בטל פעילות</button> <button  class="btn btn-success" onClick="handelActive(\'' + email + '\',true)" id="ActiveButton" style="display:none">החזר לפעילות</button> </li>');

              }

              else
                  $("#header").append('<li id="' + email + '"class="list-group-item"> email:' + email + '<br/> name:' + name + '<br/> <button class="btn btn-danger" style="display:none" onClick="handelActive(\'' + email + '\',false)" id="cancelActiveButton">בטל פעילות</button> <button id="ActiveButton" onClick="handelActive(\'' + email + '\',true)" class="btn btn-success" >החזר לפעילות</button> </li>');

          }

        </script>
   
           

        <script type="text/javascript">

            $(document).on('click', '#saveGraffitiButton', function (e) {


                var name = $("#graffitiNameInput").val();
                var description = $("#descriptionGraffitiInput").val();
                var img = "image";
                var coordinates = $("#current_center").val();


                $.ajax({

                    type: "POST",
                    url: "WebForm1.aspx/addGrafitti",
                    data: '{name:"' + name + '" , description: "' + description + '" , img: "' + img + '" ,coordinat:"' + coordinates + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        $.ajax({

                            type: "POST",
                            url: "WebForm1.aspx/getUsersList",
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (response) {




                            },
                            failure: function (response) {
                                alert(response.d);
                            },
                            error: function (response) {
                                alert(response.d);
                            }
                        });



                    },
                    failure: function (response) {
                        alert(response.d);
                    },
                    error: function (response) {
                        alert(response.d);
                    }
                });
            });

        </script>




      <div id="newLegalModal" class="modal" style="padding-top: 3px!important">
  
      <div class="modal-content animate" >
        <div class="imgcontainer">
          <span onclick="document.getElementById('newLegalModal').style.display='none'" class="close" title="Close Modal">&times;</span>
            <h3>Add legal/illegal place: </h3>

               <label id="errorLegal" style="display:none;color:orangered;"> </label>
        <div style="margin-left:20px;margin-right:20px;">
  
                 <table>
       
     
            <tr>
              <td>
                <label for="legalName<"><b>legal name</b></label>
                <input type="text" id="legalNameInput" class="inputLogin" placeholder="Enter legal Name" name="legalName" />

              
              </td></tr>
                   <tr>
                   <td>
             <label for="descriptionLegal"><b>legal description</b></label>
                <input type="text" id="descriptionLegalInput" class="inputLogin" placeholder="Enter legal description" />
              </td>
                   </tr>
                                        <tr>
              <td>  
                <label ><b>type:</b></label>
                <br/>

                    <input type="radio" name="colors" id="radioButtonlegal" checked/>legal<br/>
                    <input type="radio" name="colors" id="radioButtonIllegal"/>Illegal
              </td>
            </tr>
                  


    
          </table><br />

            </div>
                <div class="container" style="background-color:#f1f1f1">

          <button type="button" id="saveLegalButton" class="btn btn-primary" >save</button>
          <button type="button" onclick="document.getElementById('newLegalModal').style.display='none'" class="btn btn-danger">Cancel</button>
       
        </div>
         
        </div>
 
      </div>
             </div>

          <script type="text/javascript">

              $(document).on('click', '#saveLegalButton', function (e) {


                  var name = $("#legalNameInput").val();
                  var description = $("#descriptionLegalInput").val();
                  var coordinates = $("#current_center").val();

                  if (coordinates == "") {
                      document.getElementById('errorLegal').style.display = 'block';
                      $('#errorLegal').text("Click on the place on the map you want to mark");

                  }

                  else if (name == "") {
                      document.getElementById('errorLegal').style.display = 'block';
                      $('#errorLegal').text("enter legal name");
                  }
                  else if (description == "") {
                      document.getElementById('errorLegal').style.display = 'block';
                      $('#errorLegal').text("enter legal description");

                  }
                  else {
                      document.getElementById('errorLegal').style.display = 'none';
                      $('#errorLegal').text("");
                      var isLegal;
                      if (document.getElementById('radioButtonlegal').checked) {
                          isLegal = "1";
                      }
                      else {
                          isLegal = "0";
                      }


                      $.ajax({

                          type: "POST",
                          url: "WebForm1.aspx/addLegalPlace",
                          data: '{name:"' + name + '" , description: "' + description + '" , isLegal: "' + isLegal + '" ,coordinat:"' + coordinates + '"}',
                          contentType: "application/json; charset=utf-8",
                          dataType: "json",
                          success: function (response) {
                              $.ajax({

                                  type: "POST",
                                  url: "WebForm1.aspx/getUsersList",
                                  contentType: "application/json; charset=utf-8",
                                  dataType: "json",
                                  success: function (response) {


                                      location.reload();

                                  },
                                  failure: function (response) {
                                      alert(response.d);
                                  },
                                  error: function (response) {
                                      alert(response.d);
                                  }
                              });



                          },
                          failure: function (response) {
                              alert(response.d);
                          },
                          error: function (response) {
                              alert(response.d);
                          }
                      });

                  }
              });

        </script>

            <!-- The core Firebase JS SDK is always required and must be listed first -->
             <form id="form1" runat="server" >  
                    <input type="text" class="inputLogin" style="display:none;" runat="server"   id="current_center"  />
                   <div id="newGrafitiModal" class="modal" style="padding-top: 3px!important">
  
      <div class="modal-content animate" >
        <div class="imgcontainer">
          <span onclick="document.getElementById('newGrafitiModal').style.display='none'" class="close" title="Close Modal">&times;</span>
            <h3>גרפיטי חדש </h3>
            <label id="errorNewGraffiti" style="display:none;color:orangered;"> </label>
        <div style="margin-left:20px;margin-right:20px;">
   
        
            <br />

                 <table>
            <tr>
              <td>
                <label for="grafitiName"><b>graffiti name</b></label>
                <input type="text" id="graffitiNameInput" runat="server" class="inputLogin" placeholder="Enter graffiti Name" name="grafitiName" />
           

              </td></tr>
                   <tr>
                   <td>
             <label for="descriptionGraffiti"><b>graffiti description</b></label>
                <input type="text" id="descriptionGraffitiInput" runat="server"  class="inputLogin" placeholder="Enter graffiti description" name="descriptionGraffiti" />
              </td>
                   </tr>

                
                     
                         <tr>
                         <td>
                               <label for="img"><b>select image:</b></label>

                            <asp:FileUpload ID="FileUpload1" runat = "server" />
                           
                         </td>
                       
                     </tr>


    
          </table>

            </div>
                <div class="container" style="background-color:#f1f1f1">
                    <asp:Button ID="saveGrafittiButton" runat="server" class="btn btn-primary" Text="save" OnClick="addGrafitti" />
          <%--<button type="button" id="saveGraffitiButton" class="btn btn-primary" >save</button>--%>
          <button type="button" onclick="document.getElementById('newGrafitiModal').style.display='none'" class="btn btn-danger">Cancel</button>
       
        </div>
         
        </div>
 
      </div>
             </div>

             
               
        
       
    <!--  new subscribe modal-->



                      <script type="text/javascript">

                          var map;
                          var hash;
                          var autolinker;
                          var measureControl;
                          var bounds_group;
                          var context;
                          var layer_OSMStandard_0;
                          var layer_grafities_1;
                          var cluster_grafities_1;
                          var layer_LegalPlaces_2;
                          var layer_ILLegalPlaces_2;
                          var cluster_LegalPlaces_2;
                          var cluster_ILegalPlaces_2;
                          var baseMaps;
                          var osmGeocoder;
                          var indexUl;


                          $(document).ready(function () {
                              tryLogin();
                              handelCityAgent();


                              //full screen map, before initializing the map
                              $('#mapid').height(window.innerHeight);
                              //side panel
                              $('#slide-in').height(window.innerHeight);

                              $(document).on('click', '#advanced', function () {
                                  if ($('#slide-in').hasClass('in')) {
                                      $('#slide-in').removeClass('in')
                                  } else {
                                      $('#slide-in').addClass('in')
                                  }
                              });

                              var highlightLayer;
                              var featureYarden;
                              var jsonGrafities;

                              var unLikes = 2;

                              //$.getJSON("dataFiles/grafitiesJson.json", function (json) {

                              //    jsonGrafities = json;
                              //});


                              function highlightFeature(e) {

                                  highlightLayer = e.target;
                                  featureYarden = e.target.feature;


                                  if (e.target.feature.geometry.type === 'LineString') {
                                      highlightLayer.setStyle({
                                          color: '#ffff00',
                                      });
                                  } else {
                                      highlightLayer.setStyle({
                                          fillColor: '#ffff00',
                                          fillOpacity: 1
                                      });
                                  }
                                  highlightLayer.openPopup();
                              }
                              map = L.map('map', {
                                  zoomControl: true, maxZoom: 27, minZoom: 1
                              })

                              hash = new L.Hash(map);
                              map.attributionControl.setPrefix('<a href="https://github.com/tomchadwin/qgis2web" target="_blank">qgis2web</a> &middot; <a href="https://leafletjs.com" title="A JS library for interactive maps">Leaflet</a> &middot; <a href="https://qgis.org">QGIS</a>');


                              autolinker = new Autolinker({ truncate: { length: 30, location: 'smart' } });
                              L.control.locate({ locateOptions: { maxZoom: 19 } }).addTo(map);

                              measureControl = new L.Control.Measure({
                                  position: 'topleft',
                                  primaryLengthUnit: 'feet',
                                  secondaryLengthUnit: 'miles',
                                  primaryAreaUnit: 'sqfeet',
                                  secondaryAreaUnit: 'sqmiles'
                              });
                              measureControl.addTo(map);
                              document.getElementsByClassName('leaflet-control-measure-toggle')[0]
                                  .innerHTML = '';
                              document.getElementsByClassName('leaflet-control-measure-toggle')[0]
                                  .className += ' fas fa-ruler';
                              bounds_group = new L.featureGroup([]);

                              map.createPane('pane_OSMStandard_0');
                              map.getPane('pane_OSMStandard_0').style.zIndex = 400;
                              layer_OSMStandard_0 = L.tileLayer('http://tile.openstreetmap.org/{z}/{x}/{y}.png', {
                                  pane: 'pane_OSMStandard_0',
                                  opacity: 0.922,
                                  attribution: '<a href="https://www.openstreetmap.org/copyright">© OpenStreetMap contributors, CC-BY-SA</a>',
                                  minZoom: 1,
                                  maxZoom: 27,
                                  minNativeZoom: 0,
                                  maxNativeZoom: 19
                              });
                              layer_OSMStandard_0;
                              map.addLayer(layer_OSMStandard_0);

                              map.createPane('pane_grafities_1');
                              map.getPane('pane_grafities_1').style.zIndex = 401;
                              map.getPane('pane_grafities_1').style['mix-blend-mode'] = 'normal';
                              layer_grafities_1 = new L.geoJson(json_grafities_1, {
                                  attribution: '',
                                  interactive: true,
                                  dataVar: 'json_grafities_1',
                                  layerName: 'layer_grafities_1',
                                  pane: 'pane_grafities_1',
                                  onEachFeature: pop_grafities_1,
                                  pointToLayer: function (feature, latlng) {
                                      context = {
                                          feature: feature,
                                          variables: {}
                                      };
                                      return L.circleMarker(latlng, style_grafities_1_0(feature));
                                  },
                              });


                              //layer_grafities_1.addTo(map);


                              cluster_grafities_1 = new L.MarkerClusterGroup({
                                  showCoverageOnHover: false,
                                  spiderfyDistanceMultiplier: 2
                              });
                              cluster_grafities_1.addLayer(layer_grafities_1);

                              bounds_group.addLayer(layer_grafities_1);
                              cluster_grafities_1.addTo(map);

                              map.createPane('pane_LegalPlaces_2');
                              map.getPane('pane_LegalPlaces_2').style.zIndex = 402;
                              map.getPane('pane_LegalPlaces_2').style['mix-blend-mode'] = 'normal';

                              map.createPane('pane_ILegalPlaces_2');
                              map.getPane('pane_ILegalPlaces_2').style.zIndex = 402;
                              map.getPane('pane_ILegalPlaces_2').style['mix-blend-mode'] = 'normal';

                              layer_ILLegalPlaces_2 = new L.geoJson(json_LegalPlaces_2, {
                                  attribution: '',
                                  interactive: true,
                                  dataVar: 'json_LegalPlaces_2',
                                  layerName: 'layer_LegalPlaces_2',
                                  pane: 'pane_ILegalPlaces_2',
                                  onEachFeature: pop_ILegalPlaces_2,
                                  pointToLayer: function (feature, latlng) {
                                      if (feature.properties.is_Legal == "0") {
                                          var context = {
                                              feature: feature,
                                              variables: {}
                                          };
                                          return L.circleMarker(latlng, style_ILegalPlaces_2_0(feature));
                                      }
                                      return null;

                                  },
                              });

                              layer_LegalPlaces_2 = new L.geoJson(json_LegalPlaces_2, {
                                  attribution: '',
                                  interactive: true,
                                  dataVar: 'json_LegalPlaces_2',
                                  layerName: 'layer_LegalPlaces_2',
                                  pane: 'pane_LegalPlaces_2',
                                  onEachFeature: pop_LegalPlaces_2,
                                  pointToLayer: function (feature, latlng) {
                                      if (feature.properties.is_Legal == "1") {
                                          var context = {
                                              feature: feature,
                                              variables: {}
                                          };
                                          return L.circleMarker(latlng, style_LegalPlaces_2_0(feature));
                                      }
                                      return null;

                                  },
                              });

                              cluster_LegalPlaces_2 = new L.MarkerClusterGroup({
                                  showCoverageOnHover: false,
                                  spiderfyDistanceMultiplier: 2
                              });
                              cluster_ILegalPlaces_2 = new L.MarkerClusterGroup({
                                  showCoverageOnHover: false,
                                  spiderfyDistanceMultiplier: 2
                              });

                              cluster_LegalPlaces_2.addLayer(layer_LegalPlaces_2);
                              cluster_ILegalPlaces_2.addLayer(layer_ILLegalPlaces_2);

                              bounds_group.addLayer(layer_LegalPlaces_2);
                              cluster_LegalPlaces_2.addTo(map);

                              bounds_group.addLayer(layer_ILLegalPlaces_2);
                              cluster_ILegalPlaces_2.addTo(map);

                              osmGeocoder = new L.Control.Geocoder({
                                  collapsed: true,

                                  position: 'topleft',
                                  text: 'Search',
                                  title: 'Testing'
                              }).addTo(map);
                              document.getElementsByClassName('leaflet-control-geocoder-icon')[0]
                                  .className += ' fa fa-search';
                              document.getElementsByClassName('leaflet-control-geocoder-icon')[0]
                                  .title += 'Search for a place';
                              baseMaps = {};
                              L.control.layers(baseMaps, { '<img src="legend/LegalPlaces_2.png" /> LegalPlaces': cluster_LegalPlaces_2, '<img src="legend/ILegalPlaces_2.png" /> IllegalPlaces': cluster_ILegalPlaces_2, '<img src="legend/grafities_1.png" /> grafities': cluster_grafities_1, "OSM Standard": layer_OSMStandard_0, }, { collapsed: false }).addTo(map);
                              setBounds();
                              map.addControl(new L.Control.Search({
                                  layer: cluster_grafities_1,
                                  initial: false,
                                  hideMarkerOnCollapse: true,
                                  propertyName: 'address'
                              }));



                              map.on('moveend', function (e) {
                                  console.log(map.getCenter());
                                  $('#current_center').val(map.getCenter().lat + ',' + map.getCenter().lng);

                              });

                              function setBounds() {
                                  if (bounds_group.getLayers().length) {
                                      map.fitBounds(bounds_group.getBounds());
                                  }
                              }


                              function pop_grafities_1(feature, layer) {

                                  layer.on({
                                      mouseout: function (e) {
                                          for (i in e.target._eventParents) {
                                              e.target._eventParents[i].resetStyle(e.target);
                                          }
                                          if (typeof layer.closePopup == 'function') {
                                              layer.closePopup();
                                          } else {
                                              layer.eachLayer(function (feature) {
                                                  feature.closePopup()
                                              });
                                          }
                                      },
                                      mouseover: highlightFeature,
                                  });






                                  var popupContent = '<table >\
                     <tr>\
                        <td class="tdStyle">' + (feature.properties['g_Name'] !== null ? autolinker.link(feature.properties['g_Name'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td class="tdStyle"> ' + (feature.properties['g_Descrip'] !== null ? autolinker.link(feature.properties['g_Descrip'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td class="tdStyle">' + (feature.properties['image'] !== null ? '<img src="' + String(feature.properties['image']) + '"' + 'width="300" height="200" >' : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td class="tdStyle">likes:<label id="lableLikes" > ' + getLikes(feature) + ' </label></td>\
                    </tr>\
                    <tr>\
                      <td  class="tdStyle">unlikes:<label id="lableUnLikes" >'+ getUnLikes(feature) + '</label></td>\
                    </tr>\
                    <tr>\
                      <td class="tdStyle">\
                        <button  id="likeButton" style="width:100px;" class="btn btn-info" runat="server" >  like   </button>\
                      </td>\
                    </tr>\
                      <tr>\
                      <td class="tdStyle">\
                        <button id="unlikeButton" style="width:100px;" class="btn btn-info" >  unlike   </button>\
                      </td>\
                   </tr>\
                </table>';


                                  //                  < tr >\
                                  //              <td class="tdStyle">' + (feature.properties['address'] !== null ? autolinker.link(feature.properties['address'].toLocaleString()) : '') + '</td>\
                                  //</tr >\

                                  layer.bindPopup(popupContent, { maxWidth: 400 });


                              }

                              function getLikes(feature) {

                                  var likes;
                                  var id = feature.properties['g_Id'];
                                  $.ajax({
                                      async: false,
                                      type: "POST",
                                      url: "WebForm1.aspx/getLikes",
                                      data: '{id: ' + id + ' }',
                                      contentType: "application/json; charset=utf-8",
                                      dataType: "json",
                                      success: function (response) {
                                          likes = response.d;


                                      },
                                      failure: function (response) {
                                          alert(response.d);
                                      },
                                      error: function (response) {
                                          alert(response.d);
                                      }
                                  });

                                  return likes;

                              }

                              function getUnLikes(feature) {

                                  var unlikes;
                                  var id = feature.properties['g_Id'];
                                  $.ajax({
                                      async: false,
                                      type: "POST",
                                      url: "WebForm1.aspx/getUnLikes",
                                      data: '{id: ' + id + ' }',
                                      contentType: "application/json; charset=utf-8",
                                      dataType: "json",
                                      success: function (response) {
                                          unlikes = response.d;


                                      },
                                      failure: function (response) {
                                          alert(response.d);
                                      },
                                      error: function (response) {
                                          alert(response.d);
                                      }
                                  });

                                  return unlikes;

                              }


                              function style_grafities_1_0() {
                                  return {
                                      pane: 'pane_grafities_1',
                                      radius: 6.0,
                                      opacity: 1,
                                      color: 'rgba(35,35,35,1.0)',
                                      dashArray: '',
                                      lineCap: 'butt',
                                      lineJoin: 'miter',
                                      weight: 1,
                                      fill: true,
                                      fillOpacity: 1,
                                      fillColor: 'rgba(216,156,230,1.0)',
                                      interactive: true,
                                  }
                              }
                              //search graphities per address
                              $(document).on('keyup', '#search', function (e) {
                                  var userInput = e.target.value;
                                  layer_grafities_1.eachLayer(function (layer) {
                                      if (layer.feature.properties.address.toLowerCase().indexOf(userInput.toLowerCase()) > -1) {
                                          layer.addTo(map);
                                      } else {
                                          map.removeLayer(layer);
                                      }



                                  });
                              });



                              //CLICK LIKE BUTTON
                              $(document).on('click', '#likeButton', function (e) {

                                  var id = featureYarden.properties['g_Id'];
                                  $.ajax({

                                      type: "POST",
                                      url: "WebForm1.aspx/likeClick",
                                      data: '{id: ' + id + ' }',
                                      contentType: "application/json; charset=utf-8",
                                      dataType: "json",
                                      success: function (response) {
                                          $("#lableLikes").text(response.d);

                                          $("#likeButton").prop('disabled', true);


                                      },
                                      failure: function (response) {
                                          alert(response.d);
                                      },
                                      error: function (response) {
                                          alert(response.d);
                                      }
                                  });

                              });



                              $(document).on('click', '#unlikeButton', function (e) {

                                  var id = featureYarden.properties['g_Id'];
                                  $.ajax({

                                      type: "POST",
                                      url: "WebForm1.aspx/unlikeClick",
                                      data: '{id: ' + id + ' }',
                                      contentType: "application/json; charset=utf-8",
                                      dataType: "json",
                                      success: function (response) {
                                          $("#lableUnLikes").text(response.d);

                                          $("#unlikeButton").prop('disabled', true);


                                      },
                                      failure: function (response) {
                                          alert(response.d);
                                      },
                                      error: function (response) {
                                          alert(response.d);
                                      }
                                  });

                              });


                              $(document).on('click', '#manageUsersButton', function (e) {

                                  $.ajax({

                                      type: "POST",
                                      url: "WebForm1.aspx/getUsersList",
                                      contentType: "application/json; charset=utf-8",
                                      dataType: "json",
                                      success: function (response) {
                                          $("#header").empty();


                                          response.d.forEach(element => addUserToList(element));



                                      },
                                      failure: function (response) {
                                          alert(response.d);
                                      },
                                      error: function (response) {
                                          alert(response.d);
                                      }
                                  });


                              });

                              function addUserToList(user) {

                                  indexUl++;
                                  var name = user.firstName + " " + user.lastName;
                                  var email = user.email;
                                  var text = "email: " + email + " name: " + name;
                                  var isActive = user.isActive;

                                  if (isActive == true) {
                                      //בטל פעילות == פעיל

                                      $("#header").append('<li id="' + email + '"class="list-group-item"> email:' + email + '<br/> name:' + name + '<br/> <button class="btn btn-danger yarden"  onClick="handelActive(\'' + email + '\',false)"  id="cancelActiveButton" >בטל פעילות</button> <button  class="btn btn-success" onClick="handelActive(\'' + email + '\',true)" id="ActiveButton" style="display:none">החזר לפעילות</button> </li>');

                                  }

                                  else
                                      $("#header").append('<li id="' + email + '"class="list-group-item"> email:' + email + '<br/> name:' + name + '<br/> <button class="btn btn-danger" style="display:none" onClick="handelActive(\'' + email + '\',false)" id="cancelActiveButton">בטל פעילות</button> <button id="ActiveButton" onClick="handelActive(\'' + email + '\',true)" class="btn btn-success" >החזר לפעילות</button> </li>');

                              }





                              $(document).on('click', '#saveNewSubscribeButton', function (e) {

                                  var firstNameInputNewSubscribe = $("#firstNameInputNewSubscribe").val();

                                  var lastNameInputNewSubscribe = $("#lastNameInputNewSubscribe").val();
                                  var emailInputNewSubscribe = $("#emailInputNewSubscribe").val();
                                  var passwordInputNewSubscribe = $("#passwordInputNewSubscribe").val();
                                  var typeUser;

                                  if (document.getElementById('radioButtonTypeArtLover').checked) {
                                      typeUser = "ArtLover";
                                  }
                                  else {
                                      typeUser = "Artist";
                                  }



                                  $.ajax({

                                      type: "POST",
                                      url: "WebForm1.aspx/newSubscribe",
                                      data: '{firstName: "' + firstNameInputNewSubscribe +
                                          '" , lastName: "' + lastNameInputNewSubscribe +
                                          '" , email: "' + emailInputNewSubscribe +
                                          '" , password: "' + passwordInputNewSubscribe +
                                          '" , userType: "' + typeUser + '"}',
                                      contentType: "application/json; charset=utf-8",
                                      dataType: "json",
                                      success: function (response) {


                                          if (response.d.isSuccess == false) {
                                              document.getElementById('errorNewSubscribe').style.display = 'block';
                                              $('#errorNewSubscribe').text(response.d.message);
                                          }
                                          else {
                                              document.getElementById('newSubscribeModal').style.display = 'none';

                                              $('#successAlertText').text("Registration completed successfully");

                                              $("#success-alert").fadeTo(2000, 500).slideUp(500, function () {
                                                  $("#success-alert").slideUp(500);
                                              });

                                              document.getElementById('errorNewSubscribe').style.display = 'none';
                                              $("#firstNameInputNewSubscribe").val("");
                                              $("#lastNameInputNewSubscribe").val("");
                                              $("#emailInputNewSubscribe").val("");
                                              $("#passwordInputNewSubscribe").val("");

                                          }




                                      },
                                      failure: function (response) {
                                          alert(response.d);
                                      },
                                      error: function (response) {
                                          alert(response.d);
                                      }
                                  });

                              });


                              $(document).on('click', '#loginButtonOpenModal', function (e) {
                                  document.getElementById('errorLogin').style.display = 'none';
                                  $("#emailInputLogin").val("");
                                  $("#passwordInputLogin").val("");
                              });

                              $(document).on('click', '#loginButtonOpenModal', function (e) {
                                  document.getElementById('errorLogin').style.display = 'none';
                                  $("#emailInputLogin").val("");
                                  $("#passwordInputLogin").val("");
                              });

                              $(document).on('click', '#newLegalButton', function (e) {
                                  document.getElementById('errorLegal').style.display = 'none';
                                  $("#legalNameInput").val("");
                                  $("#descriptionLegalInput").val("");
                              });



                              $(document).on('click', '#newGraffitiButton', function (e) {
                                  document.getElementById('errorNewGraffiti').style.display = 'none';
                                  $("#graffitiNameInput").val("");
                                  $("#descriptionGraffitiInput").val("");
                                  $("#FileUpload1").val("");
                              });

                              $(document).on('click', '#newSubscibeButtonOpenModal', function (e) {
                                  document.getElementById('errorNewSubscribe').style.display = 'none';
                                  $("#firstNameInputNewSubscribe").val("");
                                  $("#lastNameInputNewSubscribe").val("");
                                  $("#emailInputNewSubscribe").val("");
                                  $("#passwordInputNewSubscribe").val("");
                              });


                              $(document).on('click', '#logOutButton', function (e) {
                                  logout();

                              });

                              $(document).on('click', '#loginButton', function (e) {

                                  var emailInputLogin = $("#emailInputLogin").val();
                                  var passwordInputLogin = $("#passwordInputLogin").val();


                                  $.ajax({

                                      type: "POST",
                                      url: "WebForm1.aspx/login",
                                      data: '{email: "' + emailInputLogin + '" , password: "' + passwordInputLogin + '"}',
                                      contentType: "application/json; charset=utf-8",
                                      dataType: "json",
                                      success: function (response) {


                                          if (response.d.isSuccess == false) {
                                              document.getElementById('errorLogin').style.display = 'block';
                                              document.getElementById('logOutButton').style.display = 'none';
                                              $('#errorLogin').text(response.d.message);

                                          }

                                          else {

                                              $('#nameStrong').text(response.d.user.firstName + " " + response.d.user.lastName);
                                              $('#userTypeStrong').text(response.d.user.userType);
                                              document.getElementById('logOutButton').style.display = 'initial';
                                              document.getElementById('loginButtonOpenModal').style.display = 'none';

                                              document.getElementById('loginModal').style.display = 'none';

                                              $('#successAlertText').text("login success");
                                              $("#success-alert").fadeTo(2000, 500).slideUp(500, function () {
                                                  $("#success-alert").slideUp(500);
                                              });

                                              document.getElementById('errorLogin').style.display = 'none';
                                              $("#emailInputLogin").val("");
                                              $("#passwordInputLogin").val("");

                                              if (response.d.user.userType == "CityAgent") {
                                                  document.getElementById('manageUsersButton').style.display = 'initial';
                                                  document.getElementById('newLegalButton').style.display = 'initial';

                                              }


                                          }

                                      },
                                      failure: function (response) {
                                          alert(response.d);
                                      },
                                      error: function (response) {
                                          alert(response.d);
                                      }
                                  });

                              });

                              function tryLogin() {
                                  $.ajax({
                                      async: false,
                                      type: "POST",
                                      url: "WebForm1.aspx/GetProperties",
                                      contentType: "application/json; charset=utf-8",
                                      dataType: "json",
                                      success: function (response) {

                                          if (response.d.isLogin == true) {
                                              $('#nameStrong').text(response.d.userLogin.firstName + " " + response.d.userLogin.lastName);
                                              $('#userTypeStrong').text(response.d.userLogin.userType);
                                              document.getElementById('logOutButton').style.display = 'initial';
                                              document.getElementById('loginButtonOpenModal').style.display = 'none';
                                          }
                                      },
                                      failure: function (response) {
                                          alert(response.d);
                                      },
                                      error: function (response) {
                                          alert(response.d);
                                      }
                                  });
                              }

                              function handelCityAgent() {
                                  $.ajax({
                                      async: false,
                                      type: "POST",
                                      url: "WebForm1.aspx/GetProperties",
                                      contentType: "application/json; charset=utf-8",
                                      dataType: "json",
                                      success: function (response) {

                                          if (response.d.userLogin !== null) {
                                              if (response.d.userLogin.userType == "CityAgent") {
                                                  document.getElementById('manageUsersButton').style.display = 'initial';
                                                  document.getElementById('newLegalButton').style.display = 'initial';
                                              }


                                          }
                                      },
                                      failure: function (response) {
                                          alert(response.d);
                                      },
                                      error: function (response) {
                                          alert(response.d);
                                      }
                                  });



                              }


                              function logout() {
                                  $('#nameStrong').text("not connected");
                                  $('#userTypeStrong').text('guest');
                                  document.getElementById('logOutButton').style.display = 'none';
                                  document.getElementById('loginButtonOpenModal').style.display = 'initial';

                                  document.getElementById('manageUsersButton').style.display = 'none';
                                  document.getElementById('newLegalButton').style.display = 'none';

                                  $.ajax({
                                      type: "POST",
                                      url: "WebForm1.aspx/logout",
                                      contentType: "application/json; charset=utf-8",
                                      dataType: "json",
                                      success: function (response) {
                                      },
                                      failure: function (response) {
                                          alert(response.d);
                                      },
                                      error: function (response) {
                                          alert(response.d);
                                      }
                                  });
                              }


                              function pop_LegalPlaces_2(feature, layer) {

                                  layer.on({
                                      mouseout: function (e) {
                                          for (i in e.target._eventParents) {
                                              e.target._eventParents[i].resetStyle(e.target);
                                          }
                                          if (typeof layer.closePopup == 'function') {
                                              layer.closePopup();
                                          } else {
                                              layer.eachLayer(function (feature) {
                                                  feature.closePopup()
                                              });
                                          }
                                      },
                                      mouseover: highlightFeature,
                                  });

                                  var popupContent = '<table>\
                                         <tr>\
                        <td colspan="2"><b>Legal place:</b> </td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['l_Name'] !== null ? autolinker.link(feature.properties['l_Name'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['l_Descript'] !== null ? autolinker.link(feature.properties['l_Descript'].toLocaleString()) : '') + '</td>\
                    </tr>\
                     </table>';
                                  layer.bindPopup(popupContent, { maxHeight: 400 });
                              }

                              function pop_ILegalPlaces_2(feature, layer) {

                                  layer.on({
                                      mouseout: function (e) {
                                          for (i in e.target._eventParents) {
                                              e.target._eventParents[i].resetStyle(e.target);
                                          }
                                          if (typeof layer.closePopup == 'function') {
                                              layer.closePopup();
                                          } else {
                                              layer.eachLayer(function (feature) {
                                                  feature.closePopup()
                                              });
                                          }
                                      },
                                      mouseover: highlightFeature,
                                  });

                                  var popupContent = '<table>\
                                <td colspan="2"><b>Illegal place:</b> </td>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['l_Name'] !== null ? autolinker.link(feature.properties['l_Name'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2">' + (feature.properties['l_Descript'] !== null ? autolinker.link(feature.properties['l_Descript'].toLocaleString()) : '') + '</td>\
                    </tr>\
                     </table>';
                                  layer.bindPopup(popupContent, { maxHeight: 400 });
                              }

                              function style_LegalPlaces_2_0() {
                                  return {
                                      pane: 'pane_LegalPlaces_2',
                                      radius: 4.0,
                                      opacity: 1,
                                      color: 'rgba(35,35,35,1.0)',
                                      dashArray: '',
                                      lineCap: 'butt',
                                      lineJoin: 'miter',
                                      weight: 1,
                                      fill: true,
                                      fillOpacity: 1,
                                      fillColor: 'rgba(114,155,111,1.0)',
                                      interactive: true,
                                  }
                              }


                              function style_ILegalPlaces_2_0() {
                                  return {
                                      pane: 'pane_ILegalPlaces_2',
                                      radius: 4.0,
                                      opacity: 1,
                                      color: 'rgba(35,35,35,1.0)',
                                      dashArray: '',
                                      lineCap: 'butt',
                                      lineJoin: 'miter',
                                      weight: 1,
                                      fill: true,
                                      fillOpacity: 1,
                                      fillColor: 'rgb(255, 0, 0)',
                                      interactive: true,
                                  }
                              }


                              document.getElementsByClassName('search-button')[0].className +=
                                  ' fa fa-binoculars';
                          });



                      </script>
  </form>
    </body>

</html>
