<%@ Page Title="Giỏ hàng" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LuxuryWatches.Pages.ShoppingCart.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--start-breadcrumbs-->
    <div class="breadcrumbs">
        <div class="container">
            <div class="breadcrumbs-main">
                <ol class="breadcrumb">
                    <li><a href="/">Trang chủ</a></li>
                    <li class="active">Giỏ hàng</li>
                </ol>
            </div>
        </div>
    </div>
    <!--end-breadcrumbs-->
    <!--start-ckeckout-->
    <div class="ckeckout">
        <div class="container">
            <% if (Session["shoppingcart"] == null || (Session["shoppingcart"] as List<LuxuryWatches.Data.CartItem>).Count == 0)
                {%>
            <h4 class="text-center">Giỏ hàng rỗng.</h4>
            <% }
                else
                { %>
            <div class="ckeck-top heading">
                <h2>Giỏ hàng của bạn</h2>
            </div>
            <div class="ckeckout-top">
                <div class="cart-items">
                    <script>$(document).ready(function (c) {
    $('.cart-header .close1').on('click', function (c) {
        var element = $(this);
        var maSP = $(this).parent().children("input[name=maSP]").val();
        var mauSac = $(this).parent().children("input[name=mauSac]").val();
        var kichCo = $(this).parent().children("input[name=kichCo]").val();
        $.get("/xoa-khoi-gio", { maSP: maSP, mauSac: mauSac, kichCo: kichCo }, function (result) {
            console.log(result);
            if (result.status == 1) {
                element.parent().fadeOut('slow');
                $("#tongsoluong").text(result.tongSoLuong);
                $("#tongthanhtien").text(result.tongThanhTien);
            }
            else {
                console.log("Lỗi ajax!");
            }
        });
    });
});
                    </script>

                    <div class="in-check">
                        <ul class="unit">
                            <li><span>Hình ảnh</span></li>
                            <li><span>Tên sản phẩm</span></li>
                            <li><span>Màu sắc</span></li>
                            <li><span>Kích cỡ</span></li>
                            <li><span>Số lượng</span></li>
                            <li><span>Đơn giá</span></li>
                            <li><span>Thành tiền</span></li>
                            <li></li>
                           
                        </ul>
                             <div class="clearfix"></div>
                        <asp:Repeater ID="repeaterGioHang" runat="server" SelectMethod="GetShoppingCart" ItemType="LuxuryWatches.Data.CartItem">
                            <ItemTemplate>
                                <ul class="cart-header">
                                    <input type="hidden" name="maSP" value="<%# Eval("maSP") %>" />
                                    <input type="hidden" name="mauSac" value="<%# Eval("mauSac") %>" />
                                    <input type="hidden" name="kichCo" value="<%# Eval("kichCo") %>" />
                                    <div id="" class="close1" onclick="return confirm('Xác nhận xóa sản phẩm này?')"></div>
                                    <li>
                                        <img src="/photos/<%# Eval("hinhDaiDien") %>" width="100" height="80" /></li>
                                    <li class="ring-in"><a target="_blank" href="<%# GetRouteUrl("chitietsp",new { bidanh = Eval("biDanh"), maSP = Eval("maSP") }) %>"><%# Eval("tenSP") %></a>
                                    </li>
                                    <li class="text-center"><%# Eval("mauSac") %></li>
                                    <li class="text-center"><%# Eval("kichCo") %></li>
                                    <li class="text-center"><%# Eval("soLuong") %></li>
                                    <li><span class="cost"><%# Eval("giaBan","{0:#,##0}").Replace(',','.') %> đ</span></li>
                                    <li><span class="cost"><%# Eval("thanhTien","{0:#,##0}").Replace(',','.') %> đ</span></li>
                                    <div class="clearfix"></div>
                                </ul>
                            </ItemTemplate>
                        </asp:Repeater>
                        <ul class="cart-header">

                            <li style="width: 25%">
                                <span class="cost">Tổng số lượng:
                                    <label id="tongsoluong"><%: (Session["shoppingcart"] as List<LuxuryWatches.Data.CartItem>).Sum(m=>m.soLuong) %></label></span> </li>

                            <li style="width: 25%"><span class="cost">Tổng thành tiền:
                                <label id="tongthanhtien"><%: (Session["shoppingcart"] as List<LuxuryWatches.Data.CartItem>).Sum(m=>m.thanhTien).ToString("#,##0").Replace(',','.') %></label>
                                đ</span> </li>
                            <li></li>
                            <li></li>
                            <li></li>
                            
                        </ul>
                           <div class="clearfix"></div>
                    </div>

                </div>
                <div class="clearfix"></div>
                <div class="col-md-12 text-center">
                    <button type="button" data-toggle="modal" data-target="#myModal" class="btn btn-primary btn-lg"><i class="glyphicon glyphicon-check"></i> Đặt hàng</button>
                    <!-- Modal -->
                    <div id="myModal" class="modal fade" role="dialog" >
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header bg-primary">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Form đặt hàng</h4>
                                </div>
                                <div class="modal-body">
                                    <div class="form-horizontal">
                                        <div class="form-group">
                                            <label class="control-label col-md-3">Tên của bạn</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" id="txtHoten" runat="server" />
                                                <asp:RequiredFieldValidator Display="Dynamic" CssClass="text-danger" ValidationGroup="dathang" ControlToValidate="txtHoten" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bạn chưa nhập tên"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3">Số điện thoại</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" id="txtSoDT" runat="server" />
                                                <asp:RequiredFieldValidator Display="Dynamic" CssClass="text-danger" ValidationGroup="dathang" ControlToValidate="txtSoDT" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Bạn chưa nhập số điện thoại"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3">Địa chỉ</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" id="txtDiachi" runat="server" />
                                                <asp:RequiredFieldValidator Display="Dynamic" CssClass="text-danger" ValidationGroup="dathang" ControlToValidate="txtDiachi" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Bạn chưa nhập địa chỉ"></asp:RequiredFieldValidator>                                            
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3">Email</label>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control" id="txtEmail" runat="server" />
                                                <asp:RequiredFieldValidator Display="Dynamic" CssClass="text-danger" ValidationGroup="dathang" ControlToValidate="txtEmail" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Bạn chưa nhập email"></asp:RequiredFieldValidator>                                                                           
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" CssClass="text-danger" Display="Dynamic" ErrorMessage="Email không đúng định dạng!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="dathang"></asp:RegularExpressionValidator>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-6 col-md-offset-3">
                                                <asp:Button ID="btnXacnhan" CssClass="btn btn-danger" ValidationGroup="dathang" OnClick="btnXacnhan_Click" runat="server" Text="Xác nhận" />
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
    </div>
    <!--end-ckeckout-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Scripts_Content" runat="server">
</asp:Content>
