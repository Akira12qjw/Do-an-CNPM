<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChiTiet.aspx.cs" Inherits="LuxuryWatches.Pages.SanPham.ChiTiet" %>

<%@ Register Src="~/U_Controls/LocTheoLoaiSP.ascx" TagPrefix="uc1" TagName="LocTheoLoaiSP" %>
<%@ Register Src="~/U_Controls/LocTheoHSX.ascx" TagPrefix="uc1" TagName="LocTheoHSX" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <div id="fb-root"></div>
<script>(function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.11&appId=143329276428698';
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
<!--start-breadcrumbs-->
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="/">Trang chủ </a></li>
					<li class="active"><asp:Literal runat="server" ID="literalBreadCrumb"></asp:Literal></li>
				</ol>
			</div>
		</div>
	</div>
	<!--end-breadcrumbs-->
	<!--start-single-->
	<div class="single contact">
		<div class="container">
			<div class="single-main">
				<div class="col-md-9 single-main-left">
				<div class="sngl-top">
                    <asp:FormView ID="FormView1" runat="server" DataSourceID="objSourceChiTiet">
                        <ItemTemplate>
                            <div class="col-md-5 single-top-left">
                                <div class="flexslider">
                                    <ul class="slides">
                                       <asp:Repeater runat="server" DataSourceID="objSourceHinhKem">
                                           <ItemTemplate>
                                               <li data-thumb='/photos/hinhnho/<%# Container.DataItem  %>'>
                                               <div class="thumb-image">
                                                   <img src='/photos/hinhto/<%# Container.DataItem %>' data-imagezoom="true" class="img-responsive" alt='<%# Container.DataItem %>' />
                                               </div>
                                           </li>
                                           </ItemTemplate>
                                           
                                       </asp:Repeater>
                                         <asp:ObjectDataSource ID="objSourceHinhKem" TypeName="LuxuryWatches.Data.SanPhamBLL" SelectMethod="LayDsHinhKem" runat="server">
                                                    <SelectParameters>
                                                        <asp:RouteParameter Name="masp" RouteKey="masp" Type="Int32" />
                                                    </SelectParameters>
                                         </asp:ObjectDataSource>
                                    </ul>
                                </div>
                                <!-- FlexSlider -->
                                <script src="/js/imagezoom.js"></script>
                                <script defer src="/js/jquery.flexslider.js"></script>
                                <link rel="stylesheet" href="/css/flexslider.css" type="text/css" media="screen" />

                                <script>
                                    // Can also be used with $(document).ready()
                                    $(window).load(function () {
                                        $('.flexslider').flexslider({
                                            animation: "slide",
                                            controlNav: "thumbnails"
                                        });
                                    });
                                </script>
                            </div>
                            <div class="col-md-7 single-top-right">
                                <div class="single-para simpleCart_shelfItem">
                                    <h2><%# Eval("tenSP") %></h2>
                                    <div class="star-on">
                                        <ul class="star-footer">
                                            <asp:Repeater runat="server" DataSourceID="objSourceDanhGia">
                                                <ItemTemplate>
                                                    <li><a href="#"><i></i></a></li>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </ul>
                                           <asp:ObjectDataSource ID="objSourceDanhGia" TypeName="LuxuryWatches.Data.SanPhamBLL" SelectMethod="LayMangDanhGia" runat="server">
                                                    <SelectParameters>
                                                        <asp:RouteParameter Name="masp" RouteKey="masp" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:ObjectDataSource>
                                        </ul>
                                        <div class="review">
                                            <a href="#"><%# Eval("danhGia") %> thành viên đã đánh giá </a>

                                        </div>
                                        <div class="clearfix"></div>
                                    </div>

                                    <h5 class="item_price"><%# Eval("giaBan","{0:#,##0}").Replace(',','.') %> đồng</h5>
                                    <p><%# Eval("ndTomTat") %></p>
                                    <div class="available">
                                        <ul>
                                            <li>Màu sắc
                                                <asp:DropDownList ID="lstMauSac" DataSourceID="objSourceMauSac"  runat="server"></asp:DropDownList>

                                                <asp:ObjectDataSource  ID="objSourceMauSac" SelectMethod="LayDsMauSac" TypeName="LuxuryWatches.Data.SanPhamBLL"  runat="server">
                                                       <SelectParameters>
                                                        <asp:RouteParameter Name="masp" RouteKey="masp" Type="Int32" />
                                                       </SelectParameters>
                                                </asp:ObjectDataSource>
                                            </li>
                                            <li class="size-in">Kích cỡ
                                                <asp:DropDownList ID="lstKichCo" DataSourceID="objectKichCo" runat="server"></asp:DropDownList>
                                                <asp:ObjectDataSource ID="objectKichCo" TypeName="LuxuryWatches.Data.SanPhamBLL" SelectMethod="LayDsKichCo" runat="server">
                                                    <SelectParameters>
                                                        <asp:RouteParameter Name="masp" RouteKey="masp" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:ObjectDataSource>
                                            </li>
                                            <div class="clearfix"></div>
                                        </ul>
                                    </div>

                                </div>

                               


                                	<div>
							<ul class="tag-men">
								<li><span>TAG</span>
								<span class="women1">: <%# Eval("loaiSP.tenLoai") %> </span></li>
								<li><span>SKU</span>
								<span class="women1">: CK09</span></li>
							</ul>
								<%--<a href="#" class="add-cart item_add">THÊM VÀO GIỎ</a>--%>
                               <asp:LinkButton  ID="btnThemVaoGio" CssClass="add-cart item_add" runat="server" OnClick="btnThemVaoGio_Click">THÊM VÀO GIỎ</asp:LinkButton>

						</div>
                            </div>
                            <div class="clearfix"></div>
                        </ItemTemplate>
                    </asp:FormView>

                    <asp:ObjectDataSource ID="objSourceChiTiet" runat="server" SelectMethod="LaySanPhamTheoMa" TypeName="LuxuryWatches.Data.SanPhamBLL">
                        <SelectParameters>
                            <asp:RouteParameter Name="masp" RouteKey="masp" Type="Int32" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
				</div>
				<div>
                    <div class="fb-comments" data-href="<%: Request.Url.ToString() %>" data-numposts="5"></div>
                </div>
                                   
                                    <div>&nbsp;</div>
                                    <h3>SẢN PHẨM LIÊN QUAN</h3>
                                    <div class="latestproducts">
                                        <div class="product-one">
                                            <asp:Repeater ID="Repeater1" ItemType="LuxuryWatches.Data.sanPham" SelectMethod="LaySanPhamLienQuan" runat="server">
                                                <ItemTemplate>
                                                    <div class="col-md-4 product-left p-left"> 
                                                <div class="product-main simpleCart_shelfItem">
                                                    <a href="<%# GetRouteUrl("chitietsp",new { masp = Eval("maSP"), bidanh = Eval("biDanh") }) %>" class="mask"><img class="img-responsive zoom-img" src='/photos/<%# Eval("hinhDaiDien") %>' alt="" /></a>
                                                    <div class="product-bottom">
                                                        <h3><%# Eval("tenSP") %></h3>
                                                        <p>Xem ngay</p>
                                                        <h4><a class="item_add" href="<%# GetRouteUrl("chitietsp",new { masp = Eval("maSP"), bidanh = Eval("biDanh") }) %>"><i></i></a> <span class=" item_price"><%# Eval("giaBan","{0:#,##0}").Replace(',','.') %> đ</span></h4>
                                                    </div>
                                                    <div class="srch">
                                                        <span>-<%# Eval("daGiamGia") %>%</span>
                                                    </div>
                                                </div>
                                            </div>
                                                </ItemTemplate>
                                            </asp:Repeater>
                 
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    
			    </div>
				<div class="col-md-3 single-right">
					<div class="w_sidebar">
                        <uc1:LocTheoLoaiSP runat="server" ID="LocTheoLoaiSP" />
                        <uc1:LocTheoHSX runat="server" ID="LocTheoHSX" />
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

					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--end-single-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Scripts_Content" runat="server">
</asp:Content>
