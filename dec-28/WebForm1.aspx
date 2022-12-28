<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="dec_28.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <script type="text/javascript">
        function successalert() {
            swal({
                title: 'Congratulations!',
                text: 'Your message has been succesfully sent',
                type: 'success'
            });
        }
    </script>
        
</head>


<body>
    <form id="form1" runat="server">
     <asp:ScriptManager runat="server"></asp:ScriptManager>

        <asp:UpdatePanel runat="server">
            <ContentTemplate>
            
    <div class="container px-4 px-lg-5 my-5">

          <div class="row d-flex justify-content-center">
      <div class="col-md-12 col-lg-12">
 
        <div class="card " >
       <div class="card-body p-4">
 

                         <h4 class="mb-0">Comments</h4>
            <p class="fw-light mb-4 pb-2">Latest Comments section by users</p>
         

 
      </div>
    </div>
  </div>
      </div>
     

    <div class="row d-flex justify-content-center">
      <div class="col-md-12 col-lg-12">
   
        <div class="card text-dark" id="commentsSection" runat="server">



      </div>

                     
                <div class="row d-flex justify-content-center">
      <div class="col-md-12 col-lg-12">
 
        <div class="card " >
       <div class="card-body p-4 bg-info">
 

            
                                                       		 

           <div class="input-group mb-1" runat="server">
     
<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="write a message..."></asp:TextBox>
  <div class="input-group-append">
    
 
          <asp:LinkButton ID="Button2" runat="server" OnClick="Button2_Click" CssClass="btn btn-success" >Send <i class="fa-solid fa-paper-plane"></i> </asp:LinkButton>


    <a name="bottom"></a>

     <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  
          
  </div>
</div>


</div>

</div>
            </div>                                    
		 </div>	 
    
         
           </div>
 
      </div>

    </div>

  
</ContentTemplate>
        </asp:UpdatePanel>




    </form>

 
</body>
</html>
