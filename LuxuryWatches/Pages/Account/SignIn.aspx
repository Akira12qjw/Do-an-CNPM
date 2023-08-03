<%@ Page Title="Đăng Nhập" Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="LuxuryWatches.Pages.Account.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link rel="stylesheet" href="/css/stylere.css"/>
    <title></title>
      <style type="text/css">
         .BtnSI a {
             width: 141px;
             margin-top: 28px;
             color: #3ec5a1;
            
         }
         .BtnSI:hover{
             text-decoration: underline;
             text-decoration-color: #d0d0d0;
            
             
         }
           #btnSignIn:hover{
                cursor: pointer;
                background: black;
           }
          .BtnSI {
              width: 131px;
          }
     </style>
</head>
<body>
    <form id="form1" runat="server">

        <section >         
                <div class="container">
                   
                    <div class="form">
                        <div class="text">
                           <h2>Đăng Nhập</h2>
                        </div>
                        
                        <div class="input-signin">
                            <input id="txtTaikhoan" runat="server" class="style" placeholder="Nhập tài khoản"/>
                           <br /><asp:RequiredFieldValidator ValidationGroup="loginForm" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTaikhoan" Display="Dynamic" ErrorMessage="Bạn chưa nhập tài khoản" ForeColor="#ff6600">Bạn chưa nhập tài khoản</asp:RequiredFieldValidator>
                             
                        </div>

                        <div class="input-signin">
  
                        <input id="txtMatkhau" type="Password"  runat="server" class="style" placeholder="Mật khẩu" />
                        <asp:RequiredFieldValidator ValidationGroup="loginForm" ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMatkhau" Display="Dynamic" ErrorMessage="Bạn chưa nhập mật khẩu" ForeColor="#ff6600">Bạn chưa nhập mật khẩu</asp:RequiredFieldValidator>
                        <asp:Label ID="lblLoi" runat="server" ForeColor="#ff6600"></asp:Label>
                         </div>
                      
                     

                        <div class="Btnsubmit">
                             <asp:Button  ID="btnSignIn" type="submit" runat="server" ValidationGroup="loginForm" Text="Đăng Nhập" OnClick="btnSignIn_Click" />

                         </div>
                        <div class="BtnSI">
                            <a style="text-decoration: none; " href="/dang-ky">Đăng Ký</a>
                        </div>
                    </div>
                </div>
           
           
        </section>
    </form>
</body>
</html>
