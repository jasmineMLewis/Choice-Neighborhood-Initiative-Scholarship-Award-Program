<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/User.Master" CodeBehind="ViewApplication.aspx.vb" Inherits="CNIScholarshipProgram.ViewApplication" %>

<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Web.Configuration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%
        Dim sessionUserID As String
        If Not Web.HttpContext.Current.Session("SessionUserID") Is Nothing Then
            sessionUserID = Web.HttpContext.Current.Session("SessionUserID").ToString()
        End If

        If sessionUserID = Nothing Then
            sessionUserID = Request.QueryString("SessionUserID")
            Web.HttpContext.Current.Session("SessionUserID") = sessionUserID
        End If

        Dim conn As SqlConnection = New SqlConnection(WebConfigurationManager.ConnectionStrings("ScholarshipProgramConnectionString").ConnectionString)
        Dim _applicationID As Integer = Request.QueryString("ElectronicApplicationID")
        Dim _firstName As String
        Dim _lastName As String
        Dim _email As String
        Dim _phoneNumber As String
        Dim _mailingStreetAddress As String
        Dim _mailingCity As String
        Dim _mailingState As String
        Dim _mailingZipCode As String
        Dim _birthMonth As Integer
        Dim _birthDay As Integer
        Dim _birthYear As Integer
        Dim _sex As String
        Dim _gpa As String
        Dim _isFirstToAttendCollege As Boolean
        Dim _schoolAttending As String
        Dim _schoolCityStateAttending As String
        Dim _academicHonors As String
        Dim _nonAcademicAwards As String
        Dim _membershipActivities As String
        Dim _hobbiesOutsideInterests As String
        Dim _extracurricularActivites As String
        Dim _schoolRelatedVolunteerActivites As String
        Dim _collegeToAttend As String
        Dim _collegeChoiceOne As String
        Dim _collegeChoiceTwo As String
        Dim _collegeChoiceThree As String
        Dim _isRelativeEmployeeOfHano As Boolean
        Dim _parentOrLegalGuardianFirstName As String
        Dim _parentOrLegalGuardianLastName As String
        Dim _parentOrLegalGuardianStreetAddress As String
        Dim _parentOrLegalGuardianCity As String
        Dim _parentOrLegalGuardianState As String
        Dim _parentOrLegalGuardianZipCode As String
        Dim _parentOrLegalGuardianHomePhone As String
        Dim _parentOrLegalGuardianWorkPhone As String
        Dim _signatureOfScholarshipApplicant As String
        Dim _signatureOfScholarshipApplicantDate As String

        Dim queryStr As String = String.Empty
        queryStr &= "SELECT FirstName, LastName, Email, CellPhone, MailingStreetAddress,  "
        queryStr &= "       MailingCity, MailingState, MailingZipCode, BirthMonth, BirthDay, "
        queryStr &= "       BirthYear, Sex, GPA, IsFirstToAttendCollege, SchoolCurrentlyAttending, "
        queryStr &= "       SchoolCityStateCurrentlyAttending, AcademicHonors, NonAcademicAwards, "
        queryStr &= "       MembershipActivities, HobbiesOutsideInterests, ExtracurricularActivites, "
        queryStr &= "       SchoolRelatedVolunteerActivites, CollegeToAttend, CollegeChoiceOne, "
        queryStr &= "       CollegeChoiceTwo, CollegeChoiceThree, IsRelativeEmployeeOfHano, "
        queryStr &= "       ParentOrLegalGuardianFirstName, ParentOrLegalGuardianLastName, "
        queryStr &= "       ParentOrLegalGuardianStreetAddress, ParentOrLegalGuardianCity, "
        queryStr &= "       ParentOrLegalGuardianState, ParentOrLegalGuardianZipCode, ParentOrLegalGuardianHomePhone, "
        queryStr &= "       ParentOrLegalGuardianWorkPhone, SignatureOfScholarshipApplicant, "
        queryStr &= "       SignatureOfScholarshipApplicantDate "
        queryStr &= "FROM ElectronicApplications "
        queryStr &= "WHERE ElectronicApplicationID = '" & _applicationID & "'"

        conn.Open()
        Dim query As New SqlCommand(queryStr, conn)
        Dim reader As SqlDataReader = query.ExecuteReader()

        While reader.Read
            _firstName = CStr(reader("FirstName"))
            _lastName = CStr(reader("LastName"))
            _email = CStr(reader("Email"))
            _phoneNumber = CStr(reader("CellPhone"))
            _mailingStreetAddress = CStr(reader("MailingStreetAddress"))
            _mailingCity = CStr(reader("MailingCity"))
            _mailingState = CStr(reader("MailingState"))
            _mailingZipCode = CStr(reader("MailingZipCode"))
            _birthMonth = CStr(reader("BirthMonth"))
            _birthDay = CStr(reader("BirthDay"))
            _birthYear = CStr(reader("BirthYear"))
            _sex = CStr(reader("Sex"))
            _gpa = CStr(reader("GPA"))
            _isFirstToAttendCollege = CStr(reader("IsFirstToAttendCollege"))
            _schoolAttending = CStr(reader("SchoolCurrentlyAttending"))
            _schoolCityStateAttending = CStr(reader("SchoolCityStateCurrentlyAttending"))
            _academicHonors = CStr(reader("AcademicHonors"))
            _nonAcademicAwards = CStr(reader("NonAcademicAwards"))
            _membershipActivities = CStr(reader("MembershipActivities"))
            _hobbiesOutsideInterests = CStr(reader("HobbiesOutsideInterests"))
            _extracurricularActivites = CStr(reader("ExtracurricularActivites"))
            _schoolRelatedVolunteerActivites = CStr(reader("SchoolRelatedVolunteerActivites"))
            _collegeToAttend = CStr(reader("CollegeToAttend"))
            _collegeChoiceOne = CStr(reader("CollegeChoiceOne"))
            _collegeChoiceTwo = CStr(reader("CollegeChoiceTwo"))
            _collegeChoiceThree = CStr(reader("CollegeChoiceThree"))
            _isRelativeEmployeeOfHano = CStr(reader("IsRelativeEmployeeOfHano"))
            _parentOrLegalGuardianFirstName = CStr(reader("ParentOrLegalGuardianFirstName"))
            _parentOrLegalGuardianLastName = CStr(reader("ParentOrLegalGuardianLastName"))
            _parentOrLegalGuardianStreetAddress = CStr(reader("ParentOrLegalGuardianStreetAddress"))
            _parentOrLegalGuardianCity = CStr(reader("ParentOrLegalGuardianCity"))
            _parentOrLegalGuardianState = CStr(reader("ParentOrLegalGuardianState"))
            _parentOrLegalGuardianZipCode = CStr(reader("ParentOrLegalGuardianZipCode"))
            _parentOrLegalGuardianHomePhone = CStr(reader("ParentOrLegalGuardianHomePhone"))
            _parentOrLegalGuardianWorkPhone = CStr(reader("ParentOrLegalGuardianWorkPhone"))
            _signatureOfScholarshipApplicant = CStr(reader("SignatureOfScholarshipApplicant"))
            _signatureOfScholarshipApplicantDate = CStr(reader("SignatureOfScholarshipApplicantDate"))
        End While
        conn.Close()

        Dim _academicHonorsSubstr As String()
        If Not String.IsNullOrWhiteSpace(_academicHonors) Then
            _academicHonorsSubstr = _academicHonors.Split(",")
        Else
            _academicHonorsSubstr = {"", ""}
        End If

        Dim _nonAcademicAwardsSubstr As String()
        If Not String.IsNullOrWhiteSpace(_nonAcademicAwards) Then
            _nonAcademicAwardsSubstr = _nonAcademicAwards.Split(",")
        Else
            _nonAcademicAwardsSubstr = {"", ""}
        End If

        Dim _membershipActivitiesSubstr As String()
        If Not String.IsNullOrWhiteSpace(_membershipActivities) Then
            _membershipActivitiesSubstr = _membershipActivities.Split(",")
        Else
            _membershipActivitiesSubstr = {"", ""}
        End If

        Dim _hobbiesOutsideInterestsSubstr As String()
        If Not String.IsNullOrWhiteSpace(_hobbiesOutsideInterests) Then
            _hobbiesOutsideInterestsSubstr = _hobbiesOutsideInterests.Split(",")
        Else
            _hobbiesOutsideInterestsSubstr = {"", ""}
        End If

        Dim _extracurricularActivitesSubstr As String()
        If Not String.IsNullOrWhiteSpace(_extracurricularActivites) Then
            _extracurricularActivitesSubstr = _extracurricularActivites.Split(",")
        Else
            _extracurricularActivitesSubstr = {"", ""}
        End If

        Dim _schoolRelatedVolunteerActivitesSubstr As String()
        If Not String.IsNullOrWhiteSpace(_schoolRelatedVolunteerActivites) Then
            _schoolRelatedVolunteerActivitesSubstr = _schoolRelatedVolunteerActivites.Split(",")
        Else
            _schoolRelatedVolunteerActivitesSubstr = {"", ""}
        End If
  %>
  <div class="container">
    <section id="personal" style="padding-bottom: 0px;">
        <h3 class="page-title">
            <i class="fa fa-user" aria-hidden="true"></i>&nbsp; Personal</h3>
        <hr />
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-sm-6 form-group">
                        <label for="firstname">First Name *</label>
                        <input type="text" class="form-control" value="<% Response.Write(_firstName) %>" disabled="disabled" />
                    </div>
                    <div class="col-sm-6 form-group">
                        <label for="lastname">Last Name *</label>
                            <input type="text" class="form-control" value="<% Response.Write(_lastName) %>" disabled="disabled" />
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-sm-6 form-group">
                        <label for="email">Email *</label>
                            <input type="text" class="form-control" value="<% Response.Write(_email) %>" disabled="disabled" />
                    </div>
                    <div class="col-sm-6 form-group">
                        <label for="phoneNumber">Cell Phone *</label>
                        <input type="text" class="form-control" value="<% Response.Write(_phoneNumber) %>" disabled="disabled" />
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-sm-6 form-group">
                        <label for="streetAddress"> Mailing Street Address *</label>
                        <input type="text" class="form-control" value="<% Response.Write(_mailingStreetAddress) %>" disabled="disabled" />
                    </div>
                    <div class="col-sm-4 form-group">
                        <label for="city_state">  City, State *</label>
                        <input type="text" class="form-control" value="<% Response.Write(_mailingCity + "," + _mailingState) %>" disabled="disabled" />
                    </div>
                    <div class="col-sm-2 form-group">
                        <label for="name"> Zip Code *</label>
                        <input type="text" class="form-control" value="<% Response.Write(_mailingZipCode) %>" disabled="disabled" />
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-sm-4 form-group">
                        <label for="month"> Birth Month *</label>
                        <input type="text" class="form-control" value="<% Response.Write(_birthMonth) %>" disabled="disabled" />
                    </div>
                    <div class="col-sm-4 form-group">
                        <label for="day"> Birth Day *</label>
                        <input type="text" class="form-control" value="<% Response.Write(_birthDay) %>" disabled="disabled" />
                    </div>
                    <div class="col-sm-2 form-group">
                        <label for="year"> Birth Year *</label>
                        <input type="text" class="form-control" value="<% Response.Write(_birthYear) %>" disabled="disabled" />
                    </div>
                    <div class="col-sm-2 form-group">
                        <label for="sex">Sex *</label>
                        <input type="text" class="form-control" value="<% Response.Write(_sex) %>" disabled="disabled" />
                    </div>
                </div>
            </div>
        </div>
        <hr />
    </section>

    <section id="educational" style="padding-bottom: 0px;">
        <h3 class="page-title"><i class="fa fa-graduation-cap" aria-hidden="true"></i>&nbsp; Educational</h3>
        <hr />
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-sm-6 form-group">
                        <label for="gpa">
                            Cumulative Grade Point Average (GPA) *
                        </label>
                        <input type="text" class="form-control" value="<% Response.Write(_gpa) %>" disabled="disabled" />
                    </div>
                    <div class="col-sm-6 form-group">
                        <label for="attendingCollege">
                            Are you the first person in your family to attend college? *</label><br />
                        <input type="text" class="form-control" value="<% Response.Write(_isFirstToAttendCollege) %>" disabled="disabled" />
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-sm-6 form-group">
                        <label for="schoolName">
                            School Name Currently Attending
                        </label>
                        <input type="text" class="form-control" value="<% Response.Write(_schoolAttending) %>" disabled="disabled" />
                    </div>
                    <div class="col-sm-6 form-group">
                        <label for="schoolLocation">
                            School City & State Currently Attending</label>
                        <input type="text" class="form-control" value="<% Response.Write(_schoolCityStateAttending) %>" disabled="disabled" />
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
                      <textarea class="form-control" rows="10" cols="10" disabled="disabled">
                        <% 
                            For Each individualHonor As String In _academicHonorsSubstr
                                Response.Write(individualHonor & "&#013; &#010;")
                            Next
                        %>
                      </textarea>
                    </div>
                    <div class="col-sm-4 form-group">
                        <label for="nonAcademicAwards">
                            Non-Academic Awards
                        </label>
                        <textarea class="form-control" rows="10" cols="10" disabled="disabled">
                        <% 
                            For Each individualHonor As String In _nonAcademicAwardsSubstr
                                Response.Write(individualHonor & "&#013; &#010;")
                            Next
                        %>
                      </textarea>
                    </div>
                    <div class="col-sm-4 form-group">
                        <label for="membershipActivities">
                            Membership Activities
                        </label>
                        <textarea class="form-control" rows="10" cols="10" disabled="disabled">
                        <% 
                            For Each individualHonor As String In _membershipActivitiesSubstr
                                Response.Write(individualHonor & "&#013; &#010;")
                            Next
                        %>
                      </textarea>
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
                       <textarea class="form-control" rows="10" cols="10" disabled="disabled">
                        <% 
                            For Each individualHonor As String In _hobbiesOutsideInterestsSubstr
                                Response.Write(individualHonor & "&#013; &#010;")
                            Next
                        %>
                      </textarea>
                    </div>
                    <div class="col-sm-4 form-group">
                        <label for="extracurricularActivites">
                            Extracurricular Activites
                        </label>
                        <textarea class="form-control" rows="10" cols="10" disabled="disabled">
                        <% 
                            For Each individualHonor As String In _extracurricularActivitesSubstr
                                Response.Write(individualHonor & "&#013; &#010;")
                            Next
                        %>
                      </textarea>
                    </div>
                    <div class="col-sm-4 form-group">
                        <label for="schoolRelatedVolunteerActivites">
                            School Related Volunteer Activites
                        </label>
                        <textarea class="form-control" rows="10" cols="10" disabled="disabled">
                        <% 
                            For Each individualHonor As String In _schoolRelatedVolunteerActivitesSubstr
                                Response.Write(individualHonor & "&#013; &#010;")
                            Next
                        %>
                      </textarea>
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
                       <input type="text" class="form-control" value="<% Response.Write(_collegeToAttend) %>" disabled="disabled" />
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
                       <input type="text" class="form-control" value="<% Response.Write(_collegeChoiceOne) %>" disabled="disabled" />
                    </div>
                    <div class="col-sm-4 form-group">
                       <input type="text" class="form-control" value="<% Response.Write(_collegeChoiceTwo) %>" disabled="disabled" />
                    </div>
                    <div class="col-sm-4 form-group">
                         <input type="text" class="form-control" value="<% Response.Write(_collegeChoiceThree) %>" disabled="disabled" />
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
                            Is your parent or legal guardian an employee of HANO? *</label>
                        <input type="text" class="form-control" value="<% Response.Write(_isRelativeEmployeeOfHano) %>" disabled="disabled" />
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
                        <input type="text" class="form-control" value="<% Response.Write(_parentOrLegalGuardianFirstName) %>" disabled="disabled" />
                    </div>
                    <div class="col-sm-6 form-group">
                        <label for="parentOrLegalGuardianLastName">
                            Parent or Legal Guardian Last Name</label>
                        <input type="text" class="form-control" value="<% Response.Write(_parentOrLegalGuardianLastName) %>" disabled="disabled" />
                    </div>
                </div>
            </div>
        </div>
        <p> </p>
        <small class="text-muted">Include address if different than your own listed under the
            Personal section</small>
        <p></p>
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-sm-4 form-group">
                        <label for="streetAddress">
                            Parent or Legal Guardian Mailing Address</label>
                       <input type="text" class="form-control" value="<% Response.Write(_parentOrLegalGuardianStreetAddress) %>" disabled="disabled" />
                    </div>
                    <div class="col-sm-4 form-group">
                        <label for="city">
                            City</label>
                       <input type="text" class="form-control" value="<% Response.Write(_parentOrLegalGuardianCity) %>" disabled="disabled" />
                    </div>
                    <div class="col-sm-2 form-group">
                        <label for="state"> State</label>
                        <input type="text" class="form-control" value="<% Response.Write(_parentOrLegalGuardianState) %>" disabled="disabled" />
                    </div>
                    <div class="col-sm-2 form-group">
                        <label for="zipCode">
                            Zip Code</label>
                         <input type="text" class="form-control" value="<% Response.Write(_parentOrLegalGuardianZipCode) %>" disabled="disabled" />
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
                         <input type="text" class="form-control" value="<% Response.Write(_parentOrLegalGuardianHomePhone) %>" disabled="disabled" />
                    </div>
                    <div class="col-sm-6 form-group">
                        <label for="parentOrLegalGuardianWorkPhone">
                            Parent or Legal Guardian Work Phone</label>
                         <input type="text" class="form-control" value="<% Response.Write(_parentOrLegalGuardianWorkPhone) %>" disabled="disabled" />
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
                            <input type="text" class="form-control" value="<% Response.Write(_signatureOfScholarshipApplicant) %>" disabled="disabled" />
                    </div>
                    <div class="col-sm-6 form-group">
                        <label for="signatureOfScholarshipApplicantDate">
                            Signature of Scholarship Applicant Date *</label>
                        <input type="text" class="form-control" value="<% Response.Write(_signatureOfScholarshipApplicantDate) %>" disabled="disabled" />
                    </div>
                </div>
            </div>
        </div>
        <hr />
    </section>

  </div>
</asp:Content>
