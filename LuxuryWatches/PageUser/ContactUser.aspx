<%@ Page Title="Liên Hệ" Language="C#" MasterPageFile="~/PageUser/Site1.Master" AutoEventWireup="true" CodeBehind="ContactUser.aspx.cs" Inherits="LuxuryWatches.PageUser.ContactUser" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <!--start-breadcrumbs-->
    <div class="breadcrumbs">
        <div class="container">
            <div class="breadcrumbs-main">
                <ol class="breadcrumb">
                    <li><a href="../Userlg.aspx">Trang chủ</a></li>
                    <li class="active">Liên Hệ</li>
                </ol>
            </div>
        </div>
    </div>
    <!--end-breadcrumbs-->

    <div class="contact">
        <div class="container">
            <div class="contact-top heading">
                <h2>LIÊN HỆ</h2>
            </div>
            <div class="contact-text">
                <div class="col-md-3 contact-left">
                    <div class="address">
                        <h5>Địa chỉ</h5>
                        <p>
                            Công ty TNHH Dịch Vụ CNTT Giải Pháp Việt, 
                        <span>324/10 Hai Bà Trưng, Quận 1, TPHCM</span>
                            .
                        </p>
                    </div>
                    <div class="address">
                        <h5>Thông tin</h5>
                        <p>
                            Tel:0838911361, 
                        <span>Fax:190-4509-494</span>
                            Email: <a href="#">luxuryshop@gmail.com</a>
                        </p>
                    </div>
                </div>
                <div class="col-md-9 contact-right">

                        <input type="text" runat="server" id="txtHoten" name="hoten" placeholder="Họ tên" validationgroup="lienhe"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHoten" Display="Dynamic" ErrorMessage="Bạn chưa nhập họ tên" ForeColor="Red" ValidationGroup="lienhe"></asp:RequiredFieldValidator>
&nbsp;<input type="text" runat="server" id="txtSDT" placeholder="Số điện thoại" name="sdt"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSDT" Display="Dynamic" ErrorMessage="Bạn chưa nhập sđt" ForeColor="Red" ValidationGroup="lienhe"></asp:RequiredFieldValidator>
&nbsp;<input type="text" runat="server" id="txtEmail" placeholder="Email" name="email"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Bạn chưa nhập email" ForeColor="Red" ValidationGroup="lienhe"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email không đúng định dạng" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="lienhe"></asp:RegularExpressionValidator>
&nbsp;<textarea runat="server" id="txtNoiDung" placeholder="Nội dung" name="noidung"></textarea><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNoiDung" Display="Dynamic" ErrorMessage="Bạn chưa nhập nội dung" ForeColor="Red" ValidationGroup="lienhe"></asp:RequiredFieldValidator>
&nbsp;<div class="submit-btn">
                            <asp:Button ID="btnGui" ValidationGroup="ContactUser" runat="server" Text="Gửi" OnClick="btnGui_Click" />
     
                        </div>

                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!--contact-end-->
    <!--map-start-->
    <div class="map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.1196773645574!2d106.71277631422664!3d10.802144992304063!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528a459cb43ab%3A0x6c3d29d370b52a7e!2zxJDhuqFpIGjhu41jIEPDtG5nIG5naOG7hyBUUC5IQ00gLSBIVVRFQ0g!5e0!3m2!1svi!2s!4v1474872910501" frameborder="0" style="border: 0" allowfullscreen></iframe>
    </div>
</asp:Content>

