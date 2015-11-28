<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.RequestDispatcher" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<!-- Material Design fonts -->
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700" type="text/css">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

	<!-- <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"> -->
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

	<link rel="stylesheet" type="text/css" href="css/bootstrap-material-design.css">
	<link rel="stylesheet" type="text/css" href="css/ripples.min.css">
	<!-- <link rel="stylesheet" type="text/css" href="css/bootstrap-datetimepicker.min.css"> -->
	<link rel="stylesheet" type="text/css" href="css/style.css">

	<!--script type="text/javascript" src = "js/bootstrap-datetimepicker.min.js"></script-->
</head>
<body>
	<div class="navbar navbar-inverse" style = "background-color: #4B4C56">
		<div class="container-fluid">
			<div class="navbar-header">
			  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-inverse-collapse">
			    <span class="icon-bar"></span>
			    <span class="icon-bar"></span>
			    <span class="icon-bar"></span>
			  </button>
			  <a class="navbar-brand" href=""><img src="logo.png" style = "margin-top: -5px"></a>
			</div>
			<div class="navbar-collapse collapse navbar-inverse-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="">FAQ</a></li>
					<li><a href="">Contact</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="container">
		<ul class="nav nav-tabs" id="tabs" style="margin-bottom: 15px; background-color: #4B4C56;">
			<li class="active"><a href="#personal" data-toggle="tab">Personal Information</a></li>
			<li><a href="#educational" data-toggle="tab">Educational Information</a></li>
			<li><a href="#payment" data-toggle="tab">Payment Information</a></li>
			<li><a href="#feedback" data-toggle="tab">Feedback</a></li>
			<li><a href="#submit" data-toggle="tab">Submit</a></li>
			<!-- <li class="disabled"><a>Disabled</a></li> -->
		</ul>
		<div id="myTabContent" class="tab-content">
			<div class="tab-pane fade active in" id="personal">
				<!-- <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p> -->
				<form class="form-horizontal" action="finaluser" method="post">
					<fieldset>
						<div class="form-group">
						  	<label for="inputEmail" class="col-md-3 control-label" style = "font-size: 17px;">Email*</label>
							<div class="col-md-9">
								<input type="email" class="form-control" id="inputEmail" name="inputEmail" placeholder="Email">
							</div>
						</div>

						<div class="form-group">
						  	<label for="name" class="col-md-3 control-label" style = "font-size: 17px;">Name*</label>
							<div class="col-md-9">
								<input class="form-control" id="name" name="name" placeholder="">
							</div>
						</div>

						<div class="form-group">
						  	<label for="enrollmentNumber" class="col-md-3 control-label" style = "font-size: 17px;">Enrollment Number*</label>
							<div class="col-md-9">
								<input class="form-control" id="enrollmentNumber" name="enrollmentNumber" placeholder="">
							</div>
						</div>

						<div class="form-group">
						  	<label for="addressOfCorrespondence" class="col-md-3 control-label" style = "font-size: 17px;">Address of Correspondence*</label>
							<div class="col-md-9">
								<textarea class="form-control" rows="3" id="addressOfCorrespondence" name="addressOfCorrespondence"></textarea>
							</div>
						</div>

						<div class="form-group">
						  	<label for="mobile" class="col-md-3 control-label" style = "font-size: 17px;">Mobile*</label>
							<div class="col-md-9">
								<input class="form-control" id="mobile" name="mobile" placeholder="">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-3 control-label" style = "font-size: 17px;">PhD Stream*</label>

							<div class="col-md-9">
								<div class="radio radio-primary">
									<label>
										<input type="radio" name="stream" id="optionsRadios1" value="Computer Science" checked="">
									Computer Science
									</label>
								</div>
								<div class="radio radio-primary">
								  	<label>
								    	<input type="radio" name="stream" id="optionsRadios2" value="Electronics and Communication">
								    Electronics and Communication
								  </label>
								</div>
								<div class="radio radio-primary">
								  	<label>
								    	<input type="radio" name="stream" id="optionsRadios2" value="Computational Biology">
								    Computational Biology
								  </label>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="PhDAreaPreference1" class="col-md-3 control-label" style = "font-size: 17px;">PhD Area Preference 1*</label>

							<div class="col-md-9">
								<select id="PhDAreaPreference1" name="PhDAreaPreference1" class="form-control">
									<option value="" selected="selected">---------</option><option value="1" >Artificial Intelligence and Robotics - CSE</option><option  >Biophysics - CB</option><option  >Compilers - CSE</option><option  >Computer Architecture and Systems Design - ECE</option><option >Computer Architecture and Systems Design - CSE</option><option >Computer Graphics - CSE</option><option >Computer Vision - CSE</option><option  >Controls and Robotics - ECE</option><option  >Digital and Analog VLSI Systems Design - ECE</option><option  >Electromagnetics - ECE</option><option  >Embedded and VLSI systems design - ECE</option><option  >Embedded Systems - ECE</option><option  >Fiber-Wireless Architectures - ECE</option><option >Image Analysis and Biometrics - CSE</option><option >Information Management and Data Engineering - CSE</option><option  >Machine Learning - CSE</option><option  >Machine Learning - ECE</option><option >Massively Parallel Systems - CSE</option><option >Mobile Computing and Networking Applications - CSE</option><option  >OFDM based Optical Access Networks - ECE</option><option  >Optical Wireless Communication Systems - ECE</option><option >Program Analysis - CSE</option><option  >RF and mixed signal electronics - ECE</option><option  >Security and Privacy - CSE</option><option  >Signal and Image Processing - ECE</option><option  >Signal and Image Processing - CSE</option><option  >Software Engineering - CSE</option><option  >Structural Biology - CB</option><option  >Systems Biology - CB</option><option  >Theoretical Computer Science - CSE</option><option  >Wireless Communication - ECE</option><option  >Wireless Networks - ECE</option><option  >Wireless Networks - CSE</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label for="PhDAreaPreference2" class="col-md-3 control-label" style = "font-size: 17px;">PhD Area Preference 2</label>

							<div class="col-md-9">
								<select id="PhDAreaPreference2" name="PhDAreaPreference2" class="form-control">
									<option>---------</option><option>Artificial Intelligence and Robotics - CSE</option><option>Biophysics - CB</option><option>Compilers - CSE</option><option>Computer Architecture and Systems Design - ECE</option><option >Computer Architecture and Systems Design - CSE</option><option >Computer Graphics - CSE</option><option >Computer Vision - CSE</option><option  >Controls and Robotics - ECE</option><option  >Digital and Analog VLSI Systems Design - ECE</option><option  >Electromagnetics - ECE</option><option  >Embedded and VLSI systems design - ECE</option><option  >Embedded Systems - ECE</option><option  >Fiber-Wireless Architectures - ECE</option><option >Image Analysis and Biometrics - CSE</option><option >Information Management and Data Engineering - CSE</option><option  >Machine Learning - CSE</option><option  >Machine Learning - ECE</option><option >Massively Parallel Systems - CSE</option><option >Mobile Computing and Networking Applications - CSE</option><option  >OFDM based Optical Access Networks - ECE</option><option  >Optical Wireless Communication Systems - ECE</option><option >Program Analysis - CSE</option><option  >RF and mixed signal electronics - ECE</option><option  >Security and Privacy - CSE</option><option  >Signal and Image Processing - ECE</option><option  >Signal and Image Processing - CSE</option><option  >Software Engineering - CSE</option><option  >Structural Biology - CB</option><option  >Systems Biology - CB</option><option  >Theoretical Computer Science - CSE</option><option  >Wireless Communication - ECE</option><option  >Wireless Networks - ECE</option><option  >Wireless Networks - CSE</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label for="PhDAreaPreference3" class="col-md-3 control-label" style = "font-size: 17px;">PhD Area Preference 3</label>

							<div class="col-md-9">
								<select id="PhDAreaPreference3" name="PhDAreaPreference3" class="form-control">
									<option selected="selected">---------</option><option >Artificial Intelligence and Robotics - CSE</option><option  >Biophysics - CB</option><option  >Compilers - CSE</option><option  >Computer Architecture and Systems Design - ECE</option><option >Computer Architecture and Systems Design - CSE</option><option >Computer Graphics - CSE</option><option >Computer Vision - CSE</option><option  >Controls and Robotics - ECE</option><option  >Digital and Analog VLSI Systems Design - ECE</option><option  >Electromagnetics - ECE</option><option  >Embedded and VLSI systems design - ECE</option><option  >Embedded Systems - ECE</option><option  >Fiber-Wireless Architectures - ECE</option><option >Image Analysis and Biometrics - CSE</option><option >Information Management and Data Engineering - CSE</option><option  >Machine Learning - CSE</option><option  >Machine Learning - ECE</option><option >Massively Parallel Systems - CSE</option><option >Mobile Computing and Networking Applications - CSE</option><option  >OFDM based Optical Access Networks - ECE</option><option  >Optical Wireless Communication Systems - ECE</option><option >Program Analysis - CSE</option><option  >RF and mixed signal electronics - ECE</option><option  >Security and Privacy - CSE</option><option  >Signal and Image Processing - ECE</option><option  >Signal and Image Processing - CSE</option><option  >Software Engineering - CSE</option><option  >Structural Biology - CB</option><option  >Systems Biology - CB</option><option  >Theoretical Computer Science - CSE</option><option  >Wireless Communication - ECE</option><option  >Wireless Networks - ECE</option><option  >Wireless Networks - CSE</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-3 control-label" style = "font-size: 17px;">Gender*</label>

							<div class="col-md-9">
								<div class="radio radio-primary">
									<label>
										<input type="radio" name="gender" id="optionsRadios1" value="Male" checked="">
									Male
									</label>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<label>
								    	<input type="radio" name="gender" id="optionsRadios2" value="Female">
								    Female
								  </label>
								</div>
								<!-- <div class="radio radio-primary">
								  	<label>
								    	<input type="radio" name="gender" id="optionsRadios2" value="option2">
								    Female
								  </label>
								</div> -->
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-3 control-label" style = "font-size: 17px;">Category*</label>

							<div class="col-md-9">
								<div class="radio radio-primary">
									<label>
										<input type="radio" name="category" id="optionsRadios1" value="General" checked="">
									General
									</label>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<label>
								    	<input type="radio" name="category" id="optionsRadios2" value="SC">
								    SC
								  	</label>
								  	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								  	<label>
								    	<input type="radio" name="category" id="optionsRadios3" value="ST">
								    ST
								  	</label>
								  	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								  	<label>	
								    	<input type="radio" name="category" id="optionsRadios4" value="OBC">
								    OBC
								  	</label>
								</div>
							</div>
						</div>

						

						<!-- <div class="form-group">
						  	<label for="permanentAddress" class="col-md-3 control-label" style = "font-size: 17px;">Address of Correspondence*</label>
							<div class="col-md-9">
								<textarea class="form-control" rows="3" id="permanentAddress" name="permanentAddress"></textarea>
							</div>
						</div> -->

						<div class="form-group">
						  	<label for="mobile" class="col-md-3 control-label" style = "font-size: 17px;">Date of Birth*</label>
							<div class="col-md-9">
								<input class="form-control" id="DateofBirth" name="DateofBirth" placeholder="">
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-3 control-label" style = "font-size: 17px;">Children/War Widows of Defence Personnel killed/Disabled in Action*</label>

							<div class="col-md-9">
								<br>
								<div class="radio radio-primary">
									<label>
										<input type="radio" name="children" id="optionsRadios1" value="Yes" checked="">
									Yes
									</label>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<label>
								    	<input type="radio" name="children" id="optionsRadios2" value="No">
								    No
								  </label>
								</div>
							</div>
						</div>

						<div class="form-group">
						  	<label for="fatherName" class="col-md-3 control-label" style = "font-size: 17px;">Father's Name*</label>
							<div class="col-md-9">
								<input type="" class="form-control" id="fatherName" name="fatherName" placeholder="">
							</div>
						</div>

						<div class="form-group">
							<label for="nationality" class="col-md-3 control-label" style = "font-size: 17px;">Nationality*</label>

							<div class="col-md-9">
								<select id="nationality" name="nationality" class="form-control">
									<option value="" selected="selected">---------</option><option value="afghan">Afghan</option><option value="albanian">Albanian</option><option value="algerian">Algerian</option><option value="american">American</option><option value="andorran">Andorran</option><option value="angolan">Angolan</option><option value="antiguans">Antiguans</option><option value="argentinean">Argentinean</option><option value="armenian">Armenian</option><option value="australian">Australian</option><option value="austrian">Austrian</option><option value="azerbaijani">Azerbaijani</option><option value="bahamian">Bahamian</option><option value="bahraini">Bahraini</option><option value="bangladeshi">Bangladeshi</option><option value="barbadian">Barbadian</option><option value="barbudans">Barbudans</option><option value="batswana">Batswana</option><option value="belarusian">Belarusian</option><option value="belgian">Belgian</option><option value="belizean">Belizean</option><option value="beninese">Beninese</option><option value="bhutanese">Bhutanese</option><option value="bolivian">Bolivian</option><option value="bosnian">Bosnian</option><option value="brazilian">Brazilian</option><option value="british">British</option><option value="bruneian">Bruneian</option><option value="bulgarian">Bulgarian</option><option value="burkinabe">Burkinabe</option><option value="burmese">Burmese</option><option value="burundian">Burundian</option><option value="cambodian">Cambodian</option><option value="cameroonian">Cameroonian</option><option value="canadian">Canadian</option><option value="cape verdean">Cape Verdean</option><option value="central african">Central African</option><option value="chadian">Chadian</option><option value="chilean">Chilean</option><option value="chinese">Chinese</option><option value="colombian">Colombian</option><option value="comoran">Comoran</option><option value="congolese">Congolese</option><option value="costa rican">Costa Rican</option><option value="croatian">Croatian</option><option value="cuban">Cuban</option><option value="cypriot">Cypriot</option><option value="czech">Czech</option><option value="danish">Danish</option><option value="djibouti">Djibouti</option><option value="dominican">Dominican</option><option value="dutch">Dutch</option><option value="east timorese">East Timorese</option><option value="ecuadorean">Ecuadorean</option><option value="egyptian">Egyptian</option><option value="emirian">Emirian</option><option value="equatorial guinean">Equatorial Guinean</option><option value="eritrean">Eritrean</option><option value="estonian">Estonian</option><option value="ethiopian">Ethiopian</option><option value="fijian">Fijian</option><option value="filipino">Filipino</option><option value="finnish">Finnish</option><option value="french">French</option><option value="gabonese">Gabonese</option><option value="gambian">Gambian</option><option value="georgian">Georgian</option><option value="german">German</option><option value="ghanaian">Ghanaian</option><option value="greek">Greek</option><option value="grenadian">Grenadian</option><option value="guatemalan">Guatemalan</option><option value="guinea-bissauan">Guinea-Bissauan</option><option value="guinean">Guinean</option><option value="guyanese">Guyanese</option><option value="haitian">Haitian</option><option value="herzegovinian">Herzegovinian</option><option value="honduran">Honduran</option><option value="hungarian">Hungarian</option><option value="icelander">Icelander</option><option value="indian">Indian</option><option value="indonesian">Indonesian</option><option value="iranian">Iranian</option><option value="iraqi">Iraqi</option><option value="irish">Irish</option><option value="israeli">Israeli</option><option value="italian">Italian</option><option value="ivorian">Ivorian</option><option value="jamaican">Jamaican</option><option value="japanese">Japanese</option><option value="jordanian">Jordanian</option><option value="kazakhstani">Kazakhstani</option><option value="kenyan">Kenyan</option><option value="kittian and nevisian">Kittian and Nevisian</option><option value="kuwaiti">Kuwaiti</option><option value="kyrgyz">Kyrgyz</option><option value="laotian">Laotian</option><option value="latvian">Latvian</option><option value="lebanese">Lebanese</option><option value="liberian">Liberian</option><option value="libyan">Libyan</option><option value="liechtensteiner">Liechtensteiner</option><option value="lithuanian">Lithuanian</option><option value="luxembourger">Luxembourger</option><option value="macedonian">Macedonian</option><option value="malagasy">Malagasy</option><option value="malawian">Malawian</option><option value="malaysian">Malaysian</option><option value="maldivan">Maldivan</option><option value="malian">Malian</option><option value="maltese">Maltese</option><option value="marshallese">Marshallese</option><option value="mauritanian">Mauritanian</option><option value="mauritian">Mauritian</option><option value="mexican">Mexican</option><option value="micronesian">Micronesian</option><option value="moldovan">Moldovan</option><option value="monacan">Monacan</option><option value="mongolian">Mongolian</option><option value="moroccan">Moroccan</option><option value="mosotho">Mosotho</option><option value="motswana">Motswana</option><option value="mozambican">Mozambican</option><option value="namibian">Namibian</option><option value="nauruan">Nauruan</option><option value="nepalese">Nepalese</option><option value="new zealander">New Zealander</option><option value="ni-vanuatu">Ni-Vanuatu</option><option value="nicaraguan">Nicaraguan</option><option value="nigerien">Nigerien</option><option value="north korean">North Korean</option><option value="northern irish">Northern Irish</option><option value="norwegian">Norwegian</option><option value="omani">Omani</option><option value="pakistani">Pakistani</option><option value="palauan">Palauan</option><option value="panamanian">Panamanian</option><option value="papua new guinean">Papua New Guinean</option><option value="paraguayan">Paraguayan</option><option value="peruvian">Peruvian</option><option value="polish">Polish</option><option value="portuguese">Portuguese</option><option value="qatari">Qatari</option><option value="romanian">Romanian</option><option value="russian">Russian</option><option value="rwandan">Rwandan</option><option value="saint lucian">Saint Lucian</option><option value="salvadoran">Salvadoran</option><option value="samoan">Samoan</option><option value="san marinese">San Marinese</option><option value="sao tomean">Sao Tomean</option><option value="saudi">Saudi</option><option value="scottish">Scottish</option><option value="senegalese">Senegalese</option><option value="serbian">Serbian</option><option value="seychellois">Seychellois</option><option value="sierra leonean">Sierra Leonean</option><option value="singaporean">Singaporean</option><option value="slovakian">Slovakian</option><option value="slovenian">Slovenian</option><option value="solomon islander">Solomon Islander</option><option value="somali">Somali</option><option value="south african">South African</option><option value="south korean">South Korean</option><option value="spanish">Spanish</option><option value="sri lankan">Sri Lankan</option><option value="sudanese">Sudanese</option><option value="surinamer">Surinamer</option><option value="swazi">Swazi</option><option value="swedish">Swedish</option><option value="swiss">Swiss</option><option value="syrian">Syrian</option><option value="taiwanese">Taiwanese</option><option value="tajik">Tajik</option><option value="tanzanian">Tanzanian</option><option value="thai">Thai</option><option value="togolese">Togolese</option><option value="tongan">Tongan</option><option value="trinidadian or tobagonian">Trinidadian or Tobagonian</option><option value="tunisian">Tunisian</option><option value="turkish">Turkish</option><option value="tuvaluan">Tuvaluan</option><option value="ugandan">Ugandan</option><option value="ukrainian">Ukrainian</option><option value="uruguayan">Uruguayan</option><option value="uzbekistani">Uzbekistani</option><option value="venezuelan">Venezuelan</option><option value="vietnamese">Vietnamese</option><option value="welsh">Welsh</option><option value="yemenite">Yemenite</option><option value="zambian">Zambian</option><option value="zimbabwean">Zimbabwean</option>
								</select>
							</div>
						</div>

						<div class="form-group">
						  	<label for="permanentAddress" class="col-md-3 control-label" style = "font-size: 17px;">Permanent Address*</label>
							<div class="col-md-9">
								<textarea class="form-control" rows="3" id="permanentAddress" name="permanentAddress"></textarea>
							</div>
						</div>

						<div class="form-group">
						  	<label for="pincode" class="col-md-3 control-label" style = "font-size: 17px;">Pin Code</label>
							<div class="col-md-9">
								<input type="email" class="form-control" id="pincode" name="pincode" placeholder="">
							</div>
						</div>

						<div class="form-group">
							<div class="col-md-3 col-md-offset-5">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</div>

					</fieldset>
				</form>
			</div>

			<div class="tab-pane fade" id="educational">
				<p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit.</p>
			</div>

			<div class="tab-pane fade" id="payment">
				<p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit.</p>
			</div>

			<div class="tab-pane fade" id="feedback">
				<p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit.</p>
			</div>

			<div class="tab-pane fade" id="submit">
				<p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit.</p>
			</div>
		</div>
	</div>
	
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/ripples.min.js"></script>
	<script src="js/material.min.js"></script>
	<script>
        $(document).ready(function() {
            // This command is used to initialize some elements and make them work properly
            $.material.init();
        });
    </script>
</body>
</html>