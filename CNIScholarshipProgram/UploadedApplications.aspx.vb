Imports System.Data.SqlClient
Imports System.Web.Configuration

Public Class UploadedApplications
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection = New SqlConnection(WebConfigurationManager.ConnectionStrings("ScholarshipProgramConnectionString").ConnectionString)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Public Function DisplayDownloadUploadedApplication(ByVal uploadedApplicationID As Integer) As String
        Return "<a href=./uploadedApplications/" & uploadedApplicationID & ".pdf target=_blank><i class='fa fa-file-pdf-o' aria-hidden='true'></i></a>"
    End Function

    Protected Sub SearchApplications(ByVal sender As Object, ByVal e As EventArgs) Handles btnSearchApplications.Click
        Dim sql As String = "SELECT UploadedApplicationID, FirstName, LastName, Email, CellPhone," &
                            "       CONVERT (varchar(MAX), CAST(SignatureOfScholarshipApplicantDate AS date), 101) AS SignatureOfScholarshipApplicantDate, " &
                            "       CONVERT (varchar(MAX), CAST(OfficalDBSubmissionDate AS date), 101) AS OfficalDBSubmissionDate " &
                            "FROM UploadedApplications " &
                            "WHERE UploadedApplicationID != 0 "

        Dim _firstName As String = firstName.Text
        Dim _lastname As String = lastName.Text
        Dim _email As String = email.Text

        If Not String.IsNullOrEmpty(_firstName) Then
            sql += " AND FirstName LIKE '" + _firstName.ToString() + "%'"
        End If

        If Not String.IsNullOrEmpty(_lastname) Then
            sql += " AND LastName LIKE '" + _lastname.ToString() + "%'"
        End If

        If Not String.IsNullOrEmpty(_email) Then
            sql += " AND Email LIKE '" + _email.ToString() + "%'"
        End If

        SqlUploadedApplications.SelectCommand = sql
        SqlUploadedApplications.DataBind()
        GridUploadedApplications.DataBind()
    End Sub

End Class