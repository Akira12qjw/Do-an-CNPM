<%@ Page  Language="C#" MasterPageFile="~/PageUser/Site1.Master" AutoEventWireup="true" CodeBehind="TheoHangSX.aspx.cs" Inherits="LuxuryWatches.PageUser.SanPhamUser.TheoHangSX" %>

<%@ Register Src="~/PageUser/User_Control/LocTheoHSX.ascx" TagPrefix="uc2" TagName="LocTheoHSX" %>
<%@ Register Src="~/PageUser/User_Control/LocTheoLoaiSP.ascx" TagPrefix="uc2" TagName="LocTheoLoaiSP" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <!--start-breadcrumbs-->
<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="../../Userlg.aspx">Trang chủ</a></li>
					<li class="active"><asp:Literal ID="LiteralBreadcrumbActive" runat="server"></asp:Literal></li>
				</ol>
			</div>
		</div>
</div>
	<!--end-breadcrumbs-->
	<!--prdt-starts-->
<div class="prdt"> 
		<div class="container">
			<div class="prdt-top">
				<div class="col-md-9 prdt-left">
                    <h3> <asp:Literal ID="LiteralTieuDe" runat="server"></asp:Literal></h3>
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource1">
               
               
                        <EmptyDataTemplate>
                           <p>Không có sản phẩm</p>
                        </EmptyDataTemplate>
                     
                        <ItemTemplate>
                           <div class="col-md-4 product-left p-left"> 
                                                <div class="product-main simpleCart_shelfItem">
                                                    <a href="<%# GetRouteUrl("chitietspUser", new { bidanh = Eval("biDanh"), masp = Eval("maSP") } ) %>" class="mask"><img class="img-responsive zoom-img" src="/photos/<%# Eval("hinhDaiDien") %>" alt="" /></a>
                                                    <div class="product-bottom">
                                                        <h3><%# Eval("tenSP") %></h3>
                                                        <p>Xem ngay</p>
                                                        <h4> <span class=" item_price"><%#  Eval("giaBan","{0:#,##0}").Replace(',','.') %> đ</span></h4>
                                                    </div>
                                                    <div class="srch">
                                                        <span>-<%# Eval("daGiamGia") %>%</span>
                                                    </div>
                                                </div>
                                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                          <%--  <table runat="server" border="0" style="">
                                <tr id="itemPlaceholderContainer" runat="server">
                                    <td id="itemPlaceholder" runat="server"></td>
                                </tr>
                            </table>
                            <div style="">
                            </div>--%>
                            <div class="product-one" runat="server" id="itemPlaceholderContainer">
                                <div id="itemPlaceholder" runat="server">

                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </LayoutTemplate>
                       
                    </asp:ListView>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="LaySanPhamTheoHang" TypeName="LuxuryWatches.Data.SanPhamBLL">
                        <SelectParameters>
                            <asp:RouteParameter Name="mahangsx" RouteKey="mahangsx" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
      
				</div>	
				<div class="col-md-3 single-right">
					<div class="w_sidebar">
                        <uc2:LocTheoLoaiSP runat="server" ID="LocTheoLoaiSP" />
                        <uc2:LocTheoHSX runat="server" id="LocTheoHSX" />
						
						<section class="sky-form">
							<h4>Màu sắc</h4>
								<ul class="w_nav2">
									<li><a class="color1" href="#"></a></li>
									<li><a class="color2" href="#"></a></li>
									<li><a class="color3" href="#"></a></li>
									<li><a class="color4" href="#"></a></li>
									<li><a class="color5" href="#"></a></li>
									<li><a class="color6" href="#"></a></li>
									<li><a class="color7" href="#"></a></li>
									<li><a class="color8" href="#"></a></li>
									<li><a class="color9" href="#"></a></li>
									<li><a class="color10" href="#"></a></li>
									<li><a class="color12" href="#"></a></li>
									<li><a class="color13" href="#"></a></li>
									<li><a class="color14" href="#"></a></li>
									<li><a class="color15" href="#"></a></li>
									<li><a class="color5" href="#"></a></li>
									<li><a class="color6" href="#"></a></li>
									<li><a class="color7" href="#"></a></li>
									<li><a class="color8" href="#"></a></li>
									<li><a class="color9" href="#"></a></li>
									<li><a class="color10" href="#"></a></li>
								</ul>
						</section>
			
						<section>
						<h4>Video</h4>
						<iframe width="255" height="200" src="https://www.youtube.com/embed/O4Zbj_aNs2w" frameborder="0" allowfullscreen></iframe>
						</section>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--product-end-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Scripts_Content" runat="server">
     <script>
    function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}
    $(function(){
       var phanloaiID = getParameterByName("phanloaiID");
       var hangsanxuatID = getParameterByName("hangsanxuatID");
       id1 = "#chk" + phanloaiID;
       $(id1).prop("checked","checked");
       id2 = "#chk" + hangsanxuatID;
       $(id2).prop("checked","checked");
    });
    </script>
</asp:Content>
