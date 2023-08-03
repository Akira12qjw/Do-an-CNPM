<%@ Page Title="" Language="C#" MasterPageFile="~/PageUser/Site1.Master" AutoEventWireup="true" CodeBehind="PostContent.aspx.cs" Inherits="LuxuryWatches.PageUser.PostContent" %>

<%@ Register Src="~/PageUser/User_Control/LocTheoHSX.ascx" TagPrefix="uc1" TagName="LocTheoHSX" %>
<%@ Register Src="~/PageUser/User_Control/LocTheoLoaiSP.ascx" TagPrefix="uc1" TagName="LocTheoLoaiSP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Styles_Content" runat="server">
     <style>
        article img{
            width:100%;
            height:auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
          <!--start-breadcrumbs-->
<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="../Userlg.aspx">Trang chủ</a></li>
                    <li><a href="<%: GetRouteUrl("bloguser",null) %>">Blog</a></li>
					<li class="active"><asp:Literal ID="LiteralBreadcrumbActive" runat="server"></asp:Literal></li>
				</ol>
			</div>
		</div>
</div>
	<!--end-breadcrumbs-->
      <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.11&appId=143329276428698';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
    	<!--prdt-starts-->
<div class="prdt"> 
		<div class="container">
			<div class="prdt-top">
				<div class="col-md-9 prdt-left">
                    <asp:FormView ID="frmViewPost" RenderOuterTable="false" runat="server" DataSourceID="objSourceBaiViet">
                        <ItemTemplate>
                            <h1><%# Eval("tenBV") %></h1>
                            <h5><%# Eval("ndTomTat") %></h5>
                            <p>
                               <i class="glyphicon glyphicon-user"></i> Tác giả: <%# Eval("tkThanhVien") %> | <i class="glyphicon glyphicon-eye-open"></i> Lượt xem: <%# Eval("soLanDoc") %> lượt |  <i class="glyphicon glyphicon-time"></i> Ngày đăng: <%# Eval("ngayDang","{0:dd/MM/yyyy}") %>
                            </p>
                            <article class="clearfix">
                                <%# Eval("noiDungBV") %>
                            </article>
                            <div class="clearfix">
                                                    <div class="fb-comments" data-href="<%: Request.Url.ToString() %>" data-numposts="5"></div>
                            </div>
                        </ItemTemplate>
                    </asp:FormView>
                    <asp:ObjectDataSource ID="objSourceBaiViet" runat="server" SelectMethod="LayTheoBiDanh" TypeName="LuxuryWatches.Data.BaiVietBLL">
                        <SelectParameters>
                            <asp:RouteParameter Name="bidanh" RouteKey="bidanh" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>

				</div>	
				<div class="col-md-3 single-right">
					<div class="w_sidebar">
                        <uc1:LocTheoLoaiSP runat="server" ID="LocTheoLoaiSP" />
                        <uc1:LocTheoHSX runat="server" id="LocTheoHSX" />
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
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts_Content" runat="server">

</asp:Content>
