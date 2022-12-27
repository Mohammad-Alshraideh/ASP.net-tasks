<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="dec_27.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
 
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container col-lg-6">
        <!-- Email input -->
      <div class="form-outline mb-4">
          <asp:TextBox ID="TextBox1" runat="server" calss="form-control" ></asp:TextBox>
        <label class="form-label" for="TextBox1">Email</label>
      </div>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="invalid email" ControlToValidate="TextBox1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" email RequiredField" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
      <!-- Password input -->
      <div class="form-outline mb-4">


          <asp:TextBox ID="TextBox2"  type="password" runat="server" calss="form-control" ></asp:TextBox>

       
        <label class="form-label" for="loginPassword">Password</label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>

      </div>

      <!-- 2 column grid layout -->
      <div class="row mb-4">
        <div class="col-md-6 d-flex justify-content-center">
          <!-- Checkbox -->
          <div class="form-check mb-3 mb-md-0">
        
       
          </div>
        </div>

      
      </div>

      <!-- Submit button -->
      <button type="submit" class="btn btn-primary btn-block mb-4">Sign in</button>  
         <hr />

        
      <!-- Register buttons -->
      <div class="text-center">
        <p>Not a member? <a href="#!">Register</a></p>
      </div>
    </form>

 
    <form>


     

      <!-- Email input -->
      <div class="form-outline mb-4">
                <asp:TextBox ID="TextBox3" runat="server" calss="form-control" ></asp:TextBox>
        <label class="form-label" for="TextBox3">Email</label>
      </div>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="invalid email" ControlToValidate="TextBox3" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage=" email RequiredField" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
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
      </div>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="passwords dont match" ControlToCompare="TextBox4" ControlToValidate="TextBox5"></asp:CompareValidator>
      <!-- Checkbox -->
    

      <!-- Submit button -->
      <button type="submit" class="btn btn-primary btn-block mb-3">Sign up</button>
   </div>
  
</asp:Content>
