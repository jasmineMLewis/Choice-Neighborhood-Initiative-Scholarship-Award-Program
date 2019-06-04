<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/User.Master" CodeBehind="ElectronicApplications.aspx.vb" Inherits="CNIScholarshipProgram.ElectronicApplications" %>
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
    <asp:SqlDataSource ID="SqlElectronicApplications" runat="server" ConnectionString="<%$ ConnectionStrings:ScholarshipProgramConnectionString %>"
        SelectCommand="SELECT ElectronicApplicationID, FirstName, LastName, Email, CellPhone,
                              CONVERT (varchar(MAX), CAST(SignatureOfScholarshipApplicantDate AS date), 101) AS SignatureOfScholarshipApplicantDate,
                              CONVERT (varchar(MAX), CAST(OfficalSubmissionDate AS date), 101) AS OfficalSubmissionDate
                       FROM ElectronicApplications">
    </asp:SqlDataSource>
    <br />
    <br />
    <div class="container">
        <h3 class="page-title">
            <i class="fa fa-search" aria-hidden="true"></i>&nbsp; Search Electronic Applications
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
                        Text="Search Electronic Applications" />
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
    <div class="container">
        <h3 class="page-title">
            <i class="fa fa-bolt" aria-hidden="true"></i>&nbsp; Electronic Applications
        </h3>
        <br />
        <asp:GridView ID="GridElectronicApplications" runat="server" AutoGenerateColumns="False"
            DataSourceID="SqlElectronicApplications" CssClass="table" GridLines="None" DataKeyNames="ElectronicApplicationID"
            AllowPaging="True" PageSize="10" PagerStyle-CssClass="bs-pagination text-center">
            <Columns>
                <asp:BoundField DataField="FirstName" SortExpression="FirstName" HeaderText="First Name" />
                <asp:BoundField DataField="LastName" SortExpression="LastName" HeaderText="Last Name" />
                <asp:BoundField DataField="Email" SortExpression="Email" HeaderText="Email" />
                <asp:BoundField DataField="CellPhone" SortExpression="CellPhone" HeaderText="Cell Phone" />
                <asp:BoundField DataField="SignatureOfScholarshipApplicantDate" SortExpression="SignatureOfScholarshipApplicantDate"
                    HeaderText="Signature Date" />
                <asp:BoundField DataField="OfficalSubmissionDate" SortExpression="OfficalSubmissionDate"
                    HeaderText="Submission Date" />
                <asp:TemplateField HeaderText="View">
                    <ItemTemplate>
                        <%# DisplayViewLink(Request.QueryString("SessionUserID"), Eval("ElectronicApplicationID"))%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Essay">
                    <ItemTemplate>
                        <%# DisplayDownloadEssayLink(Eval("ElectronicApplicationID"))%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Transcript / Support Statement">
                    <ItemTemplate>
                        <%# DisplayDownloadTranscriptsSupportStatementLink(Eval("ElectronicApplicationID"))%>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
