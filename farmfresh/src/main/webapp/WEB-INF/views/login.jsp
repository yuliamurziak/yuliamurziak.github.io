<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />


<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<%@page import="java.net.URLEncoder" %>

<html lang="en">
  <head>
    <!-- 
    More Templates Visit ==> Free-Template.co
    -->
	<title>Farm Fresh - ${title}</title>
	<script>
		window.menu = '${title}';
		window.contextRoot = '${contextRoot}'; 
	</script>
    <!-- Icon must be changed, Ref from: https://pngtree.com/freepng/farm_733892.html -->
    <link type="image/x-icon" rel="icon" href="${images}/icon.ico">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Free Template by Free-Template.co Custoomized for Capstone project - Conestoga College" />
    <meta name="keywords" content="free bootstrap 4, free bootstrap 4 template, free website templates, free html5, free template, free website template, html5, css3, mobile first, responsive" />
    <meta name="author" content="Free-Template.co Custoomized for Capstone project - Conestoga College" />

    <link rel="stylesheet" href="${css}/style.css">

    <script type="text/javascript" src="${js}/jquery.min.js"></script> 
    <script type="text/javascript" src="${js}/popper.min.js"></script>
    <script type="text/javascript" src="${js}/bootstrap.min.js"></script>
    
    <script type="text/javascript" src="${js}/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="${js}/jquery.waypoints.min.js"></script>
    <script type="text/javascript" src="${js}/owl.carousel.min.js"></script>
    <script type="text/javascript" src="${js}/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="${js}/jquery.animateNumber.min.js"></script>

    <script type="text/javascript" src="${js}/custom.js"></script>
    <script type="text/javascript" src="${js}/main.js"></script>
    <script type="text/javascript" src="${js}/oauth-fb.js"></script> 
    <!-- <script type="text/javascript" src="${js}/google-map.js"></script> -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDuW_Vur6YjDppRXkKHfPesWJodQG7_Wog&libraries=places&callback=initAutocomplete" async defer></script>
   
    <link rel="stylesheet" href="${css}/gfont-oswald.css">
    <link rel="stylesheet" href="${css}/gfont-playfair.css">
    <link rel="stylesheet" href="${css}/bootstrap.min.css">
    <link rel="stylesheet" href="${css}/fontawesome/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="${css}/open-iconic-bootstrap.min.css">

    <link rel="stylesheet" href="${css}/owl.theme.default.min.css">
    <link rel="stylesheet" href="${css}/owl.carousel.min.css">
    <link rel="stylesheet" href="${css}/magnific-popup.css">
    <link rel="stylesheet" href="${css}/bootstrap-datepicker.css">
    <link rel="stylesheet" href="${css}/jquery.timepicker.css">  
   
    <link rel="stylesheet" href="${css}/custom.css">
    <link rel="stylesheet" href="${css}/login.css">
    <link rel="stylesheet" href="${css}/icomoon.css">
    <link rel="stylesheet" href="${css}/animate.css">
 
  </head>
  
  <body data-spy="scroll" data-target="#ftco-navbar" data-offset="200">
 
	<section class="ftco-section mx-auto" id="section-login"> 
        <div class="container">
        	<!-- Message -->
        	<div style="color: #FFCCCC; margin: .25em auto; text-align: center;">
        		${message}
        	</div>
        	
            <div class="col-sm-12 text-center login-logo">
                <a href="index.html">
                    <img src="${images}/logo_transp.png" alt="Logo">
                    <div>[PlatformName]</div>
                </a>
            </div><!-- END Logo -->
                   
            <div class="row my-2">
                <div class="col-sm-12 oauth">
                    <div>Login with:</div>
						<!--
						  Below we include the Login Button social plugin. This button uses
						  the JavaScript SDK to present a graphical Login button that triggers
						  the FB.login() function when clicked.
						-->
						<fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
						</fb:login-button>
					
                    <a id="google-oauth" class="d-none" href="https://accounts.google.com/ServiceLogin/identifier?hl=en&passive=true&continue=https%3A%2F%2Fwww.google.ca%2F%3Fgfe_rd%3Dcr%26dcr%3D0%26ei%3DUdK5WtXAK4jPXt_NkOAG&flowName=GlifWebSignIn&flowEntry=AddSession">
                        <div class="logo-oauth">
                            <i class="fab fa-google" title="Google"></i>
                        </div>
                    </a>
                </div>
            </div><!-- END oauth login Button -->

            <div>          
                <form id="login-form" action="loguserin" method="post">
                
                    <div class="form-group">
                        <input type="email" id="email" name="email" class="form-control" placeholder="Email address" required="" autofocus=""> 
                    </div>
                    <div class="form-group has-feedback">
                        <input type="password" id="login-password" name="login-password" class="form-control" placeholder="Password" required="" autofocus="">
                    </div>
                    
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="w-75 mx-auto">
                                <input type="checkbox" id="remember" name="remember">  
                                <label for="remember">Remember Me</label>
                            </div>
                        </div>
                        <div class="col-sm-12 my-3">
                            <button type="submit" id="loginsubmit" class="btn btn-primary btn-block btn-flat">Sign In</button>
                        </div>                        
                    </div>

                    <div class="row login-links">
                        <div class="text-left">
                            <a href="#" id="forgot-password">Forgot Password?</a>
                        </div>
                        <div class="text-right">
                            <!--<a href="#" id="create-account">Create account</a>-->
                            <a href="#" id="create-account" target="_blank" class="ftco-animate" data-toggle="modal" data-target="#createUserModal">Create account</a>
                        </div>
                    </div>
                </form><!-- END Login Form -->     
            </div>
        </div>
    </section><!-- END Login Form Section -->
    
    <!-- Modal createUserModal -->
    <div class="modal fade" id="createUserModal" tabindex="-1" role="dialog" aria-labelledby="createUserModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
            <div class="modal-body p-0">
                <div class="row">
                <div class="col-lg-2 bg-image create-user-left-side"></div>
                <div class="col-lg-10 p-5">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <small>CLOSE </small><span aria-hidden="true">&times;</span>
                    </button>
                    <h1 class="mb-4">Create a new user</h1>  
                    <!-- Form to add user -->
                    <form id="userRegForm" action="registration" method="post">
                        <!-- User Type: here show only Buyer and Farmer -->
                        <div class="row">
                            <label for="m_utype">Select User Type</label>
                            <select name="select-utype" id="m_utype" class="form-control">
	                            <c:forEach items="${userTypes}" var="userType">
	                            	<option value="${userType.id}">${userType.type}</option>
	                            </c:forEach>
                            </select>                          
                        </div>
                        
                        <!-- Specific fields for Farmer to create a farm first -->
                        <fieldset class="my-2 form-farm-fields">
                            <legend>Farm Information</legend>
                            <!-- Address -->
                            <!-- Note: Use Google maps API, Autocomplete for Addresses and Search:
                                https://developers.google.com/maps/documentation/javascript/places-autocomplete#address_forms
                                https://developers.google.com/maps/documentation/javascript/examples/places-autocomplete-addressform
                            -->
                            <div class="row">
                                <div class="col-md-12 form-group">
                                    <input type="checkbox" name="farm_as_farmer" id="farm_as_farmer" checked></input>
                                    <label for="farm_as_farmer">Farm address same as Farmer address</label>
                                </div>
                            </div>
                            <div class="farm-address">
                                <div class="row">
                                    <div class="col-md-12 form-group" id="farmlocationField">
                                        <input type="text" name="autocompleteFarm" id="autocompleteFarm" placeholder="Enter your address"
                                            onFocus="geolocate()" class="form-control"></input>
                                    </div>
                                </div>
                            
                                <div class="row">
                                    <div class="col-md-2 form-group">
                                        <!-- <label for="appart_number">Appartment</label> -->
                                        <input type="text" class="field form-control" name="appart_number_farm" id="appart_number_farm" placeholder="Appart" disabled="true"></input>
                                    </div>
                                    <div class="col-md-2 form-group">
                                        <!-- <label for="street_number">Number</label> -->
                                        <input type="number" class="field form-control" name="street_number_farm" id="street_number_farm" placeholder="Number" disabled="true"></input>
                                    </div>
                                    <div class="col-md-8 form-group">
                                        <!-- <label for="route">Street name</label> -->
                                        <input class="field form-control" name="route_farm" id="route_farm" disabled="true" placeholder="Street name"></input>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 form-group">
                                        <!-- <label for="locality">City</label> -->
                                        <input type="number" class="field form-control" name="locality_farm" id="locality_farm" placeholder="City" disabled="true"></input>
                                    </div>
                                    <div class="col-md-6 form-group">
                                        <!-- <label for="administrative_area_level_1">Province</label> -->
                                        <input class="field form-control" name="administrative_area_level_1_farm" id="administrative_area_level_1_farm" placeholder="Province" disabled="true"></input>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3 form-group">
                                        <!-- <label for="postal_code">Postal code</label> -->
                                        <input type="number" class="field form-control" name="postal_code_farm" id="postal_code_farm" placeholder="Postal code" disabled="true"></input>
                                    </div>
                                    <div class="col-md-9 form-group">
                                        <!-- <label for="country_farm">Country</label> -->
                                        <input class="field form-control" name="country_farm" id="country_farm" disabled="true" placeholder="Country"></input>
                                    </div>
                                </div>
                            </div><!-- END Farm Address -->

                            <!-- Farm information -->
                            <div class="row">
                                <div class="col-md-12 form-group">
                                    <label for="m_ffname">Farm Name</label>
                                    <input type="text" class="form-control" name="m_ffname" id="m_ffname" required></input>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 form-group">
                                    <label for="m_ffheadline">Head Line</label>
                                    <input type="text" class="form-control" name="m_ffheadline" id="m_ffheadline" required></input>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 form-group">
                                    <label for="m_ffdescription">Description</label>
                                    <textarea class="form-control" name="m_ffdescription" id="m_ffdescription" cols="40" rows="5"></textarea>
                                </div>
                            </div>
                            <!-- Add farm Picture -->
                            <div class="row">
                                <div class="col-md-12 form-group">
                                    <label for="m_fpicture">Upload Farm Picture (PNG, JPG)</label>
                                    <input type="file" class="form-control" name="m_fpicture" id="m_fpicture" accept="image/png, image/jpeg, image/jpg"></input>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 d-inline-block mx-auto form-group" id="m_fpicture_img">
                                    <img src="//:0" alt="Uploaded farm picture">
                                </div>
                            </div>
                        </fieldset>
        
                        <fieldset class="my-2">
                            <legend>General Information</legend>
                            <!-- Address -->
                            <!-- Note: Use Google maps API, Autocomplete for Addresses and Search:
                                https://developers.google.com/maps/documentation/javascript/places-autocomplete#address_forms
                                https://developers.google.com/maps/documentation/javascript/examples/places-autocomplete-addressform
                            -->
                            <div class="row">
                                <div class="col-md-12 form-group" id="locationField">
                                    <input type="text" name="autocomplete" id="autocomplete" placeholder="Enter your address"
                                        onFocus="geolocate()" class="form-control"></input>
                                </div>
                            </div>
                        
                            <div class="row">
                                <div class="col-md-2 form-group">
                                    <!-- <label for="appart_number">Appartment</label> -->
                                    <input type="text" class="field form-control" name="appart_number" id="appart_number" placeholder="Appart" disabled="true"></input>
                                </div>
                                <div class="col-md-2 form-group">
                                    <!-- <label for="street_number">Number</label> -->
                                    <input type="number" class="field form-control" name="street_number" id="street_number" placeholder="Number" disabled="true" required></input>
                                </div>
                                <div class="col-md-8 form-group">
                                    <!-- <label for="route">Street name</label> -->
                                    <input class="field form-control" name="route" id="route" disabled="true" placeholder="Street name" required></input></td>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <!-- <label for="locality">City</label> -->
                                    <input type="number" class="field form-control" name="locality" id="locality" placeholder="City" disabled="true" required></input>
                                </div>
                                <div class="col-md-6 form-group">
                                    <!-- <label for="administrative_area_level_1">Province</label> -->
                                    <input class="field form-control" name="administrative_area_level_1" id="administrative_area_level_1" placeholder="Province" disabled="true" required></input></td>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3 form-group">
                                    <!-- <label for="postal_code">Postal code</label> -->
                                    <input type="number" class="field form-control" name="postal_code" id="postal_code" placeholder="Postal code" disabled="true" required></input>
                                </div>
                                <div class="col-md-9 form-group">
                                    <!-- <label for="country">Country</label> -->
                                    <input class="field form-control" name="country" id="country" disabled="true" placeholder="Country" required></input></td>
                                </div>
                            </div><!-- END Farmer Address -->

                            <!-- Name -->
                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <label for="m_fname">First Name</label>
                                    <input type="text" class="form-control" name="m_fname" id="m_fname" required>
                                </div>
                                <div class="col-md-6 form-group">
                                    <label for="m_lname">Last Name</label>
                                    <input type="text" class="form-control" name="m_lname" id="m_lname" required>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <label for="m_mname">Middle Name</label>
                                    <input type="text" class="form-control" name="m_mname" id="m_mname">
                                </div>
                            </div>
                            <!-- Email -->
                            <div class="row">
                                <div class="col-md-12 form-group">
                                    <label for="m_email">Email</label>
                                    <input type="email" class="form-control" name="m_email" id="m_email" required>
                                </div>
                            </div>
                            <!-- Phone -->
                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <label for="m_phone">Phone</label>
                                    <input type="text" class="form-control" name="m_phone" id="m_phone" required>
                                </div>
                            </div>
                            <!-- Password -->
                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <label for="m_password">Password</label>
                                    <input type="password" class="form-control" name="m_password" id="m_password" required>
                                </div>
                                <div class="col-md-6 form-group">
                                    <label for="m_cpassword">Confirm password</label>
                                    <input type="password" class="form-control" name="m_cpassword" id="m_cpassword" required>
                                </div>
                                <div></div>
                            </div>
                            <!-- Add Picture -->
                            <div class="row">
                                <div class="col-md-12 form-group">
                                    <label for="m_upicture">Upload Your Picture (PNG, JPG)</label>
                                    <input type="file" class="form-control" name="m_upicture" id="m_upicture" accept="image/png, image/jpeg, image/jpg"></input>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 d-inline-block mx-auto form-group" id="m_upicture_img">
                                    <img src="//:0" alt="Uploaded picture">
                                </div>
                            </div>
                        </fieldset>
        
                        <!-- Specific fields for Farmer or Buyer -->
                        <fieldset class="my-2 form-farm-fields">
                            <legend>Specific Information</legend>
                            <div class="row">
                                <div class="col-md-12 form-group">
                                    <label for="m_position">Position Name</label>
                                    <input type="text" class="form-control" name="m_position" id="m_position"></input>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 form-group">
                                    <label for="m_website">Web Site URL</label>
                                    <input type="url" class="form-control" name="m_website" id="m_website"></input>
                                </div>
                            </div>
                        </fieldset>
                        
                        <!-- Submit or reset -->
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <input type="submit" class="btn btn-primary btn-lg btn-block" value="Create user">
                            </div>
                            <div class="col-md-6 form-group">
                                <input type="reset" class="btn btn-primary btn-lg btn-block" value="Reset">
                            </div>
                        </div>
    
                    </form>
                </div>
                </div>
                
            </div>
            </div>
        </div>
    </div><!-- END Modal -->

    <!-- loader SVG -->
    <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>  
  </body>
</html>	
