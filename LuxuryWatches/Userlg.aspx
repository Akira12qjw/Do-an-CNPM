<%@ Page Title="" Language="C#" MasterPageFile="~/PageUser/Site1.Master" AutoEventWireup="true" CodeBehind="Userlg.aspx.cs" Inherits="LuxuryWatches.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Styles_Content" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
  <!--bottom-header-->
	<!--banner-starts-->
	<div class="bnr" id="home">
		<div  id="top" class="callbacks_container">
			<ul class="rslides" id="slider4">
			    <li>
					<img src="/images/bnr-1.jpg" alt=""/>
				</li>
				<li>
					<img src="/images/bnr-2.jpg" alt=""/>
				</li>
				<li>
					<img src="/images/bnr-3.jpg" alt=""/>
				</li>
			</ul>
		</div>
		<div class="clearfix"> </div>
	</div>
	<!--banner-ends--> 
	<!--Slider-Starts-Here-->
    <script src="/js/responsiveslides.min.js"></script>
    <script>
        // You can also use "$(window).load(function() {"
        $(function () {
            // Slideshow 4
            $("#slider4").responsiveSlides({
                auto: true,
                pager: true,
                nav: true,
                speed: 500,
                namespace: "callbacks",
                before: function () {
                    $('.events').append("<li>before event fired.</li>");
                },
                after: function () {
                    $('.events').append("<li>after event fired.</li>");
                }
            });

        });
    </script>
	<!--End-slider-script-->
	<!--about-starts-->
	<div class="about"> 
		<div class="container">
			<div class="about-top grid-1">
				<div class="col-md-4 about-left">
					<figure class="effect-bubba">
						<img class="img-responsive" src="/images/abt-1.jpg" alt=""/>
						<figcaption>
							<h2>Thiết kế tinh xảo</h2>
							<p>Những nét thiết kế tinh xảo của những chuyên gia hàng đầu thế giới</p>	
						</figcaption>			
					</figure>
				</div>
				<div class="col-md-4 about-left">
					<figure class="effect-bubba">
						<img class="img-responsive" src="/images/abt-2.jpg" alt=""/>
						<figcaption>
							<h4>Sang trọng, lịch lãm</h4>
							<p>Chiếc đồng hồ sẽ khiến bạn trở lên lịch lãm hơn</p>	
						</figcaption>			
					</figure>
				</div>
				<div class="col-md-4 about-left">
					<figure class="effect-bubba">
						<img class="img-responsive" src="images/abt-3.jpg" alt=""/>
						<figcaption>
							<h4>Chất liệu chất lượng</h4>
							<p>Những chiếc điện thoại này không chỉ đẹp bên ngoài mà chất lượng bên trong cũng khiến bạn trầm trồ khen ngợi</p>	
						</figcaption>			
					</figure>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--about-end-->
	<!--product-starts-->
	<div class="product"> 
		<div class="container">
			<div class="product-top">        
                <h3>Sản Phẩm Mới</h3>      
                <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource1" GroupItemCount="4">
                
                    <EmptyDataTemplate>
                        <table runat="server" style="">
                            <tr>
                                <td>Chưa có sản phẩm nào.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>

                    <GroupTemplate>
                        	<div  id="itemPlaceholderContainer" runat="server"  class="product-one">
                                <div id="itemPlaceholder" runat="server">

                                </div>    

				            </div>   
                        <div class="clearfix"></div>
                     
                    </GroupTemplate>
                   
                    <ItemTemplate>
                        <div runat="server" class="col-md-3 product-left">
                            <div class="product-main simpleCart_shelfItem">
                                <a href='<%# GetRouteUrl("chitietspUser", new { bidanh = Eval("biDanh"), masp = Eval("maSP") } ) %>' class="mask">
                                    <img class="img-responsive zoom-img" src="/photos/<%# Eval("hinhDaiDien") %>" alt="" /></a>
                                <div class="product-bottom">
                                    <a href='<%# GetRouteUrl("chitietspUser", new { bidanh = Eval("biDanh"), masp = Eval("maSP") } ) %>'><h3><%# Eval("tenSP") %></h3></a>
                                    <p>Xem chi tiết</p>
                                    <h4><span class=" item_price"><%#  Eval("giaBan","{0:#,##0}").Replace(',','.') %> đ</span></h4>
                                </div>
                                <div class="srch">
                                    <span>-<%# Eval("daGiamGia") %>%</span>
                                </div>
                            </div>
                        </div>
                     
                    </ItemTemplate>
                    <LayoutTemplate>
                      <div id="groupPlaceholder"  runat="server">
                          
                      </div>
                    </LayoutTemplate>
                  

                </asp:ListView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="LaySanPhamMoiNhat" TypeName="LuxuryWatches.Data.SanPhamBLL"></asp:ObjectDataSource>
			
			</div>
		</div>
	</div>
	<!--product-end-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts_Content" runat="server">
</asp:Content>
