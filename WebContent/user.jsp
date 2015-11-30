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
	<form class="form-horizontal" action="finaluser" method="post" enctype="multipart/form-data">
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

<!-- 				<form class="form-horizontal" action="finaluser" method="post">
 -->					<fieldset>
						<div class="form-group">
						  	<label for="inputEmail" class="col-md-3 control-label" style = "font-size: 17px;">Email*</label>
							<div class="col-md-9">
								<input type="email" class="form-control" id="inputEmail" name="inputEmail" placeholder="Email" required>
							</div>
						</div>

						<div class="form-group">
						  	<label for="name" class="col-md-3 control-label" style = "font-size: 17px;">Name*</label>
							<div class="col-md-9">
								<input class="form-control" id="name" name="name" placeholder="" required>
							</div>
						</div>

						<div class="form-group">
						  	<label for="enrollmentNumber" class="col-md-3 control-label" style = "font-size: 17px;">Enrollment Number*</label>
							<div class="col-md-9">
								<input class="form-control" id="enrollmentNumber" name="enrollmentNumber" placeholder="" required>
							</div>
						</div>

						<div class="form-group">
						  	<label for="addressOfCorrespondence" class="col-md-3 control-label" style = "font-size: 17px;">Address of Correspondence*</label>
							<div class="col-md-9">
								<textarea class="form-control" rows="3" id="addressOfCorrespondence" name="addressOfCorrespondence" required></textarea>
							</div>
						</div>

						<div class="form-group">
						  	<label for="mobile" class="col-md-3 control-label" style = "font-size: 17px;">Mobile*</label>
							<div class="col-md-9">
								<input class="form-control" id="mobile" name="mobile" placeholder="" required>
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-3 control-label" style = "font-size: 17px;">PhD Stream*</label>

							<div class="col-md-9">
								<div class="radio radio-primary">
									<label>
										<input type="radio" name="phdStream" id="optionsRadios1" value="Computer Science" checked="">
									Computer Science
									</label>
								</div>
								<div class="radio radio-primary">
								  	<label>
								    	<input type="radio" name="phdStream" id="optionsRadios2" value="Electronics and Communication">
								    Electronics and Communication
								  </label>
								</div>
								<div class="radio radio-primary">
								  	<label>
								    	<input type="radio" name="phdStream" id="optionsRadios2" value="Computational Biology">
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
							<label class="col-md-3 control-label" style = "font-size: 17px;">Disabled*</label>

							<div class="col-md-9">
								<br>
								<div class="radio radio-primary">
									<label>
										<input type="radio" name="disabled" id="optionsRadios1" value="Yes" checked="">
									Yes
									</label>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<label>
								    	<input type="radio" name="disabled" id="optionsRadios2" value="No">
								    No
								  </label>
								</div>
							</div>
						</div>

						<div class="form-group">
						  	<label for="mobile" class="col-md-3 control-label" style = "font-size: 17px;">Date of Birth*</label>
							<div class="col-md-9">
								<input class="form-control" id="DateofBirth" name="DateofBirth" placeholder="" required>
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
								<input type="" class="form-control" id="fatherName" name="fatherName" placeholder="" required>
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
								<textarea class="form-control" rows="3" id="permanentAddress" name="permanentAddress" required></textarea>
							</div>
						</div>

						<div class="form-group">
						  	<label for="pincode" class="col-md-3 control-label" style = "font-size: 17px;">Pin Code</label>
							<div class="col-md-9">
								<input type="" class="form-control" id="pincode" name="pincode" placeholder="">
							</div>
						</div>

						<div class="form-group">
							<div class="col-md-3 col-md-offset-5">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</div>

					</fieldset>
<!-- 				</form>
 -->		</div>

			<div class="tab-pane fade" id="educational">
<!-- 				<form class="form-horizontal" action="finaluser" method="post">
 -->					<fieldset>
						<legend>Schooling Information</legend>

						<div class="form-group">
						  	<label for="board10" class="col-md-3 control-label" style = "font-size: 17px;">Xth Board*</label>
							<div class="col-md-9">
								<input class="form-control" id="board10" name="board10" placeholder="">
							</div>
						</div>

						<div class="form-group">
						  	<label for="board10" class="col-md-3 control-label" style = "font-size: 17px;">Xth Marks(%)*</label>
							<div class="col-md-9">
								<input type = "number" class="form-control" id="board10p" name="board10p" placeholder="">
							</div>
						</div>

						<div class="form-group">
							<label for="pass10" class="col-md-3 control-label" style = "font-size: 17px;">Year of Passing Xth*</label>

							<div class="col-md-9">
								<select id="pass10" name="pass10" class="form-control">
									<option value="2001">2001</option>
									<option value="2002">2002</option>
									<option value="2003">2003</option>
									<option value="2004">2004</option>
									<option value="2005">2005</option>
								</select>
							</div>
						</div>

						<div class="form-group">
						  	<label for="board12" class="col-md-3 control-label" style = "font-size: 17px;">XIIth Board*</label>
							<div class="col-md-9">
								<input class="form-control" id="board12" name="board12" placeholder="">
							</div>
						</div>

						<div class="form-group">
						  	<label for="board12" class="col-md-3 control-label" style = "font-size: 17px;">XIIth Marks(%)*</label>
							<div class="col-md-9">
								<input type = "number" class="form-control" id="board12p" name="board12p" placeholder="">
							</div>
						</div>

						<div class="form-group">
							<label for="pass12" class="col-md-3 control-label" style = "font-size: 17px;">Year of Passing XIIth*</label>

							<div class="col-md-9">
								<select id="pass12" name="pass12" class="form-control">
									<option value="2001">2001</option>
									<option value="2002">2002</option>
									<option value="2003">2003</option>
									<option value="2004">2004</option>
									<option value="2005">2005</option>
								</select>
							</div>
						</div>

						<br>

						<legend>Graduation Information</legend>

						<div class="form-group">
						  	<label for="gradDegree" class="col-md-3 control-label" style = "font-size: 17px;">Degree*</label>
							<div class="col-md-9">
								<input class="form-control" id="gradDegree" name="gradDegree" placeholder="">
							</div>
						</div>

						<div class="form-group">
						  	<label for="gradDept" class="col-md-3 control-label" style = "font-size: 17px;">Department/Discipline*</label>
							<div class="col-md-9">
								<input class="form-control" id="gradDept" name="gradDept" placeholder="">
							</div>
						</div>

						<div class="form-group">
						  	<label for="gradCollege" class="col-md-3 control-label" style = "font-size: 17px;">Name of College*</label>
							<div class="col-md-9">
								<input class="form-control" id="gradCollege" name="gradCollege" placeholder="">
							</div>
						</div>

						<div class="form-group">
						  	<label for="gradUniversity" class="col-md-3 control-label" style = "font-size: 17px;">Name of University*</label>
							<div class="col-md-9">
								<input class="form-control" id="gradUniversity" name="gradUniversity" placeholder="">
							</div>
						</div>

						<div class="form-group">
						  	<label for="gradCity" class="col-md-3 control-label" style = "font-size: 17px;">City*</label>
							<div class="col-md-9">
								<input class="form-control" id="gradCity" name="gradCity" placeholder="">
							</div>
						</div>

						<div class="form-group">
							<label for="gradState" class="col-md-3 control-label" style = "font-size: 17px;">State*</label>

							<div class="col-md-9">
								<select id="gradState" name="gradState" class="form-control">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label for="gradYear" class="col-md-3 control-label" style = "font-size: 17px;">Year of Graduation*</label>

							<div class="col-md-9">
								<select id="gradYear" name="gradYear" class="form-control">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-3 control-label" style = "font-size: 17px;">CGPA or MARKS?</label>

							<div class="col-md-9">
								<div class="radio radio-primary">
									<label>
										<input type="radio" name="stream" id="optionsRadios1" value="CGPA" checked="">
									CGPA
									</label>
								</div>
								<div class="form-group" id="gradCGPAInput" name="gradCGPAInput" style = "margin-top: -17px;">
									<div class="col-md-3">
										<input class="form-control" id="gradCGPA" name="gradCGPA" placeholder="">
									</div>
									<div class="col-md-3">
										<select id="gradCGPAScale" name="gradCGPAScale" class="form-control">
											<option>4</option>
											<option>10</option>
										</select>
									</div>
								</div>
								
								<div class="radio radio-primary">
								  	<label>
								    	<input type="radio" name="stream" id="optionsRadios2" value="MARKS">
								    MARKS(%)
								  </label>
								</div>
								<div class="form-group" id="gradMarksInput" name="gradMarksInput" style = "margin-top: -17px;">
									<div class="col-md-3">
										<input class="form-control" id="gradCGPA" placeholder="">
									</div>
								</div>
							</div>
						</div>

						<div class="form-group">
						  	<div class="col-md-offset-1 col-md-10">
								<div class="checkbox">
									<label>
										<input type="checkbox">&nbsp;&nbsp;&nbsp;Are you applying for ECE PhD?
									</label>
								</div>
							</div>
						</div>
						<div id="ecePref" style = "display: none;">
							<div class="col-md-offset-1 col-md-10">
								<br>
								<legend>ECE PhD Subject Preference</legend>

								<p>You are required to select 4 subjects if you are an under-graduate otherwise you need to fill 3. </p>

								<div class="form-group">
									<label for="ecePref1" class="col-md-3 control-label" style = "font-size: 17px;">Preference 1*</label>

									<div class="col-md-9">
										<select id="ecePref1" class="form-control">
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select>
									</div>
								</div>

								<div class="form-group">
									<label for="ecePref2" class="col-md-3 control-label" style = "font-size: 17px;">Preference 2*</label>

									<div class="col-md-9">
										<select id="ecePref2" class="form-control">
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select>
									</div>
								</div>

								<div class="form-group">
									<label for="ecePref3" class="col-md-3 control-label" style = "font-size: 17px;">Preference 3*</label>

									<div class="col-md-9">
										<select id="ecePref3" class="form-control">
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select>
									</div>
								</div>

								<div class="form-group">
									<label for="ecePref4" class="col-md-3 control-label" style = "font-size: 17px;">Preference 4</label>

									<div class="col-md-9">
										<select id="ecePref4" class="form-control">
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select>
									</div>
								</div>

							</div>
						</div>

						<div class="form-group">
						  	<div class="col-md-offset-1 col-md-10">
								<div class="checkbox">
									<label>
										<input type="checkbox">&nbsp;&nbsp;&nbsp;Have you completed your Post Graduation?
									</label>
								</div>
							</div>
						</div>
						<div id="postGrad" style="display:none;">
							<div class="col-md-offset-1 col-md-10">
								<br>
								<legend>Post - Graduation Information</legend>

								<div class="form-group">
								  	<label for="postCollege" class="col-md-3 control-label" style = "font-size: 17px;">Name of College</label>
									<div class="col-md-9">
										<input class="form-control" id="postCollege" placeholder="">
									</div>
								</div>

								<div class="form-group">
								  	<label for="postCity" class="col-md-3 control-label" style = "font-size: 17px;">City</label>
									<div class="col-md-9">
										<input class="form-control" id="postCity" placeholder="">
									</div>
								</div>

								<div class="form-group">
									<label for="postState" class="col-md-3 control-label" style = "font-size: 17px;">State</label>

									<div class="col-md-9">
										<select id="postState" class="form-control">
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select>
									</div>
								</div>

								<div class="form-group">
								  	<label for="postDept" class="col-md-3 control-label" style = "font-size: 17px;">Department/Discipline</label>
									<div class="col-md-9">
										<input class="form-control" id="postDept" placeholder="">
									</div>
								</div>

								<div class="form-group">
								  	<label for="postDegree" class="col-md-3 control-label" style = "font-size: 17px;">Degree</label>
									<div class="col-md-9">
										<input class="form-control" id="postDegree" placeholder="">
									</div>
								</div>

								<div class="form-group">
								  	<label for="PostThesis" class="col-md-3 control-label" style = "font-size: 17px;">Thesis Title</label>
									<div class="col-md-9">
										<input class="form-control" id="PostThesis" placeholder="">
									</div>
								</div>

								<div class="form-group">
									<label for="postYear" class="col-md-3 control-label" style = "font-size: 17px;">Year of Post-Graduation*</label>

									<div class="col-md-9">
										<select id="postYear" class="form-control">
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select>
									</div>
								</div>

								<div class="form-group">
									<label class="col-md-3 control-label" style = "font-size: 17px;">CGPA or MARKS?</label>

									<div class="col-md-9">
										<div class="radio radio-primary">
											<label>
												<input type="radio" name="postCGMARKS" id="optionsRadios1" value="option1" checked="">
											CGPA
											</label>
										</div>
										<div class="form-group" id="postCGPAInput" style = "margin-top: -17px;">
											<div class="col-md-3">
												<input class="form-control" id="gradCGPA" placeholder="">
											</div>
											<div class="col-md-3">
												<select id="postCGPAScale" class="form-control">
													<option>4</option>
													<option>10</option>
												</select>
											</div>
										</div>
										
										<div class="radio radio-primary">
										  	<label>
										    	<input type="radio" name="postCGMARKS" id="optionsRadios2" value="option2">
										    MARKS(%)
										  </label>
										</div>
										<div class="form-group" id="gradMarksInput" style = "margin-top: -17px;">
											<div class="col-md-3">
												<input class="form-control" id="gradCGPA" placeholder="">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="form-group">
						  	<div class="col-md-offset-1 col-md-10">
								<div class="checkbox">
									<label>
										<input type="checkbox">&nbsp;&nbsp;&nbsp;Other Academic Degrees?
									</label>
								</div>
							</div>
						</div>
						<div class="other" style="display:none;">
							<div class="col-md-offset-1 col-md-10">
								<br>
								<legend>Other Academic Degrees</legend>

								<div class="form-group">
								  	<label for="examName" class="col-md-3 control-label" style = "font-size: 17px;">Exam Name</label>
									<div class="col-md-9">
										<input class="form-control" id="examName" placeholder="">
									</div>
								</div>

								<div class="form-group">
								  	<label for="examSubject" class="col-md-3 control-label" style = "font-size: 17px;">Subject</label>
									<div class="col-md-9">
										<input class="form-control" id="examSubject" placeholder="">
									</div>
								</div>

								<div class="form-group">
									<label for="examYear" class="col-md-3 control-label" style = "font-size: 17px;">Year*</label>

									<div class="col-md-9">
										<select id="examYear" class="form-control">
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select>
									</div>
								</div>

								<div class="form-group">
								  	<label for="examScore" class="col-md-3 control-label" style = "font-size: 17px;">Score</label>
									<div class="col-md-9">
										<input type = "number" class="form-control" id="examScore" placeholder="">
									</div>
								</div>

								<div class="form-group">
								  	<label for="examRank" class="col-md-3 control-label" style = "font-size: 17px;">Rank</label>
									<div class="col-md-9">
										<input type="number" class="form-control" id="examRank" placeholder="">
									</div>
								</div>
							</div>
						</div>

						<div class="form-group">
						  	<div class="col-md-offset-1 col-md-10">
								<div class="checkbox">
									<label>
										<input type="checkbox">&nbsp;&nbsp;&nbsp;Taken GATE Exam?
									</label>
								</div>
							</div>
						</div>
						<div class="gate" style="display:none;">
							<div class="col-md-offset-1 col-md-10">
								<br>
								<legend>Gate</legend>

								<div class="form-group">
								  	<label for="gateArea" class="col-md-3 control-label" style = "font-size: 17px;">Area</label>
									<div class="col-md-9">
										<input class="form-control" id="gateArea" placeholder="">
									</div>
								</div>

								<div class="form-group">
									<label for="gateYear" class="col-md-3 control-label" style = "font-size: 17px;">Year of Graduation*</label>

									<div class="col-md-9">
										<select id="gateYear" class="form-control">
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select>
									</div>
								</div>

								<div class="form-group">
								  	<label for="gateArea" class="col-md-3 control-label" style = "font-size: 17px;">Marks(Out Of 100)</label>
									<div class="col-md-9">
										<input type="number" class="form-control" id="gateArea" placeholder="">
									</div>
								</div>

								<div class="form-group">
								  	<label for="gateScore" class="col-md-3 control-label" style = "font-size: 17px;">Score</label>
									<div class="col-md-9">
										<input type="number" class="form-control" id="gateScore" placeholder="">
									</div>
								</div>

								<div class="form-group">
								  	<label for="gateRank" class="col-md-3 control-label" style = "font-size: 17px;">Rank</label>
									<div class="col-md-9">
										<input type="number" class="form-control" id="gateRank" placeholder="">
									</div>
								</div>
							</div>
						</div>

						<br><br><br>

						<legend>Achievements, CV and Statement of Purpose</legend>

						<div class="form-group">
						  	<label for="achievements" class="col-md-3 control-label" style = "font-size: 17px;">Achievements (Other information like ranks, medals etc.)</label>
							<div class="col-md-9">
								<input class="form-control" id="achievements" name="achievements" placeholder="">
							</div>
						</div>

						<div class="form-group">
						    <label for="cv" class="col-md-3 control-label" style = "font-size: 17px;">CV/Resume*</label>

					      	<div class="col-md-9">
					        	<input type="text" readonly="" class="form-control" placeholder="Browse...">
					        	<input type="file" id="cv" name="uploadFile" multiple="">
					      	</div>
						</div>

						<div class="form-group">
						    <label for="sop" class="col-md-3 control-label" style = "font-size: 17px;">Statement of Purpose*</label>

					      	<div class="col-md-9">
					        	<input type="text" readonly="" class="form-control" placeholder="Browse...">
					        	<input type="file" id="sop" multiple="">
					      	</div>
						</div>

						<div class="form-group">
							<div class="col-md-3 col-md-offset-5">
								<button type="submit" class="btn btn-primary">Save</button>
							</div>
						</div>
					</fieldset>
<!-- 				</form>
 -->		</div>

			<div class="tab-pane fade" id="payment">
				<!-- <div class="alert alert-dismissible alert-info">
					You can pay the application fee of INR 350 online using Credit/Debit card or NetBanking.
				</div> -->

				<div class="panel panel-default">
					<div class="panel-body">
						You can pay the application fee of INR 350 online using Credit/Debit card or NetBanking.
					</div>
				</div>

				<a href="" class="btn btn-raised btn-success">Pay using Debit/Credit Card or Net Banking</a>		

				<div class="panel panel-default">
					<div class="panel-body">
						You can also make your payment using a Demand Draft of INR 350 in favour of “IIIT-Delhi Collections Account” payable at "Delhi" to the following address:
                        <strong>
                        <br>Assistant Manager (Academics)
                        <br>A-109, Academics Building, IIIT-Delhi
                        <br>Okhla Industrial Estate, Phase-3
                        <br>New Delhi - 110020
                        <br>
                        </strong>
                    	Please fill in the details of your demand draft in the following form.
					</div>
				</div>

				<div class="form-group">
				  	<div class="col-md-10">
						<div class="checkbox">
							<label>
								<input type="checkbox">&nbsp;&nbsp;&nbsp;Will you be paying through Demand Draft
							</label>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label for="bankName" class="col-md-3 control-label" style = "font-size: 17px;">Bank Name</label>
					<div class="col-md-9">
					<input class="form-control" id="bankName" placeholder="">
					</div>
				</div>

				<div class="form-group">
					<label for="branch" class="col-md-3 control-label" style = "font-size: 17px;">Branch</label>
					<div class="col-md-9">
					<input class="form-control" id="branch" placeholder="">
					</div>
				</div>

				<div class="form-group">
					<label for="ddnum" class="col-md-3 control-label" style = "font-size: 17px;">Demand Draft Number</label>
					<div class="col-md-9">
					<input class="form-control" id="ddnum" placeholder="">
					</div>
				</div>

				<div class="form-group">
					<div class="col-md-3 col-md-offset-3">
						<button type="submit" class="btn btn-primary">Save</button>
					</div>
				</div>

			</div>

			<div class="tab-pane fade" id="feedback">
				
			</div>

			<div class="tab-pane fade" id="submit">
				<!-- <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit.</p> -->
			<div class="form-group">
							<div class="col-md-3 col-md-offset-5">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</div>
			</div>
		</div>
	</div>
</form>
	
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