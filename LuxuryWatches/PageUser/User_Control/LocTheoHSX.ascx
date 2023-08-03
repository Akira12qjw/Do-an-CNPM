<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LocTheoHSX.ascx.cs" Inherits="LuxuryWatches.PageUser.User_Control.LocTheoHSX" %>
<section class="sky-form">
    <h4>Hãng Sản Xuất</h4>
    <div class="row1 row2 scroll-pane">
        <div class="col col-4">
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource1">
                <ItemTemplate>
                                <label class="checkbox" style="color: #555555">
                                    <asp:HyperLink ForeColor="#555555" Text='<%# Eval("tenHangSX") %>'  runat="server" NavigateUrl='<%# GetRouteUrl("theohangsxuser",new {mahangsx = Eval("maHangSX") }) %>'>

                                    </asp:HyperLink>

                                </label>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="LayDanhSach" TypeName="LuxuryWatches.Data.HSXBLL"></asp:ObjectDataSource>
</section>
