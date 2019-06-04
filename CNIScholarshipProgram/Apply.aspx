<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" 
    CodeBehind="Apply.aspx.vb" Inherits="CNIScholarshipProgram.Apply" %>

<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .form-control-error
        {
          display: block;
          width: 100%;
          padding: 0.375rem 0.75rem;
          font-size: 1rem;
          line-height: 1.5;
          color: #495057;
          background-color: #db7791;
          background-clip: padding-box;
          border: 1px solid #db7791;
          border-radius: 0.25rem;
          transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <header id="header">
    <div class="container">
      <div id="logo" class="pull-left">
       <img src="img/hanoLogoSmaller.png" alt="HANO" title="HANO" />
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li><a href="#personal">Personal</a></li>
          <li><a href="#educational">Educational</a></li>
          <li><a href="#awardsAndActivities">Awards/Activities</a></li>
          <li><a href="#collegeProspects">College</a></li>
          <li><a href="#relationToHANO">HANO Relation</a></li>
          <li><a href="#essay">Essay</a></li>
          <li><a href="#formsToDownload">Forms</a></li>
           <li><a href="#statementOfSupport">Statement</a></li>
          <li><a href="#statementOfAccuracy">Accuracy</a></li>
          <li><a href="#checklist">Checklist</a></li>
        </ul>
      </nav>
    </div>
  </header>
    <div class="container">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <section id="personal" style="padding-bottom: 0px;">
            <h3 class="page-title">
                <i class="fa fa-user" aria-hidden="true"></i>&nbsp; Personal</h3>
            <hr />
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-sm-6 form-group">
                            <label for="firstname">First Name *</label>
                            <asp:TextBox ID="firstName" runat="server" class="form-control" placeholder="First Name" maxlength="50"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="requiredFirstName" runat="server" controltovalidate="firstName" />
                        </div>
                        <div class="col-sm-6 form-group">
                            <label for="lastname">Last Name *</label>
                            <asp:TextBox ID="lastName" runat="server" class="form-control" placeholder="Last Name" maxlength="50"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="requiredLastName" runat="server" controltovalidate="lastName" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-sm-6 form-group">
                            <label for="email">Email * </label>
                            <asp:TextBox ID="email" runat="server" class="form-control" placeholder="Email" maxlength="100"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="requiredEmail" runat="server" controltovalidate="email" />
                        </div>
                        <div class="col-sm-6 form-group">
                            <label for="phoneNumber">Cell Phone *</label>
                            <asp:TextBox ID="phoneNumber" runat="server" class="form-control" placeholder="Cell Phone" maxlength="10"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="requiredPhoneNumber" runat="server" controltovalidate="phoneNumber" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-sm-4 form-group">
                            <label for="streetAddress">
                                Mailing Street Address *</label>
                            <asp:TextBox ID="mailingStreetAddress" runat="server" class="form-control" placeholder="Mailing Street Address"
                                maxlength="100"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="requiredMailingStreetAddress" runat="server" controltovalidate="mailingStreetAddress" />
                        </div>
                        <div class="col-sm-4 form-group">
                            <label for="city">
                                City *</label>
                            <asp:TextBox ID="mailingCity" runat="server"  class="form-control" placeholder="City"
                                maxlength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="requiredMailingCity" runat="server" controltovalidate="mailingCity" />
                        </div>
                        <div class="col-sm-2 form-group">
                            <label for="state">
                                State *</label>
                            <asp:DropDownList ID="mailingState" runat="server" class="form-control">
                                <asp:ListItem Value="">State</asp:ListItem>
                                <asp:ListItem Value="AL">Alabama</asp:ListItem>
                                <asp:ListItem Value="AK">Alaska</asp:ListItem>
                                <asp:ListItem Value="AZ">Arizona</asp:ListItem>
                                <asp:ListItem Value="AR">Arkansas</asp:ListItem>
                                <asp:ListItem Value="CA">California</asp:ListItem>
                                <asp:ListItem Value="CO">Colorado</asp:ListItem>
                                <asp:ListItem Value="CT">Connecticut</asp:ListItem>
                                <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
                                <asp:ListItem Value="DE">Delaware</asp:ListItem>
                                <asp:ListItem Value="FL">Florida</asp:ListItem>
                                <asp:ListItem Value="GA">Georgia</asp:ListItem>
                                <asp:ListItem Value="HI">Hawaii</asp:ListItem>
                                <asp:ListItem Value="ID">Idaho</asp:ListItem>
                                <asp:ListItem Value="IL">Illinois</asp:ListItem>
                                <asp:ListItem Value="IN">Indiana</asp:ListItem>
                                <asp:ListItem Value="IA">Iowa</asp:ListItem>
                                <asp:ListItem Value="KS">Kansas</asp:ListItem>
                                <asp:ListItem Value="KY">Kentucky</asp:ListItem>
                                <asp:ListItem Value="LA">Louisiana</asp:ListItem>
                                <asp:ListItem Value="ME">Maine</asp:ListItem>
                                <asp:ListItem Value="MD">Maryland</asp:ListItem>
                                <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
                                <asp:ListItem Value="MI">Michigan</asp:ListItem>
                                <asp:ListItem Value="MN">Minnesota</asp:ListItem>
                                <asp:ListItem Value="MS">Mississippi</asp:ListItem>
                                <asp:ListItem Value="MO">Missouri</asp:ListItem>
                                <asp:ListItem Value="MT">Montana</asp:ListItem>
                                <asp:ListItem Value="NE">Nebraska</asp:ListItem>
                                <asp:ListItem Value="NV">Nevada</asp:ListItem>
                                <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
                                <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
                                <asp:ListItem Value="NM">New Mexico</asp:ListItem>
                                <asp:ListItem Value="NY">New York</asp:ListItem>
                                <asp:ListItem Value="NC">North Carolina</asp:ListItem>
                                <asp:ListItem Value="ND">North Dakota</asp:ListItem>
                                <asp:ListItem Value="OH">Ohio</asp:ListItem>
                                <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
                                <asp:ListItem Value="OR">Oregon</asp:ListItem>
                                <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
                                <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
                                <asp:ListItem Value="SC">South Carolina</asp:ListItem>
                                <asp:ListItem Value="SD">South Dakota</asp:ListItem>
                                <asp:ListItem Value="TN">Tennessee</asp:ListItem>
                                <asp:ListItem Value="TX">Texas</asp:ListItem>
                                <asp:ListItem Value="UT">Utah</asp:ListItem>
                                <asp:ListItem Value="VT">Vermont</asp:ListItem>
                                <asp:ListItem Value="VA">Virginia</asp:ListItem>
                                <asp:ListItem Value="WA">Washington</asp:ListItem>
                                <asp:ListItem Value="WV">West Virginia</asp:ListItem>
                                <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
                                <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                            </asp:DropDownList>
                             <asp:RequiredFieldValidator ID="requiredMailingState" runat="server" controltovalidate="mailingState" />
                        </div>
                        <div class="col-sm-2 form-group">
                            <label for="name">
                                Zip Code *</label>
                            <asp:TextBox ID="mailingZipCode" runat="server" class="form-control" maxlength="5"
                                placeholder="Zip Code"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="requiredMailingZipCode" runat="server" controltovalidate="mailingZipCode" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-sm-4 form-group">
                            <label for="month">
                              Birth Month *</label>
                            <asp:DropDownList ID="birthMonth" runat="server" class="form-control">
                                <asp:ListItem Value="">Month</asp:ListItem>
                                <asp:ListItem Value="1">January</asp:ListItem>
                                <asp:ListItem Value="2">February</asp:ListItem>
                                <asp:ListItem Value="3">March</asp:ListItem>
                                <asp:ListItem Value="4">April</asp:ListItem>
                                <asp:ListItem Value="5">May</asp:ListItem>
                                <asp:ListItem Value="6">June</asp:ListItem>
                                <asp:ListItem Value="7">July</asp:ListItem>
                                <asp:ListItem Value="8">August</asp:ListItem>
                                <asp:ListItem Value="9">September</asp:ListItem>
                                <asp:ListItem Value="10">October</asp:ListItem>
                                <asp:ListItem Value="11">November</asp:ListItem>
                                <asp:ListItem Value="12">December</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="requiredBirthMonth" runat="server" controltovalidate="birthMonth" />
                        </div>
                        <div class="col-sm-4 form-group">
                            <label for="day">
                              Birth Day *</label>
                            <asp:DropDownList ID="birthDay" runat="server" class="form-control">
                                <asp:ListItem Value="">Day</asp:ListItem>
                                <asp:ListItem Value="1">1</asp:ListItem>
                                <asp:ListItem Value="2">2</asp:ListItem>
                                <asp:ListItem Value="3">3</asp:ListItem>
                                <asp:ListItem Value="4">4</asp:ListItem>
                                <asp:ListItem Value="5">5</asp:ListItem>
                                <asp:ListItem Value="6">6</asp:ListItem>
                                <asp:ListItem Value="7">7</asp:ListItem>
                                <asp:ListItem Value="8">8</asp:ListItem>
                                <asp:ListItem Value="9">9</asp:ListItem>
                                <asp:ListItem Value="10">10</asp:ListItem>
                                <asp:ListItem Value="11">11</asp:ListItem>
                                <asp:ListItem Value="12">12</asp:ListItem>
                                <asp:ListItem Value="13">13</asp:ListItem>
                                <asp:ListItem Value="14">14</asp:ListItem>
                                <asp:ListItem Value="15">15</asp:ListItem>
                                <asp:ListItem Value="16">16</asp:ListItem>
                                <asp:ListItem Value="17">17</asp:ListItem>
                                <asp:ListItem Value="18">18</asp:ListItem>
                                <asp:ListItem Value="19">19</asp:ListItem>
                                <asp:ListItem Value="20">20</asp:ListItem>
                                <asp:ListItem Value="21">21</asp:ListItem>
                                <asp:ListItem Value="22">22</asp:ListItem>
                                <asp:ListItem Value="23">23</asp:ListItem>
                                <asp:ListItem Value="24">24</asp:ListItem>
                                <asp:ListItem Value="25">25</asp:ListItem>
                                <asp:ListItem Value="26">26</asp:ListItem>
                                <asp:ListItem Value="27">27</asp:ListItem>
                                <asp:ListItem Value="28">28</asp:ListItem>
                                <asp:ListItem Value="29">29</asp:ListItem>
                                <asp:ListItem Value="30">30</asp:ListItem>
                                <asp:ListItem Value="31">31</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="requiredBirthDay" runat="server" controltovalidate="birthDay" />
                        </div>
                        <div class="col-sm-2 form-group">
                            <label for="year">
                               Birth Year *</label>
                            <asp:TextBox ID="birthYear" runat="server" class="form-control" maxlength="4" placeholder="Year"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="requiredBirthYear" runat="server" controltovalidate="birthYear" />
                        </div>
                        <div class="col-sm-2 form-group">
                            <label for="sex">Sex *</label>
                             <asp:DropDownList ID="sex" runat="server" class="form-control">
                                <asp:ListItem Value="">Sex</asp:ListItem>
                                <asp:ListItem Value="Female">Female</asp:ListItem>
                                <asp:ListItem Value="Male">Male</asp:ListItem>
                             </asp:DropDownList>
                             <asp:RequiredFieldValidator ID="requiredSex" runat="server" controltovalidate="sex" />
                        </div>
                    </div>
                </div>
            </div>
            <hr />
        </section>
        <section id="educational" style="padding-bottom: 0px;">
            <h3 class="page-title">
                <i class="fa fa-graduation-cap" aria-hidden="true"></i>&nbsp; Educational</h3>
            <hr />
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-sm-6 form-group">
                            <label for="gpa">
                                Cumulative Grade Point Average (GPA) *
                            </label>
                            <asp:TextBox ID="gpa" runat="server" class="form-control" placeholder="4.0 Scale"
                                maxlength="4"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="requiredGPA" runat="server" controltovalidate="gpa" />
                            <small class="text-muted">Attach proof of GPA. Your most recent school transcript is
                                required</small>
                        </div>
                        <div class="col-sm-6 form-group">
                            <label for="firstToAttendCollege">
                                Are you the first person in your family to attend college? *</label><br />
                            <asp:DropDownList ID="firstToAttendCollege" runat="server" class="form-control">
                                <asp:ListItem Value="">First to Attend College</asp:ListItem>
                                <asp:ListItem Value="1">Yes</asp:ListItem>
                                <asp:ListItem Value="0">No</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="requiredFirstToAttendCollege" runat="server" controltovalidate="FirstToAttendCollege" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-sm-6 form-group">
                            <label for="schoolName">
                                School Name Currently Attending *
                            </label>
                            <asp:TextBox ID="schoolAttending" runat="server" class="form-control" placeholder="School Name Currently"
                                maxlength="100"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="requiredSchoolAttending" runat="server" controltovalidate="schoolAttending" />
                        </div>
                        <div class="col-sm-6 form-group">
                            <label for="schoolLocation">
                                School City & State Currently Attending *</label>
                            <asp:TextBox ID="schoolCityStateAttending" runat="server" class="form-control"
                                maxlength="100" placeholder="School City/State"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="requiredSchoolCityStateAttending" runat="server" controltovalidate="schoolCityStateAttending" />
                        </div>
                    </div>
                </div>
            </div>
            <hr />
        </section>
        <section id="awardsAndActivities" style="padding-bottom: 0px;">
            <h3 class="page-title">
                <i class="fa fa-trophy" aria-hidden="true"></i>&nbsp; Awards & Activities</h3>
            <hr />
            <small class="text-muted">Separate items by Commas</small>
            <p> </p>
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-sm-4 form-group">
                            <label for="academicHonors">
                                Academic Honors
                            </label>
                           <asp:TextBox ID="academicHonors" runat="server" class="form-control" placeholder="List any Academic Honors" maxlength="500"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 form-group">
                            <label for="nonAcademicAwards">
                                Non-Academic Awards
                            </label>
                            <asp:TextBox ID="nonAcademicAwards" runat="server" class="form-control" placeholder="List any Non Academic Awards" maxlength="500"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 form-group">
                            <label for="membershipActivities">
                                Membership Activities
                            </label>
                            <asp:TextBox ID="membershipActivities" runat="server" class="form-control"
                                    placeholder="List any Membership Activities" maxlength="500"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-sm-4 form-group">
                            <label for="hobbiesOutsideInterests">
                                Hobbies & Outside Interests
                            </label>
                             <asp:TextBox ID="hobbiesOutsideInterests" runat="server" class="form-control"
                                placeholder="Hobbies/Outside Interests" maxlength="500" ></asp:TextBox>
                        </div>
                        <div class="col-sm-4 form-group">
                            <label for="extracurricularActivites">
                                Extracurricular Activites
                            </label>
                            <asp:TextBox ID="extracurricularActivites" runat="server" class="form-control"
                                placeholder="Extracurricular Activites" maxlength="500" ></asp:TextBox>
                        </div>
                        <div class="col-sm-4 form-group">
                            <label for="schoolRelatedVolunteerActivites">
                                School Related Volunteer Activites
                            </label>
                            <asp:TextBox ID="schoolRelatedVolunteerActivites" runat="server" class="form-control" 
                                placeholder="School Related Volunteer Activites" 
                                maxlength="500"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <hr />
        </section>
        <section id="collegeProspects" style="padding-bottom: 0px;">  
            <h3 class="page-title">
                <i class="fa fa-university" aria-hidden="true"></i>&nbsp; College Prospects</h3>
            <hr />
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-sm-12 form-group">
                            <label for="collegeWillAttend">
                                If you have decided on what college you will attend, please list school name
                            </label>
                            <asp:TextBox ID="collegeWillAttend" runat="server" class="form-control"
                                placeholder="College you will Attend" maxlength="500"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-sm-12">
                            <label for="collegeChoices">
                                If not, List your Top 3 College Choices
                            </label>
                        </div>
                        <div class="col-sm-4 form-group">
                            <asp:TextBox ID="collegeChoiceOne" runat="server" placeholder="First College Choice" maxlength="500" 
                                class="form-control"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 form-group">
                           <asp:TextBox ID="collegeChoiceTwo" runat="server" placeholder="Second College Choice" maxlength="500" 
                                class="form-control"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 form-group">
                           <asp:TextBox ID="collegeChoiceThree" runat="server" placeholder="Third College Choice" maxlength="500" 
                                class="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
             <hr />
        </section>
        <section id="relationToHANO" style="padding-bottom: 0px;">  
            <h3 class="page-title">
                <i class="fa fa-american-sign-language-interpreting" aria-hidden="true"></i>&nbsp;
                Relation to HANO
            </h3>
            <hr />
            <small class="text-muted">If you answer 'Yes' to the first question, please complete
                this section, if not proceed to the next section</small>
            <p></p>
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-sm-12 form-group">
                            <label for="relationToHANO">
                                Is your parent or legal guardian an employee of HANO? *</label><br />
                            <asp:DropDownList ID="employeeOfHano" runat="server" class="form-control">
                                <asp:ListItem Value="">Parent or Legal Guardian an Employee of HANO</asp:ListItem>
                                <asp:ListItem Value="1">Yes</asp:ListItem>
                                <asp:ListItem Value="0">No</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="requiredEmployeeOfHano" runat="server" controltovalidate="employeeOfHano" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-sm-6 form-group">
                            <label for="parentOrLegalGuardianFirstName">
                                Parent or Legal Guardian First Name</label>
                            <asp:TextBox ID="parentOrLegalGuardianFirstName" runat="server" placeholder="First Name" 
                                maxlength="50" class="form-control"></asp:TextBox>
                        </div>
                        <div class="col-sm-6 form-group">
                            <label for="parentOrLegalGuardianLastName">
                                Parent or Legal Guardian Last Name</label>
                            <asp:TextBox ID="parentOrLegalGuardianLastName" runat="server" placeholder="Last Name" 
                                maxlength="50" class="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <p>
            </p>
            <small class="text-muted">Include address if different than your own listed under the
                Personal section</small>
            <p>
            </p>
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-sm-4 form-group">
                            <label for="streetAddress">
                                Parent or Legal Guardian Mailing Address</label>
                            <asp:TextBox ID="parentOrLegalGuardianStreetAddress" runat="server" 
                                placeholder="Mailing Address" maxlength="50" class="form-control"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 form-group">
                            <label for="city">
                                City</label>
                            <asp:TextBox ID="parentOrLegalGuardianCity" runat="server" class="form-control" 
                                maxlength="50" placeholder="City"></asp:TextBox>
                        </div>
                        <div class="col-sm-2 form-group">
                            <label for="state"> State</label>
                            <asp:DropDownList ID="parentOrLegalGuardianState" runat="server" class="form-control">
                                <asp:ListItem Value="OO">State</asp:ListItem>
                                <asp:ListItem Value="AL">Alabama</asp:ListItem>
                                <asp:ListItem Value="AK">Alaska</asp:ListItem>
                                <asp:ListItem Value="AZ">Arizona</asp:ListItem>
                                <asp:ListItem Value="AR">Arkansas</asp:ListItem>
                                <asp:ListItem Value="CA">California</asp:ListItem>
                                <asp:ListItem Value="CO">Colorado</asp:ListItem>
                                <asp:ListItem Value="CT">Connecticut</asp:ListItem>
                                <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
                                <asp:ListItem Value="DE">Delaware</asp:ListItem>
                                <asp:ListItem Value="FL">Florida</asp:ListItem>
                                <asp:ListItem Value="GA">Georgia</asp:ListItem>
                                <asp:ListItem Value="HI">Hawaii</asp:ListItem>
                                <asp:ListItem Value="ID">Idaho</asp:ListItem>
                                <asp:ListItem Value="IL">Illinois</asp:ListItem>
                                <asp:ListItem Value="IN">Indiana</asp:ListItem>
                                <asp:ListItem Value="IA">Iowa</asp:ListItem>
                                <asp:ListItem Value="KS">Kansas</asp:ListItem>
                                <asp:ListItem Value="KY">Kentucky</asp:ListItem>
                                <asp:ListItem Value="LA">Louisiana</asp:ListItem>
                                <asp:ListItem Value="ME">Maine</asp:ListItem>
                                <asp:ListItem Value="MD">Maryland</asp:ListItem>
                                <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
                                <asp:ListItem Value="MI">Michigan</asp:ListItem>
                                <asp:ListItem Value="MN">Minnesota</asp:ListItem>
                                <asp:ListItem Value="MS">Mississippi</asp:ListItem>
                                <asp:ListItem Value="MO">Missouri</asp:ListItem>
                                <asp:ListItem Value="MT">Montana</asp:ListItem>
                                <asp:ListItem Value="NE">Nebraska</asp:ListItem>
                                <asp:ListItem Value="NV">Nevada</asp:ListItem>
                                <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
                                <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
                                <asp:ListItem Value="NM">New Mexico</asp:ListItem>
                                <asp:ListItem Value="NY">New York</asp:ListItem>
                                <asp:ListItem Value="NC">North Carolina</asp:ListItem>
                                <asp:ListItem Value="ND">North Dakota</asp:ListItem>
                                <asp:ListItem Value="OH">Ohio</asp:ListItem>
                                <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
                                <asp:ListItem Value="OR">Oregon</asp:ListItem>
                                <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
                                <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
                                <asp:ListItem Value="SC">South Carolina</asp:ListItem>
                                <asp:ListItem Value="SD">South Dakota</asp:ListItem>
                                <asp:ListItem Value="TN">Tennessee</asp:ListItem>
                                <asp:ListItem Value="TX">Texas</asp:ListItem>
                                <asp:ListItem Value="UT">Utah</asp:ListItem>
                                <asp:ListItem Value="VT">Vermont</asp:ListItem>
                                <asp:ListItem Value="VA">Virginia</asp:ListItem>
                                <asp:ListItem Value="WA">Washington</asp:ListItem>
                                <asp:ListItem Value="WV">West Virginia</asp:ListItem>
                                <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
                                <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-sm-2 form-group">
                            <label for="name">
                                Zip Code</label>
                            <asp:TextBox ID="parentOrLegalGuardianZipCode" runat="server" class="form-control" 
                                maxlength="5" placeholder="Zip"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-sm-6 form-group">
                            <label for="parentOrLegalGuardianHomePhone">
                                Parent or Legal Guardian Home Phone</label>
                            <asp:TextBox ID="parentOrLegalGuardianHomePhone" runat="server" class="form-control" 
                                placeholder="Home Phone" maxlength="10"></asp:TextBox>
                        </div>
                        <div class="col-sm-6 form-group">
                            <label for="parentOrLegalGuardianWorkPhone">
                                Parent or Legal Guardian Work Phone</label>
                           <asp:TextBox ID="parentOrLegalGuardianWorkPhone" runat="server" class="form-control" 
                                placeholder="Work Phone" maxlength="10"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <hr />
       </section>
        <section id="essay" style="padding-bottom: 0px;"> 
         <h3 class="page-title">
                <i class="fa fa-file" aria-hidden="true"></i>&nbsp; Essay
            </h3>
            <hr />
            <label for="essay">
                In your essay discuss any challenges or obstacles you have dealt with and overcome
                in life and how this will help you succeed in college and beyond. (PDF or Word Document) *</label>
                
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-sm-12 form-group">
                            <asp:FileUpload ID="essaySubmisison" runat="server" class="form-control" />
                            <asp:RequiredFieldValidator ID="requiredEssaySubmisison" runat="server" controltovalidate="essaySubmisison" />
                        </div>
                    </div>
                </div>
            </div>
            <hr />
       </section>
        <section id="formsToDownload" style="padding-bottom: 0px;"> 
         <h3 class="page-title">
                <i class="fa fa-download" aria-hidden="true"></i>&nbsp; Forms to Download and attach
                with Application
            </h3>
            <hr />
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-sm-6 form-group">
                            <a href="assets/Statement Of Support By Guidance Counselor_Advisor.pdf" class="reg"
                                target="_blank"><i class="fa fa-file-text-o" aria-hidden="true"></i>&nbsp; Statement
                                Of Support By Guidance Counselor/Advisor</a>
                        </div>
                    </div>
                </div>
            </div>
            <hr />
        </section>
        <section id="statementOfSupport" style="padding-bottom: 0px;">
          <h3 class="page-title">
                <i class="fa fa-file-pdf-o" aria-hidden="true"></i>&nbsp; Upload Statement Of Support
                By Guidance Counselor/Advisor & School Transcript
          </h3>
            <hr />
             <label for="statement">
                Above is the Statement Of Support By Guidance Counselor/Advisor form that must be signed and uploaded here (PDF ONLY) *</label>
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-sm-12 form-group">
                            <asp:FileUpload ID="transcriptSupportStatement" runat="server" class="form-control" />
                             <asp:RequiredFieldValidator ID="requiredTranscriptSupportStatement" runat="server" controltovalidate="transcriptSupportStatement" />
                        </div>
                    </div>
                </div>
            </div>
            <hr />
         </section>
        <section id="statementOfAccuracy" style="padding-bottom: 0px;"> 
            <h3 class="page-title">
                <i class="fa fa-check" aria-hidden="true"></i>&nbsp; Statement Of Accuracy For Students
            </h3>
            <hr />
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-sm-12 form-group text-justify">
                            I hereby affirm that all the above stated information provided by me is true and
                            correct to the best of my knowledge. I also consent that if chosen as a scholarship
                            winner my picture may be taken and used to promote the Housing Authority of New
                            Orleans scholarship program. (Winner may waive photo due to unusual or compelling
                            circumstances.) I hereby understand that if chosen as a scholarship winner, according
                            to the Housing Authority of New Orleans policy, it is my responsibility to remit
                            to HANO the appropriate information for my scholarship to be paid directly to my
                            educational institution. I hereby understand I will not submit this application
                            without all required attachments and supporting information. Incomplete applications
                            or applications that do not meet eligibility criteria will not be considered for
                            this scholarship.
                        </div>
                        <div class="col-sm-6 form-group">
                            <label for="signatureOfScholarshipApplicant">
                                Signature of Scholarship Applicant *</label>
                            <asp:TextBox ID="signatureOfScholarshipApplicant" runat="server" class="form-control"
                                placeholder="Signature of Scholarship Applicant" maxlength="100"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="requiredSignatureOfScholarshipApplicant" runat="server" controltovalidate="signatureOfScholarshipApplicant" />
                        </div>
                        <div class="col-sm-6 form-group">
                            <label for="signatureOfScholarshipApplicantDate">
                                Signature of Scholarship Applicant Date *</label>
                            <asp:TextBox ID="signatureOfScholarshipApplicantDate" runat="server" class="input-medium form-control"
                                placeholder="Signature of Scholarship Applicant Date"></asp:TextBox>
                               <%-- <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="signatureOfScholarshipApplicantDate"
                                Format="MM/dd/yyyy"></ajaxToolkit:CalendarExtender>
                            <asp:RequiredFieldValidator ID="requiredSignatureOfScholarshipApplicantDate" runat="server" controltovalidate="signatureOfScholarshipApplicantDate" />--%>
                        </div>
                    </div>
                </div>
            </div>
            <hr />
        </section>
        <section id="checklist" style="padding-bottom: 0px;">
            <h3 class="page-title">
                <i class="fa fa-list" aria-hidden="true"></i>&nbsp; Application Checklist before
                Submission
            </h3>
            <hr />
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <ul>
                            <li>Application</li>
                            <li>Essay</li>
                            <li>Statement Of Support By Guidance Counselor/Advisor</li>
                            <li>School Transcript</li>
                        </ul>
                    </div>
                </div>
            </div>
            <hr />
         </section>
        <section id="submitApplication" style="padding-bottom: 0px;">
         <h3 class="page-title">
                <i class="fa fa-upload" aria-hidden="true"></i>&nbsp; Submit Application
            </h3>
            <hr />
            <div class="row">
                <div class="col-md-12">
                    <button id="button" type="button" class="btn btn-info btn-block btn-lg" runat="server"
                        onserverclick="btnSubmit">
                        <i class="fa fa-upload"></i>&nbsp; Submit Application
                    </button>
                </div>
            </div>
         </section>
    </div>
    <br />
 <script type="text/javascript">
     function WebForm_OnSubmit() {
         if (typeof (ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) {
             for (var i in Page_Validators) {
                 try {
                     var control = document.getElementById(Page_Validators[i].controltovalidate);
                     if (!Page_Validators[i].isvalid) {
                         control.className = "form-control-error";
                     } else {
                         control.className = "form-control";
                     }
                 } catch (e) { }
             }
             return false;
         }
         return true;
     }
 </script>
</asp:Content>
