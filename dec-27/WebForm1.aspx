<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="dec_27.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container col-lg-6">
        <!-- Email input -->
      <div class="form-outline mb-4">
          <asp:TextBox ID="TextBox1" runat="server" calss="form-control" ></asp:TextBox>
        <label class="form-label" for="TextBox1">Email</label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" email RequiredField" ControlToValidate="TextBox1" ValidationGroup="sign">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="invalid email" ControlToValidate="TextBox1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="sign">*</asp:RegularExpressionValidator>
      </div>
      <!-- Password input -->
      <div class="form-outline mb-4">


          <asp:TextBox ID="TextBox2"  type="password" runat="server" calss="form-control" ></asp:TextBox>

       
        <label class="form-label" for="loginPassword">Password</label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox2" ValidationGroup="sign">*</asp:RequiredFieldValidator>

      </div>

      <!-- 2 column grid layout -->
      <div class="row mb-4">
        <div class="col-md-6 d-flex justify-content-center">
          <!-- Checkbox -->
          <div class="form-check mb-3 mb-md-0">
        
       
          </div>

        </div>
                            <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-block mb-4" Text="Sign in" ValidationGroup="sign" OnClick="Button1_Click" onclick="client()" />
   
         <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="sign" />
      
      </div>

      <!-- Submit button -->
  
         <hr />

        
      <!-- Register buttons -->
      
   

 
 


     

      <!-- Email input -->
      <div class="form-outline mb-4">
                <asp:TextBox ID="TextBox3" runat="server" calss="form-control" ></asp:TextBox>
        <label class="form-label" for="TextBox3">Email</label>
  
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="invalid email" ControlToValidate="TextBox3" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="reg">*</asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage=" email RequiredField" ControlToValidate="TextBox1" ValidationGroup="reg">*</asp:RequiredFieldValidator>
      </div>

      <!-- Password input -->
      <div class="form-outline mb-4">
          <asp:TextBox ID="TextBox4"  type="password" runat="server" calss="form-control" ></asp:TextBox>

     
        <label class="form-label" for="registerPassword">Password</label>
      </div>

      <!-- Repeat Password input -->
      <div class="form-outline mb-4">
          <asp:TextBox ID="TextBox5"  type="password" runat="server" calss="form-control" ></asp:TextBox>
    
        <label class="form-label" for="registerRepeatPassword">Repeat password</label>
      <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="passwords dont match" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ValidationGroup="reg">*</asp:CompareValidator>
      </div>

    <asp:Button ID="Button2" runat="server" Text="Sign up" class="btn btn-primary btn-block mb-3" ValidationGroup="reg" OnClick="Button2_Click"/>
     
   
  
      <!-- Checkbox -->
    

      <!-- Submit button -->

   
  
    <asp:ValidationSummary ID="ValidationSummary2" runat="server" ValidationGroup="reg" />
      </div>

    <script>
        function client() {
            alert("hello")
         return false
        }
    </script>

</asp:Content>
