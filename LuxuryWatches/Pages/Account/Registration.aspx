<%@ Page Title="Đăng Ký" Language="C#"  AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="LuxuryWatches.Pages.Account.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="../../css/stylere.css"/>
    <title></title>
     <style type="text/css">
         .Btnlg {
             width: 141px;
             color: #3ec5a1;
         }
         .Btnlg:hover{
             text-decoration: underline;
         }
     </style>
</head>
<body>
    <form id="form1" runat="server">
        <section>
            
            <div class="box">
                <div class="container">
                    <div class="form">
                        <div class="text">
                            <h2>Đăng Ký</h2>
                        </div>
                        
                        <div class="inputbox">
                            <input id="txtTaikhoan" runat="server"   class="style" placeholder="Nhập họ tên"/>
                           <br /><asp:RequiredFieldValidator ValidationGroup="registerForm" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTaikhoan" Display="Dynamic" ErrorMessage="Bạn chưa nhập họ tên" ForeColor="#ff6600">Bạn chưa nhập họ tên</asp:RequiredFieldValidator>
                            
                        </div>

                        <div class="inputbox">
                             <input id="txtEmail"  runat="server" class="style" placeholder="Nhập email"/>
                           <br /><asp:RequiredFieldValidator ValidationGroup="registerForm" ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Bạn chưa nhập Email" ForeColor="#ff6600">Bạn chưa nhập Email</asp:RequiredFieldValidator>
                             
                            </div>

                        <div class="inputbox">
                             <input id="txtSDT"  runat="server" class="style" placeholder="Số điện thoại"/>
                           <br /><asp:RequiredFieldValidator ValidationGroup="registerForm" ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSDT" Display="Dynamic" ErrorMessage="Bạn chưa nhập số điện thoại" ForeColor="#ff6600">Bạn chưa nhập số điện thoại</asp:RequiredFieldValidator>
                             
                        </div>
                        <div class="inputbox">
  
                        <input id="txtMatkhau" type="Password"  runat="server" class="style" placeholder="Mật khẩu" />
                           <br /><asp:RequiredFieldValidator ValidationGroup="registerForm" ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMatkhau" Display="Dynamic" ErrorMessage="Bạn chưa nhập mật khẩu" ForeColor="#ff6600">Bạn chưa nhập mật khẩu</asp:RequiredFieldValidator>

                         </div>

                     
                        <asp:Label ID="lblLoi" runat="server" ForeColor="#ff6600"></asp:Label> 
                        <div class="Btnsubmit">
                        
                          <asp:Button ID="btnRegister2" type="submit"  runat="server" ValidationGroup="registerForm" Text="Đăng Ký" OnClick="btnDK_Click"/>
                                               
                        </div>
                        <div class="Btnlg">
                            <a style="text-decoration: none; color: #3ec5a1;"  href="/sign-in">Đăng Nhập</a>
                        </div>
                    </div>
                </div>
            </div>
           
        </section>
    </form>
</body>
</html>
