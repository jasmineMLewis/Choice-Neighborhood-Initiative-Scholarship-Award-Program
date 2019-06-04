<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.vb" Inherits="CNIScholarshipProgram._Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <header id="header">
    <div class="container">
      <div id="logo" class="pull-left">
        <img src="img/hanoLogoSmaller.png" alt="HANO" title="HANO" />
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li><a href="#about">About</a></li>
          <li><a href="#portfolio">Guidelines</a></li>
          <li><a href="#features">Availability</a></li>
          <li><a href="Apply.aspx">Apply</a></li>
          <li><a class="nav-link" href="#" role="button" id="loginModal" name="loginModal" data-toggle="modal" data-target="#myModal"> HANO Login</a></li>
          <li><a href="#contact">Contact Us</a></li>
        </ul>
      </nav>
    </div>
  </header>
    <section class="about" id="about">
    <div class="container text-center">
      <h2>
          Choice Neighborhood Initiative Scholarship Awards Program
      </h2>

      <p>
        The Housing Authority of New Orleans announces the expanded Choice Neighborhood Initiatives Scholarship Awards Program. 
         Under the Program, $2,000 scholarships were previously awarded only to current and former (those displaced by Hurricane Katrina) 
         Iberville/Bienville Basin residents and those living in the Choice Neighborhood Initiative (CNI) footprint (N. Broad St., So. 
         Rampart, Tulane and St. Bernard). The Scholarship is now open to ALL HANO assisted residents (Public Housing and HCVP/Section 8 
         Participants). Awardees must be a current high school senior in metro New Orleans, LA with plans to attend an accredited two or 
         four year college/university or enroll in a trade or technical school. Residents that are interested in returning to or enrolling 
         in college for the first time, or attending a trade school or technical college are also eligible to apply. Children of HANO 
         employees living in Public Housing or participants in the HCVP are eligible to apply and should contact the Department of Client 
         Services directly for more information. Awards will be provided directly to the school once enrollment is verified.        
      </p>

      <br />
      <p><em>Eligibility Requirements for returning, enrolling or attending any of the below schools:</em> </p>
      
      <div class="row stats-row">
        <div class="stats-col text-center col-md-3 col-sm-6">
          <div class="circle">
            College
          </div>
        </div>

        <div class="stats-col text-center col-md-3 col-sm-6">
          <div class="circle">
            University
          </div>
        </div>

        <div class="stats-col text-center col-md-3 col-sm-6">
          <div class="circle">
            Trade School
          </div>
        </div>

        <div class="stats-col text-center col-md-3 col-sm-6">
          <div class="circle">
            Technical College
          </div>
        </div>
      </div>
    </div>
  </section>
    <section class="portfolio" id="portfolio">
      <div class="block bg-primary block-pd-lg block-bg-overlay text-center" data-bg-img="img/parallax-bg.jpg" 
        data-settings='{"stellar-background-ratio": 0.6}' data-toggle="parallax-bg">
        <h2 style="color:White;">
           Program Guidelines & Priorities
        </h2>

          <p>
            Seeking graduating seniors or residents/working adults interested in returning to or enrolling for the first time in an 
                accredited two or four year college or technical school. Students currently enrolled in an eligible learning institution
                 are also eligible to apply. Students and residents with a record of volunteerism in the community in non-school
                  sponsored activities and participation in extracurricular school activities will be strongly considered.
          </p>

          <p>
            Applicants must have a minimum GPA of 2.5, and plan to attend a two or four year college or technical school.
          </p>

          <p>
            Scholarship funds will be paid directly to the college and not to the student. It will be the student’s 
                responsibility to submit to the Housing Authority of New Orleans at that time an invoice for second semester
                tuition and fees, student ID number and college information.
          </p>

          <p>
            Applicants must have the endorsement of their School Guidance Counselor (if applicable) on their application 
                attesting they are a qualified for this scholarship program.  Application deadline is at least 60 days prior to 
                tuition due date and must be received by the Department of Client Services. Applications received after this date
                will be considered for the following enrollment period. 
          </p>
      </div>
  </section>
    <section class="features" id="features">
    <div class="container">
      <h2 class="text-center">
          Available Scholarships
      </h2>

      <div class="row">
        <div class="feature-col col-lg-4 col-xs-12">
          <div class="card card-block text-center">
            <div>
              <div class="feature-icon">
                <span class="fa fa-graduation-cap"></span>
              </div>
            </div>

            <div>
              <h3>
                  Seniors attending any High School
              </h3>
              <p>
                $2,000 scholarships are available for seniors attending any high school in New Orleans with plans to enroll 
                in an accredited two or four year college or trade/technical school. Students must show acceptance letter. 
                Awards will be provided once enrollment is verified.        
              </p>
            </div>
          </div>
        </div>

        <div class="feature-col col-lg-4 col-xs-12">
          <div class="card card-block text-center">
            <div>
              <div class="feature-icon">
                <span class="fa fa-briefcase"></span>
              </div>
            </div>

            <div>
              <h3>
                 Residents or Working Adults interested in College
              </h3>
              <p>
               $2,000 scholarships are available to residents or working adults interested in re-enrolling in an accredited 
               two or four year college or university in metro New Orleans.  
              </p>
            </div>
          </div>
        </div>

        <div class="feature-col col-lg-4 col-xs-12">
          <div class="card card-block text-center">
            <div>
              <div class="feature-icon">
                <span class="fa fa-certificate"></span>
              </div>
            </div>
            <div>
              <h3>
                 Residents in Trade or Technical schools
              </h3>
              <p>
               Up to $2,000 scholarships are available for residents interested in enrolling in trade or technical schools in 
               the metro New Orleans area.  
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
    <section id="contact">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h2 class="section-title">Contact Us</h2>
        </div>
      </div>

      <div class="row">
        <div class="col-sm-4 info">
          <i class="fa fa-map-marker"></i>
                  <p>Jasmine Monquie Lewis<br />
                   P. O. Box 15412<br />
                   New Orleans, LA 70115
                  </p>
        </div>
        <div class="col-sm info">
         <i class="fa fa-user"></i>
              <p>Jasmine Monquie Lewis</p>
        </div>
        <div class="col-sm info">
          <i class="fa fa-envelope"></i>
              <p>jasminemonquie.L@gmail.com</p>
        </div>
        <div class="col-sm info">
           <i class="fa fa-phone"></i>
              <p>504.782.8208</p>
        </div>
      </div>
    </div>
  </section>
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title">
                        <i class="fa fa-sign-in"></i>&nbsp; Login</h3>
                    <button type="button" class="close" data-dismiss="modal">
                        &times;</button>
                </div>
                <div class="modal-body">
                    <div class="col-lg-12">
                        <div class="input-group input-group-md">
                            <input type="text" class="form-control" id="email" name="email" placeholder="Email"
                                required="required" />
                        </div>
                        <p>
                        </p>
                        <div class="input-group input-group-md">
                            <input type="password" class="form-control" id="password" name="password" placeholder="Password"
                                required="required" />
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button id="Button1" type="button" class="btn btn-info btn-md" runat="server" onserverclick="btnLogin">
                        <i class="fa fa-sign-in"></i>&nbsp;Login
                    </button>
                    <button type="button" class="btn btn-default btn-md" data-dismiss="modal" name="btnCancel"
                        id="btnCancel">
                        <i class="fa fa-ban"></i>&nbsp; Cancel
                    </button>
                </div>
            </div>
        </div>
    </div>
    <a class="scrolltop" href="#"><span class="fa fa-angle-up"></span></a>
</asp:Content>
