<%@ Page Title="Đăng Nhập" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LuxuryWatches.Pages.Account.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Styles_Content" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<!--start-breadcrumbs-->
    <div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="/">Trang chủ</a></li>
					<li class="active">Tài khoản</li>
				</ol>
				
			</div>
		</div>
	</div>
    <!--end-breadcrumbs-->
    <div class="account">
		<div class="container">
		<div class="account-top heading">
				<h2>Tài Khoản</h2>
			</div>
			<div class="account-main">
				<div class="col-md-6 account-left">
					<h3>Bạn đã có tài khoản</h3>
					<div class="account-bottom" >
                        <input TabIndex="3" id="txtTaikhoan" ValidationGroup="loginForm" runat="server"/>
                        <br /><asp:RequiredFieldValidator ValidationGroup="loginForm" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTaikhoan" Display="Dynamic" ErrorMessage="Bạn chưa nhập tài khoản" ForeColor="Red">Bạn chưa nhập tài khoản</asp:RequiredFieldValidator>
                        <input ID="txtMatkhau" TabIndex="4" type="password" ValidationGroup="loginForm" runat="server"/>
                        <br />
                        <asp:RequiredFieldValidator ValidationGroup="loginForm" ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMatkhau" Display="Dynamic" ErrorMessage="Bạn chưa nhập Mật khẩu" ForeColor="Red">Bạn chưa nhập Mật khẩu</asp:RequiredFieldValidator>
                        <asp:Label ID="lblLoi" runat="server" ForeColor="Red"></asp:Label>
&nbsp;                  <div class="address">
    <asp:Button ID="btnLogin2"  runat="server" ValidationGroup="loginForm" OnClick="btnLogin2_Click" Text="Đăng Nhập" />
						</div>
					</div>
				</div>
				<div class="col-md-6 account-right account-left">
					<h3>Bạn chưa có tài khoản? Đăng ký thành viên ngay</h3>
					<p>Với việc đăng ký thành viên shop thì bạn có thể nhận được những ưu đãi vào những dịp lễ tết hoặc những dịp kỷ niệm của shop.</p>
					<a href="/dang-ky">Đăng Ký Ngay</a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts_Content" runat="server">
</asp:Content>
