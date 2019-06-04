<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/User.Master" CodeBehind="CreateUploadedApplication.aspx.vb" Inherits="CNIScholarshipProgram.CreateUploadedApplication" %>

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
     <br />
    <br />
    <div class="container">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <h3 class="page-title">
            <i class="fa fa-paperclip" aria-hidden="true"></i>&nbsp; Upload a Pdf Application
        </h3>
        <hr />
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-sm-4 form-group">
                        <label for="firstname">
                            First Name *
                        </label>
                        <asp:TextBox ID="firstName" runat="server" class="form-control" placeholder="First Name" MaxLength="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="requiredFirstName" runat="server" controltovalidate="firstName" />
                    </div>
                    <div class="col-sm-4 form-group">
                        <label for="lastname">
                            Last Name *
                        </label>
                        <asp:TextBox ID="lastName" runat="server" class="form-control" placeholder="Last Name" MaxLength="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="requiredLastName" runat="server" controltovalidate="lastName" />
                    </div>
                    <div class="col-sm-4 form-group">
                        <label for="email">
                            Email *
                        </label>
                        <asp:TextBox ID="email" runat="server" class="form-control" placeholder="Email" MaxLength="100"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="requiredEmail" runat="server" controltovalidate="email" />
                    </div>
                    <div class="col-sm-4 form-group">
                        <label for="cellPhone">
                            Cell Phone *
                        </label>
                        <asp:TextBox ID="phoneNumber" runat="server" class="form-control" placeholder="Cell Phone" MaxLength="10"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="requiredPhoneNumber" runat="server" controltovalidate="phoneNumber" />
                    </div>
                    <div class="col-sm-4 form-group">
                        <label for="applicantSignatureDate">
                               Applicant Signature Date *
                        </label>
                        <asp:TextBox ID="signatureOfScholarshipApplicantDate" runat="server" class="form-control"  placeholder="Applicant Signature Date"></asp:TextBox>
                       <%-- <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="signatureOfScholarshipApplicantDate" Format="MM/dd/yyyy" /> 
                         <asp:RequiredFieldValidator ID="requiredSignatureOfScholarshipApplicantDate" runat="server" controltovalidate="signatureOfScholarshipApplicantDate" />--%>
                    </div>
                    <div class="col-sm-4 form-group">
                        <label for="cellPhone">
                            Application/Essay/Support Statement/Transcript
                        </label>
                         <asp:FileUpload ID="applicationSubmisison" runat="server" class="form-control" />
                            <asp:RequiredFieldValidator ID="requireAapplicationSubmisison" runat="server" controltovalidate="applicationSubmisison" />
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="text-center">
                    <button id="button" type="button" class="btn btn-info" runat="server"
                        onserverclick="btnSubmit">
                        <i class="fa fa-upload"></i>&nbsp; Uplaod New Pdf Application
                    </button>
                </div>
            </div>
        </div>
    </div>

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
