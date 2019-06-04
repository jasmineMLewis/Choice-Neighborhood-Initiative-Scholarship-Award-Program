Imports System.Data.SqlClient
Imports System.IO
Imports System.Web.Configuration
Imports System.Web.Hosting

Public Class CreateUploadedApplication
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection = New SqlConnection(WebConfigurationManager.ConnectionStrings("ScholarshipProgramConnectionString").ConnectionString)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnSubmit(ByVal sender As Object, ByVal e As EventArgs)
        Page.ClientScript.RegisterOnSubmitStatement(Me.GetType, "val", "fnOnUpdateValidators();")

        Dim _uplaodedApplicationID As String = InsertApplicationInDB()

        If Not _uplaodedApplicationID = 0 Then
            InsertUploadedApplicationInFolder(_uplaodedApplicationID)
            ClearForm()
            Response.Write("<div class='error'><div class='alert alert-success col-xs-8' role='alert'><strong>Success!</strong> Application SUBMITTED</div></div>")
        Else
            Response.Write("<div class='error'><div class='alert alert-danger col-xs-8' role='alert'><strong>Error!</strong> Application NOT SUBMITTED</div></div>")
        End If
    End Sub

    Public Sub ClearForm()
        firstName.Text = ""
        lastName.Text = ""
        email.Text = ""
        phoneNumber.Text = ""
        signatureOfScholarshipApplicantDate.Text = ""
    End Sub

    Public Function GetSessionUserID() As String
        Dim userID As String
        If Not Web.HttpContext.Current.Session("UserID") Is Nothing Then
            userID = Web.HttpContext.Current.Session("UserID").ToString()
        End If

        If userID = Nothing Then
            userID = Request.QueryString("UserID")
            Web.HttpContext.Current.Session("UserID") = userID
        End If

        Return userID
    End Function

    Public Function InsertApplicationInDB() As Integer
        Dim _userID As Integer = GetSessionUserID()
        Dim _uploadedApplicationID As Integer
        Dim _firstName As String = firstName.Text.Trim()
        Dim _lastName As String = lastName.Text.Trim()
        Dim _email As String = email.Text.Trim()
        Dim _phoneNumber As String = phoneNumber.Text.Trim()
        Dim _signatureOfScholarshipApplicantDate As String = signatureOfScholarshipApplicantDate.Text.Trim()

        ''The format that the date control uses
        'Const DATE_FORMAT As String = "MM/dd/yyyy"
        'Dim _parsedSignatureOfScholarshipApplicantDate As DateTime = DateTime.ParseExact(signatureOfScholarshipApplicantDate.Text, DATE_FORMAT, CultureInfo.InvariantCulture)

        Dim query As String = String.Empty
        query &= "INSERT INTO UploadedApplications (FirstName, LastName, Email, CellPhone, SignatureOfScholarshipApplicantDate, OfficalDBSubmissionDate, fk_UploadedByUserID) "
        query &= "VALUES (@FirstName, @LastName, @Email, @CellPhone, @SignatureOfScholarshipApplicantDate, @OfficalDBSubmissionDate, @fk_UploadedByUserID);"
        query &= "SELECT @@IDENTITY from UploadedApplications"

        Using comm As New SqlCommand()
            With comm
                .Connection = conn
                .CommandType = CommandType.Text
                .CommandText = query
                .Parameters.AddWithValue("@FirstName", _firstName)
                .Parameters.AddWithValue("@LastName", _lastName)
                .Parameters.AddWithValue("@Email", _email)
                .Parameters.AddWithValue("@CellPhone", _phoneNumber)
                .Parameters.AddWithValue("@SignatureOfScholarshipApplicantDate", _signatureOfScholarshipApplicantDate)
                .Parameters.AddWithValue("@OfficalDBSubmissionDate", Date.Now)
                .Parameters.AddWithValue("@fk_UploadedByUserID", _userID)
            End With
            conn.Open()
            _uploadedApplicationID = comm.ExecuteScalar()
            conn.Close()
        End Using

        Return _uploadedApplicationID
    End Function

    Public Sub InsertUploadedApplicationInFolder(ByVal applicationID As String)
        Dim filePath As String = HostingEnvironment.ApplicationPhysicalPath + "uploadedApplications\"
        Dim extension As String = Path.GetExtension(applicationSubmisison.PostedFile.FileName)
        applicationSubmisison.PostedFile.SaveAs(filePath + "" + applicationID + "" + extension)
    End Sub
End Class