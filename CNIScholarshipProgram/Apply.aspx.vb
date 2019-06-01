Imports System.Data.SqlClient
Imports System.Globalization
Imports System.IO
Imports System.Web.Configuration
Imports System.Web.Hosting

Public Class Apply
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection = New SqlConnection(WebConfigurationManager.ConnectionStrings("ScholarshipProgramConnectionString").ConnectionString)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnSubmit(ByVal sender As Object, ByVal e As EventArgs)
        Page.ClientScript.RegisterOnSubmitStatement(Me.GetType, "val", "fnOnUpdateValidators();")

        Dim _applicationID As String = InsertApplicationInDB()
        InsertEssayInFolder(_applicationID)
        InsertTranscriptAndSupportStatementInFolder(_applicationID)
        ClearForm()

        Response.Write("<div class='error'><div class='alert alert-success col-xs-12' role='alert'><strong>Success!</strong> Application SUBMITTED</div></div>")
        '  End If
    End Sub

    Public Sub ClearForm()
        firstName.Text = ""
        lastName.Text = ""
        email.Text = ""
        phoneNumber.Text = ""
        mailingStreetAddress.Text = ""
        mailingCity.Text = ""
        mailingState.SelectedValue = ""
        mailingZipCode.Text = ""
        birthMonth.SelectedValue = ""
        birthDay.SelectedValue = ""
        birthYear.Text = ""
        sex.Text = ""
        gpa.Text = ""
        firstToAttendCollege.SelectedValue = ""
        schoolAttending.Text = ""
        schoolCityStateAttending.Text = ""
        academicHonors.Text = ""
        nonAcademicAwards.Text = ""
        membershipActivities.Text = ""
        hobbiesOutsideInterests.Text = ""
        extracurricularActivites.Text = ""
        schoolRelatedVolunteerActivites.Text = ""
        collegeWillAttend.Text = ""
        collegeChoiceOne.Text = ""
        collegeChoiceTwo.Text = ""
        collegeChoiceThree.Text = ""
        employeeOfHano.SelectedValue = ""
        parentOrLegalGuardianFirstName.Text = ""
        parentOrLegalGuardianLastName.Text = ""
        parentOrLegalGuardianStreetAddress.Text = ""
        parentOrLegalGuardianCity.Text = ""
        parentOrLegalGuardianState.SelectedValue = ""
        parentOrLegalGuardianZipCode.Text = ""
        parentOrLegalGuardianHomePhone.Text = ""
        parentOrLegalGuardianWorkPhone.Text = ""
        signatureOfScholarshipApplicant.Text = ""
        signatureOfScholarshipApplicantDate.Text = ""
    End Sub

    Public Function InsertApplicationInDB() As Integer
        Dim _applicationID As Integer
        Dim _firstName As String = firstName.Text.Trim()
        Dim _lastName As String = lastName.Text.Trim()
        Dim _email As String = email.Text.Trim()
        Dim _phoneNumber As String = phoneNumber.Text.Trim()
        Dim _mailingStreetAddress As String = mailingStreetAddress.Text.Trim()
        Dim _mailingCity As String = mailingCity.Text.Trim()
        Dim _mailingState As String = mailingState.SelectedValue
        Dim _mailingZipCode As String = mailingZipCode.Text
        Dim _birthMonth As Integer = birthMonth.SelectedValue
        Dim _birthDay As Integer = birthDay.SelectedValue
        Dim _birthYear As Integer = birthYear.Text.Trim()
        Dim _sex As String = sex.Text.Trim()
        Dim _gpa As String = gpa.Text.Trim()
        Dim _isFirstToAttendCollege As Boolean = firstToAttendCollege.SelectedValue
        Dim _schoolAttending As String = schoolAttending.Text.Trim()
        Dim _schoolCityStateAttebnding As String = schoolCityStateAttending.Text.Trim()
        Dim _academicHonors As String = academicHonors.Text.Trim()
        Dim _nonAcademicAwards As String = nonAcademicAwards.Text.Trim()
        Dim _membershipActivities As String = membershipActivities.Text.Trim()
        Dim _hobbiesOutsideInterests As String = hobbiesOutsideInterests.Text.Trim()
        Dim _extracurricularActivites As String = extracurricularActivites.Text.Trim()
        Dim _schoolRelatedVolunteerActivites As String = schoolRelatedVolunteerActivites.Text.Trim()
        Dim _collegeToAttend As String = collegeWillAttend.Text.Trim()
        Dim _collegeChoiceOne As String = collegeChoiceOne.Text.Trim()
        Dim _collegeChoiceTwo As String = collegeChoiceTwo.Text.Trim()
        Dim _collegeChoiceThree As String = collegeChoiceThree.Text.Trim()
        Dim _isRelativeEmployeeOfHano As Boolean = employeeOfHano.SelectedValue
        Dim _parentOrLegalGuardianFirstName As String = parentOrLegalGuardianFirstName.Text.Trim()
        Dim _parentOrLegalGuardianLastName As String = parentOrLegalGuardianLastName.Text.Trim()
        Dim _parentOrLegalGuardianStreetAddress As String = parentOrLegalGuardianStreetAddress.Text.Trim()
        Dim _parentOrLegalGuardianCity As String = parentOrLegalGuardianCity.Text.Trim()
        Dim _parentOrLegalGuardianState As String = parentOrLegalGuardianState.SelectedValue
        Dim _parentOrLegalGuardianZipCode As String = parentOrLegalGuardianZipCode.Text.Trim()
        Dim _parentOrLegalGuardianHomePhone As String = parentOrLegalGuardianHomePhone.Text.Trim()
        Dim _parentOrLegalGuardianWorkPhone As String = parentOrLegalGuardianWorkPhone.Text.Trim()
        Dim _signatureOfScholarshipApplicant As String = signatureOfScholarshipApplicant.Text.Trim()

        'The format that the date control uses
        Const DATE_FORMAT As String = "MM/dd/yyyy"
        Dim _parsedSignatureOfScholarshipApplicantDate As DateTime = DateTime.ParseExact(signatureOfScholarshipApplicantDate.Text, DATE_FORMAT, CultureInfo.InvariantCulture)

        Dim query As String = String.Empty
        query &= "INSERT INTO ElectronicApplications (FirstName, LastName, Email, CellPhone, MailingStreetAddress,  "
        query &= "                          MailingCity, MailingState, MailingZipCode, BirthMonth, BirthDay, "
        query &= "                          BirthYear, Sex, GPA, IsFirstToAttendCollege, SchoolCurrentlyAttending, "
        query &= "                          SchoolCityStateCurrentlyAttending, AcademicHonors, NonAcademicAwards, "
        query &= "                          MembershipActivities, HobbiesOutsideInterests, ExtracurricularActivites, "
        query &= "                          SchoolRelatedVolunteerActivites, CollegeToAttend, CollegeChoiceOne, "
        query &= "                          CollegeChoiceTwo, CollegeChoiceThree, IsRelativeEmployeeOfHano, "
        query &= "                          ParentOrLegalGuardianFirstName, ParentOrLegalGuardianLastName, "
        query &= "                          ParentOrLegalGuardianStreetAddress, ParentOrLegalGuardianCity, "
        query &= "                          ParentOrLegalGuardianState, ParentOrLegalGuardianZipCode, ParentOrLegalGuardianHomePhone, "
        query &= "                          ParentOrLegalGuardianWorkPhone, SignatureOfScholarshipApplicant, "
        query &= "                          SignatureOfScholarshipApplicantDate, OfficalSubmissionDate) "
        query &= "VALUES (@FirstName, @LastName, @Email, @CellPhone, @MailingStreetAddress, @MailingCity, "
        query &= "        @MailingState, @MailingZipCode, @BirthMonth, @BirthDay, @BirthYear, @Sex, @GPA, "
        query &= "        @IsFirstToAttendCollege, @SchoolCurrentlyAttending, @SchoolCityStateCurrentlyAttending, "
        query &= "        @AcademicHonors, @NonAcademicAwards, @MembershipActivities, @HobbiesOutsideInterests, "
        query &= "        @ExtracurricularActivites, @SchoolRelatedVolunteerActivites,  @CollegeToAttend, @CollegeChoiceOne, "
        query &= "        @CollegeChoiceTwo, @CollegeChoiceThree, @IsRelativeEmployeeOfHano, @ParentOrLegalGuardianFirstName, "
        query &= "        @ParentOrLegalGuardianLastName, @ParentOrLegalGuardianStreetAddress, @ParentOrLegalGuardianCity, "
        query &= "        @ParentOrLegalGuardianState, @ParentOrLegalGuardianZipCode, @ParentOrLegalGuardianHomePhone, "
        query &= "        @ParentOrLegalGuardianWorkPhone, @SignatureOfScholarshipApplicant, @SignatureOfScholarshipApplicantDate, "
        query &= "        @OfficalSubmissionDate);"
        query &= "SELECT @@IDENTITY from ElectronicApplications"

        Using comm As New SqlCommand()
            With comm
                .Connection = conn
                .CommandType = CommandType.Text
                .CommandText = query
                .Parameters.AddWithValue("@FirstName", _firstName)
                .Parameters.AddWithValue("@LastName", _lastName)
                .Parameters.AddWithValue("@Email", _email)
                .Parameters.AddWithValue("@CellPhone", _phoneNumber)
                .Parameters.AddWithValue("@MailingStreetAddress", _mailingStreetAddress)
                .Parameters.AddWithValue("@MailingCity", _mailingCity)
                .Parameters.AddWithValue("@MailingState", _mailingState)
                .Parameters.AddWithValue("@MailingZipCode", _mailingZipCode)
                .Parameters.AddWithValue("@BirthMonth", _birthMonth)
                .Parameters.AddWithValue("@BirthDay", _birthDay)
                .Parameters.AddWithValue("@BirthYear", _birthYear)
                .Parameters.AddWithValue("@Sex", _sex)
                .Parameters.AddWithValue("@GPA", _gpa)
                .Parameters.AddWithValue("@IsFirstToAttendCollege", _isFirstToAttendCollege)
                .Parameters.AddWithValue("@SchoolCurrentlyAttending", _schoolAttending)
                .Parameters.AddWithValue("@SchoolCityStateCurrentlyAttending", _schoolCityStateAttebnding)
                .Parameters.AddWithValue("@AcademicHonors", _academicHonors)
                .Parameters.AddWithValue("@NonAcademicAwards", _nonAcademicAwards)
                .Parameters.AddWithValue("@MembershipActivities", _membershipActivities)
                .Parameters.AddWithValue("@HobbiesOutsideInterests", _hobbiesOutsideInterests)
                .Parameters.AddWithValue("@ExtracurricularActivites", _extracurricularActivites)
                .Parameters.AddWithValue("@SchoolRelatedVolunteerActivites", _schoolRelatedVolunteerActivites)
                .Parameters.AddWithValue("@CollegeToAttend", _collegeToAttend)
                .Parameters.AddWithValue("@CollegeChoiceOne", _collegeChoiceOne)
                .Parameters.AddWithValue("@CollegeChoiceTwo", _collegeChoiceTwo)
                .Parameters.AddWithValue("@CollegeChoiceThree", _collegeChoiceThree)
                .Parameters.AddWithValue("@IsRelativeEmployeeOfHano", _isRelativeEmployeeOfHano)
                .Parameters.AddWithValue("@ParentOrLegalGuardianFirstName", _parentOrLegalGuardianFirstName)
                .Parameters.AddWithValue("@ParentOrLegalGuardianLastName", _parentOrLegalGuardianLastName)
                .Parameters.AddWithValue("@ParentOrLegalGuardianStreetAddress", _parentOrLegalGuardianStreetAddress)
                .Parameters.AddWithValue("@ParentOrLegalGuardianCity", _parentOrLegalGuardianCity)
                .Parameters.AddWithValue("@ParentOrLegalGuardianState", _parentOrLegalGuardianState)
                .Parameters.AddWithValue("@ParentOrLegalGuardianZipCode", _parentOrLegalGuardianZipCode)
                .Parameters.AddWithValue("@ParentOrLegalGuardianHomePhone", _parentOrLegalGuardianHomePhone)
                .Parameters.AddWithValue("@ParentOrLegalGuardianWorkPhone", _parentOrLegalGuardianWorkPhone)
                .Parameters.AddWithValue("@SignatureOfScholarshipApplicant", _signatureOfScholarshipApplicant)
                .Parameters.AddWithValue("@SignatureOfScholarshipApplicantDate", _parsedSignatureOfScholarshipApplicantDate)
                .Parameters.AddWithValue("@OfficalSubmissionDate", Date.Now)
            End With
            conn.Open()
            _applicationID = comm.ExecuteScalar()
            conn.Close()
        End Using

        Return _applicationID
    End Function

    Public Sub InsertEssayInFolder(ByVal applicationID As String)
        Dim _filePath As String = HostingEnvironment.ApplicationPhysicalPath + "essays\"
        Dim _extension As String = Path.GetExtension(essaySubmisison.PostedFile.FileName)
        essaySubmisison.PostedFile.SaveAs(_filePath + "" + applicationID + "" + _extension)
    End Sub

    Public Sub InsertTranscriptAndSupportStatementInFolder(ByVal applicationID As String)
        Dim _filePath As String = HostingEnvironment.ApplicationPhysicalPath + "transcripts_support_statement\"
        Dim _extension As String = Path.GetExtension(transcriptSupportStatement.PostedFile.FileName)
        transcriptSupportStatement.PostedFile.SaveAs(_filePath + "" + applicationID + "" + _extension)
    End Sub

End Class