<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchResult.aspx.cs" Inherits="LuxuryWatches.Pages.SanPham.SearchResult" %>

<%@ Register Src="~/U_Controls/LocTheoHSX.ascx" TagPrefix="uc1" TagName="LocTheoHSX" %>
<%@ Register Src="~/U_Controls/LocTheoLoaiSP.ascx" TagPrefix="uc1" TagName="LocTheoLoaiSP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Styles_Content" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <!--start-breadcrumbs-->
        <div class="breadcrumbs">
		        <div class="container">
			        <div class="breadcrumbs-main">
				        <ol class="breadcrumb">
					        <li><a href="/">Trang chủ</a></li>
					        <li class="active">Kết quả tìm kiếm</li>
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
                    <h3> Kết quả tìm kiếm</h3>
                    <asp:ListView ID="ListView1" runat="server" SelectMethod="GetResult" ItemType="LuxuryWatches.Data.sanPham">
                        <EmptyDataTemplate>
                           <p>Không có sản phẩm</p>
                        </EmptyDataTemplate>
                        <ItemTemplate>
                           <div class="col-md-4 product-left p-left"> 
                                                <div class="product-main simpleCart_shelfItem">
                                                    <a href="<%# GetRouteUrl("chitietsp", new { bidanh = Eval("biDanh"), masp = Eval("maSP") } ) %>" class="mask"><img class="img-responsive zoom-img" src="/photos/<%# Eval("hinhDaiDien") %>" alt="" /></a>
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
                            <div class="product-one" runat="server" id="itemPlaceholderContainer">
                                <div id="itemPlaceholder" runat="server">

                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </LayoutTemplate>
                    </asp:ListView>
				</div>	
				<div class="col-md-3 single-right">
					<div class="w_sidebar">
                        <uc1:LocTheoLoaiSP runat="server" ID="LocTheoLoaiSP" />
                        <uc1:LocTheoHSX runat="server" id="LocTheoHSX" />
						
			
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
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts_Content" runat="server">
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
