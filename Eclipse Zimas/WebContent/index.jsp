<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="cbhZimas_Styles.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> <!-- Load icon for search button from library -->

</head>

<body>
  <div class="box"> <!-- Full page container -->
    <div class="header"> <!-- Header Div / holds navbar -->
      <nav class="navbar">
        <h1 class="title">
            City Smart ZIMAS
        </h1>
          <!--img src="BHLogo.gif" alt="BH_Logo" width="72" height="72" style="float:left" -->
        <ul class="nav-links">
          <li class="nav-item search">
            <a href="#"> 
              <div class="searchBarWrapper">
                <div class="searchBar">
                  <div class="search-area">
                    <form action="" method="post" onsubmit="return process()" target="iframe_search" name="search-form">
                      <input type="text" placeholder="Search By Address, APN, Permit #" name="search" id="search" class="">
                      <button type="submit" class="icon" onclick="togglePopup('popup-search')"><i class="fa fa-search"></i></button>
                      <!-- <div class="icon active"><i class="fa fa-search"></i></div> -->
                    </form> 
                  </div>
                </div>
              </div>  
            </a>
          </li>
          <li class="nav-item" id="about" onclick="togglePopup('popup-about')"><a href="#">About</a></li>
          <li class="nav-item" id="features" onclick="togglePopup('popup-features')"><a href="#">Features</a></li>
          <li class="nav-item" id="data" onclick="togglePopup('popup-data')"><a href="#">Data</a></li>
          <li class="nav-item" id="saved" ><a href="#">Saved</a></li>
        </ul>
      </nav>
    </div>

    <div class="midpageContainer"> <!-- Mid page container / Page Content -->

      <!-- Left Div / accordian menu -->
      <div class="leftDiv">

        <div class="menu">

          <a href="#" class="title">CBH ZIMAS Menu</a>
          
          <div class="set-container">
            <div class="set">
              <div class="section">
                <a href="#">ADDRESS </a>
              </div>
              <div class="subsec">
                  <!-- <a href="https://portal.assessor.lacounty.gov/parceldetail/4350007012" target="iframe_a" onclick="togglePopup('popup-siteAddress')" class="" > -->
                  <!-- <a href="https://cs.beverlyhills.org/cs/?entity=lso&type=lso&typeid=5034" target="iframe_a" onclick="togglePopup('popup-siteAddress')" class="" > -->
                  <a href="#" class="" id="site">
                    <label class="switch" >
                      <input type="checkbox" name="sitecheck">
                      <span class="slider"></span>
                    </label>
                    Site Address</a>
                  <a href="#" class="" id="apn">
                    <label class="switch">
                      <input type="checkbox" name="apncheck">
                      <span class="slider"></span>
                    </label>
                    APN
                  </a>
                  <a href="#" class="" id="test">
                    <label class="switch">
                      <input type="checkbox" name="testcheck">
                      <span class="slider"></span>
                    </label>
                    Test
                  </a>
                  
              </div>
            </div>

            <div class="set">
              <div class="section">
                <a href="#">PERMITTING AND ZONING COMPLIANCE </a>
              </div>
              <div class="subsec">
                <a href="#" class="">Building</a>
                <a href="#" class="">Permit Info</a>
              </div>
            </div>

            <div class="set">
              <div class="section">
                <a href="#">PLANNING AND ZONING</a>
              </div>
              <div class="subsec">
                <a href="#" class="">Zoning</a>
                <a href="#" class="">Land Use</a>
                <a href="#" class="">Historic Preservation</a>
              </div>
            </div>

            <div class="set">
              <div class="section">
                <a href="#">JURISDICTIONAL</a>
              </div>
              <div class="subsec">
                <a href="#" class="">Census Tract</a>
              </div>
            </div>

            <div class="set">
              <div class="section">
                <a href="#">ASSESSOR</a>
              </div>
              <div class="subsec">
                <a href="#" class="">APN</a>
              </div>
            </div>

            <div class="set">
              <div class="section">
                <a href="#">CASE NUMBERS</a>
              </div>
              <div class="subsec">
                <a href="#" class="">Case Number</a>
              </div>
            </div>

            <div class="set">
              <div class="section">
                <a href="#">CITYWIDE CODE AMENDMENT CASES</a>
              </div>
              <div class="subsec">
                <a href="#" class="">Amendment Case</a>
              </div>
            </div>
            
            <div class="set">
              <div class="section">
                <a href="#">ADDTIONAL</a>
              </div>
              <div class="subsec">
                <a href="#" class="">Additional</a>
              </div>
            </div>

            <div class="set">
              <div class="section">
                <a href="#">SEISMIC HAZARDS</a>
              </div>
              <div class="subsec">
                <a href="#" class="">Seismic Hazards</a>
              </div>
            </div>

            <div class="set">
              <div class="section">
                <a href="#">ECONOMIC DEVELOPMENT AREAS</a>
              </div>
              <div class="subsec">
                <a href="#" class="">Economic Development Areas</a>
              </div>
            </div>

            <div class="set">
              <div class="section">
                <a href="#">HOUSING</a>
              </div>
              <div class="subsec">
                <a href="#" class="">Rent</a>
              </div>
            </div>

            <div class="set">
              <div class="section">
                <a href="#">PUBLIC SAFETY</a>
              </div>
              <div class="subsec">
                <a href="#" class="">Crime Incident</a>
              </div>
            </div>
          </div>
        </div>
    
      </div>

      <!-- Middle Div / Property Info -->
      <div class="middleDiv">
        <iframe src="https://cs.beverlyhills.org/cs/?menu=menu2" title="CBH ZIMAS (cbhGIS)" class="propertyInfo" name="iframe_map" ></iframe>
      </div>

      <!-- Right Div / Popups -->
      <div class="rightDiv">
        <div class="popup" id="popup-about">
          <div class="content">
            <div class="close-btn" onclick="closePopup('popup-about')">&times;</div>
            <h1>About</h1>
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur velit dolor, asperiores nostrum unde sequi consequuntur laboriosam possimus quaerat fugit! Ex impedit porro magni nisi laboriosam sunt, atque earum odio!
            </p>
          </div>
        </div> 
        
        <div class="popup" id="popup-features">
          <div class="content">
            <div class="close-btn" onclick="closePopup('popup-features')">&times;</div>
            <h1>Features</h1>
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur velit dolor, asperiores nostrum unde sequi consequuntur laboriosam possimus quaerat fugit! Ex impedit porro magni nisi laboriosam sunt, atque earum odio!
            </p>
          </div>
        </div> 
        
        <div class="popup" id="popup-data">
          <div class="content">
            <div class="close-btn" onclick="closePopup('popup-data')">&times;</div>
            <section class="initial-info">
              <label>Tax Lot</label>
              <h1 class="content-header">
                <span>123 Happy Street</span>
              </h1>
              <p>More info about address</p>
            </section>
            
            <hr class="segmenting-bar">

            <section class="lot-details">
              <div class="data-grid">
                <label class="data-label"> Land Use </label>
                <span class="data"> Multi-Family Building </span>
              </div>
              <div class="data-grid">
                <label class="data-label"> Lot Area </label>
                <span class="data"> 7,500 sq ft</span>
              </div>
              <div class="data-grid">
                <label class="data-label"> Lot Frontage </label>
                <span class="data"> 75 ft </span>
              </div>
              <div class="data-grid">
                <label class="data-label"> Year Built </label>
                <span class="data"> 1999 </span>
              </div>
              <div class="data-grid">
                <label class="data-label"> Gross Floor Area </label>
                <span class="data"> 35,000 sq ft </span>
              </div>
            </section>

            <section class="neighborhood-info">
              <h3 class="neighborhood-info-header">Neighborhood Info</h3>
              <div class="data-grid">
                <label class="data-label"> School District </label>
                <span class="data"> 05 </span>
              </div>
              <div class="data-grid">
                <label class="data-label"> Police Precinct </label>
                <span class="data"> 28 </span>
              </div>
              <div class="data-grid">
                <label class="data-label"> Fire Company </label>
                <span class="data"> L014 </span>
              </div>
              <div class="data-grid">
                <label class="data-label"> Sanitation Station </label>
                <span class="data"> 1 </span>
              </div>
              <div class="data-grid">
                <label class="data-label"> Sanitation District </label>
                <span class="data"> 10 </span>
              </div>
            </section>
            
            <hr class="segmenting-bar">
          </div>
        </div> 

        <!-- <div class="popup" id="popup-siteAddress">
          <div class="content">
            <div class="close-btn" onclick="closePopup('popup-siteAddress')">&times;</div>  
            <div class="iframe-popup-container">
              <iframe  class="iframe-popup" name="iframe_a" title="About"></iframe> 
            </div>
          </div> 
        </div>  -->

        <div class="popup" id="popup-search">
          <div class="content">
            <div class="close-btn" onclick="closePopup('popup-search')">&times;</div>
            <div class="iframe-popup-container">
              <iframe  class="iframe-popup" name="iframe_search" title="About"></iframe> 
            </div>
          </div>
        </div> 

      </div>

    </div>
  </div>
  <!-- <div class="footer" >??? copyright www.beverlyhills.org</div> -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> <!-- jquery -->
  <script src="cbhZimas.js"></script>
</body>
</html>

