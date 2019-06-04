Imports System.Data.SqlClient
Imports System.Web.Configuration

Public Class _Default
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection = New SqlConnection(WebConfigurationManager.ConnectionStrings("ScholarshipProgramConnectionString").ConnectionString)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnLogin(ByVal sender As Object, ByVal e As EventArgs)
        Dim email As String = Request.Form("email").Trim
        Dim password As String = Request.Form("password").Trim
        Dim sessionUserID As Integer

        conn.Open()
        Dim query As New SqlCommand("SELECT UserID FROM Users WHERE Email ='" & email & "' AND Password = '" & password & "'", conn)
        Dim reader As SqlDataReader = query.ExecuteReader()

        If reader.HasRows Then
            While reader.Read
                sessionUserID = CStr(reader("UserID"))
            End While
            conn.Close()
            Response.Redirect("Dashboard.aspx?SessionUserID=" & sessionUserID & "")
        End If
    End Sub


End Class