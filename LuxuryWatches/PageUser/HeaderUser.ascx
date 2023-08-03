<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HeaderUser.ascx.cs" Inherits="LuxuryWatches.PageUser.HeaderUser" %>
<div class="HeaderUser">
		<div class="container">
			<div class="header">
				<div class="col-md-9 header-left">
				<div class="top-nav">
					<ul class="memenu skyblue"><li class="active"><a href="../Userlg.aspx">Trang chủ</a></li>
						
                       
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource1">
                            <ItemTemplate>
                                <li class="grid" runat="server"><a href='<%# GetRouteUrl("theoloaisp",new { bidanh = Eval("biDanh") }) %>'> <%# Eval("tenLoai") %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
					    <li class="grid">
                            <a href="<%: GetRouteUrl("AboutUser",null) %>">Thông tin shop</a>
						</li>
                        <li class="grid">
                            <a href="<%: GetRouteUrl("bloguser",null) %>">Blog</a>
						</li>
                        <li class="grid">
                            <a href="<%: GetRouteUrl("contactUser",null) %>">Liên hệ</a>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="LayDanhSach" TypeName="LuxuryWatches.Data.loaiSPBLL"></asp:ObjectDataSource>
			<div class="col-md-3 header-right"> 
				<div class="search-bar">
                    <asp:TextBox ID="txtTuKhoa" ValidationGroup="timkiem"  runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTuKhoa" CssClass="text-danger" Display="Dynamic" ErrorMessage="Bạn chưa nhập tên sản phẩm cần tìm" ValidationGroup="timkiem"></asp:RequiredFieldValidator>
&nbsp;<asp:Button ID="btnTimKiem" OnClick="btnTimKiem_Click" ValidationGroup="timkiem" runat="server"  />
                        
				</div>
			</div>
			<div class="clearfix"> </div>
			</div>
		</div>
	</div>