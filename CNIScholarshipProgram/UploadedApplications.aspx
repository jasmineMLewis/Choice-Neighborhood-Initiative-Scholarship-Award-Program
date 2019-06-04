<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/User.Master" CodeBehind="UploadedApplications.aspx.vb" Inherits="CNIScholarshipProgram.UploadedApplications" %>

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
    %>
    <asp:SqlDataSource ID="SqlUploadedApplications" runat="server" ConnectionString="<%$ ConnectionStrings:ScholarshipProgramConnectionString %>"
        SelectCommand="SELECT UploadedApplicationID, FirstName, LastName, Email, CellPhone,
                              CONVERT (varchar(MAX), CAST(SignatureOfScholarshipApplicantDate AS date), 101) AS SignatureOfScholarshipApplicantDate,
                              CONVERT (varchar(MAX), CAST(OfficalDBSubmissionDate AS date), 101) AS OfficalDBSubmissionDate
                       FROM UploadedApplications"></asp:SqlDataSource>
    <br />
    <br />
    <div class="container">
        <h3 class="page-title">
            <i class="fa fa-search" aria-hidden="true"></i>&nbsp; Search Uploaded Applications
        </h3>
        <hr />
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-sm-4 form-group">
                        <label for="firstname">
                            First Name</label>
                        <asp:TextBox ID="firstName" runat="server" class="form-control" placeholder="First Name"
                            MaxLength="50"></asp:TextBox>
                    </div>
                    <div class="col-sm-4 form-group">
                        <label for="lastname">
                            Last Name
                        </label>
                        <asp:TextBox ID="lastName" runat="server" class="form-control" placeholder="Last Name"
                            MaxLength="50"></asp:TextBox>
                    </div>
                    <div class="col-sm-4 form-group">
                        <label for="email">
                            Email
                        </label>
                        <asp:TextBox ID="email" runat="server" class="form-control" placeholder="Email" MaxLength="100"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="text-center">
                    <asp:Button ID="btnSearchApplications" runat="server" class="btn btn-info btn-fill btn-block"
                        Text="Search Uploaded Applications" />
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
    <div class="container">
        <h3 class="page-title">
            <i class="fa fa-file-text-o" aria-hidden="true"></i>&nbsp; Upload a NEW Pdf Application
        </h3>
          <hr />
       
        <a href="CreateUploadedApplication.aspx?SessionUserID=<% Response.Write(sessionUserID) %>">
            <i class="fa fa-file-text-o" aria-hidden="true"></i>&nbsp; Upload a New Pdf Application
        </a>
    </div>
     <br />
      <br />
    <div class="container">
        <h3 class="page-title">
            <i class="fa fa-paperclip" aria-hidden="true"></i>&nbsp; Uploaded Applications
        </h3>
        <asp:GridView ID="GridUploadedApplications" runat="server" AutoGenerateColumns="False"
            DataSourceID="SqlUploadedApplications" CssClass="table" GridLines="None" DataKeyNames="UploadedApplicationID"
            AllowPaging="True" PageSize="10" PagerStyle-CssClass="bs-pagination text-center">
            <Columns>
                <asp:BoundField DataField="FirstName" SortExpression="FirstName" HeaderText="First Name" />
                <asp:BoundField DataField="LastName" SortExpression="LastName" HeaderText="Last Name" />
                <asp:BoundField DataField="Email" SortExpression="Email" HeaderText="Email" />
                <asp:BoundField DataField="CellPhone" SortExpression="CellPhone" HeaderText="Cell Phone" />
                <asp:BoundField DataField="SignatureOfScholarshipApplicantDate" SortExpression="SignatureOfScholarshipApplicantDate"
                    HeaderText="Signature Date" />
                <asp:BoundField DataField="OfficalDBSubmissionDate" SortExpression="OfficalDBSubmissionDate"
                    HeaderText="Submission Date" />
                <asp:TemplateField HeaderText="Application/Essay/Support Statement/Transcript">
                    <ItemTemplate>
                        <%# DisplayDownloadUploadedApplication(Eval("UploadedApplicationID"))%>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
