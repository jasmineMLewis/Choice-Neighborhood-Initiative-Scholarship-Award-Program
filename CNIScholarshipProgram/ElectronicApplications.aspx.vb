Imports System.Data.SqlClient
Imports System.IO
Imports System.Web.Configuration
Imports System.Web.Hosting

Public Class ElectronicApplications
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection = New SqlConnection(WebConfigurationManager.ConnectionStrings("ScholarshipProgramConnectionString").ConnectionString)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Public Function DisplayDownloadEssayLink(ByVal electronicApplicationID As Integer) As String
        Dim link As String = ""
        Dim wordFile As String = HostingEnvironment.ApplicationPhysicalPath & "essays\" & electronicApplicationID & ".docx"
        Dim pdfFile As String = HostingEnvironment.ApplicationPhysicalPath & "essays\" & electronicApplicationID & ".pdf"

        If (File.Exists(wordFile)) Then
            link = "<a href=./essays/" & electronicApplicationID & ".docx target=_blank><i class='fa fa-file-word-o' aria-hidden='true'></i></a>"
        End If

        If (File.Exists(pdfFile)) Then
            link = "<a href=./essays/" & electronicApplicationID & ".pdf target=_blank><i class='fa fa-file-pdf-o' aria-hidden='true'></i></a>"
        End If

        Return link
    End Function

    Public Function DisplayDownloadTranscriptsSupportStatementLink(ByVal electronicApplicationID As Integer) As String
        Dim link As String = ""
        Dim wordFile As String = HostingEnvironment.ApplicationPhysicalPath & "transcripts_support_statement\" & electronicApplicationID & ".docx"
        Dim pdfFile As String = HostingEnvironment.ApplicationPhysicalPath & "transcripts_support_statement\" & electronicApplicationID & ".pdf"

        If (File.Exists(wordFile)) Then
            link = "<a href=./transcripts_support_statement/" & electronicApplicationID & ".docx target=_blank><i class='fa fa-file-word-o' aria-hidden='true'></i></a>"
        ElseIf (File.Exists(pdfFile)) Then
            link = "<a href=./transcripts_support_statement/" & electronicApplicationID & ".pdf target=_blank><i class='fa fa-file-pdf-o' aria-hidden='true'></i></a>"
        Else
            If Not (File.Exists(pdfFile)) Or Not (File.Exists(wordFile)) Then
                link = "Not Pdf or Word Doc"
            End If
        End If

        Return link
    End Function

    Public Function DisplayViewLink(ByVal sessionUserID As Integer, ByVal electronicApplicationID As Integer) As String
        Return "<a href=ViewApplication.aspx?SessionUserID=" & sessionUserID & "&ElectronicApplicationID=" & electronicApplicationID & "><i class='fa fa-eye' aria-hidden='true'></i></a>"
    End Function

    Protected Sub SearchApplications(ByVal sender As Object, ByVal e As EventArgs) Handles btnSearchApplications.Click
        Dim sql As String = "SELECT ElectronicApplicationID, FirstName, LastName, Email, CellPhone," &
                            "       CONVERT (varchar(MAX), CAST(SignatureOfScholarshipApplicantDate AS date), 101) AS SignatureOfScholarshipApplicantDate, " &
                            "       CONVERT (varchar(MAX), CAST(OfficalSubmissionDate AS date), 101) AS OfficalSubmissionDate " &
                            "FROM ElectronicApplications " &
                            "WHERE ElectronicApplicationID != 0 "

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

        SqlElectronicApplications.SelectCommand = sql
        SqlElectronicApplications.DataBind()
        GridElectronicApplications.DataBind()
    End Sub

End Class