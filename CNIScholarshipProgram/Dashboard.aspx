<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/User.Master" CodeBehind="Dashboard.aspx.vb" Inherits="CNIScholarshipProgram.Dashboard" %>

<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Web.Configuration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
        <style type="text/css">
        .space-left
        {
            margin-left: 30px;
        }
    </style>
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
         conn.Open()
         Dim totalElecontric As Integer
         Dim queryElecontric As New SqlCommand("SELECT COUNT(ElectronicApplicationID) As Total FROM ElectronicApplications", conn)
         Dim readerElecontric As SqlDataReader = queryElecontric.ExecuteReader()
         While readerElecontric.Read
             totalElecontric = CStr(readerElecontric("Total"))
         End While
         conn.Close()

         conn.Open()
         Dim totalUploaded As Integer
         Dim queryUploaded As New SqlCommand("SELECT COUNT(UploadedApplicationID) As Total FROM UploadedApplications", conn)
         Dim readerUploaded As SqlDataReader = queryUploaded.ExecuteReader()
         While readerUploaded.Read
             totalUploaded = CStr(readerUploaded("Total"))
         End While
         conn.Close()
    %>
    <div class="container">
        <br />
        <br />
        <h3 class="page-title">
            <i class="fa fa-tachometer" aria-hidden="true"></i>&nbsp; Dashboard
        </h3>
        <hr />
        <div class="row">
            <div class="col-sm-6">
                <div class="card bg-light">
                    <div class="card-body">
                        <h5 class="card-title">
                            Electronic Applications</h5>
                        <p class="card-text">
                            <b>Total Number</b> <em>
                                <% Response.Write(totalElecontric)%></em></p>
                        <a href="ElectronicApplications.aspx?SessionUserID=<% Response.Write(sessionUserID) %>"
                            class="btn btn-primary">View </a>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="card bg-light">
                    <div class="card-body">
                        <h5 class="card-title">
                            Uploaded Applications</h5>
                        <p class="card-text">
                            <b>Total Number</b> <em>
                                <% Response.Write(totalUploaded)%></em></p>
                        <a href="UploadedApplications.aspx?SessionUserID=<% Response.Write(sessionUserID) %>"
                            class="btn btn-primary">View </a>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
        
        <div class="row">
            <div class="card col-sm-4" style="width: 18rem;">
                <img class="card-img-top" src="img/rubric.png" alt="Card image cap" >
                <div class="card-body">
                    <h5 class="card-title">
                        CNI Scholarship Program Rubric</h5>
                    <p class="card-text">
                        Download the rubric that evaluates applicants' scholarships.</p>
                    <a href="assets/CNI Scholarship Program Rubric.pdf" class="btn btn-primary" target="_blank">Download</a>
                </div>
            </div>
            <div class="col-sm-2"></div>
            <div class="card col-sm-4" style="width: 18rem;">
                <img class="card-img-top" src="img/signature.png" alt="Card image cap" >
                <div class="card-body">
                    <h5 class="card-title">
                       Statement Of Support By Guidance Counselor/Advisor</h5>
                    <p class="card-text">
                        Download the stament of support used by applicants.</p>
                    <a href="assets/Statement Of Support By Guidance Counselor_Advisor.pdf" class="btn btn-primary" target="_blank">Download</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
