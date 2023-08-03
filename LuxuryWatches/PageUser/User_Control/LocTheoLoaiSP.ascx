<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LocTheoLoaiSP.ascx.cs" Inherits="LuxuryWatches.PageUser.User_Control.LoaiSP" %>
<section class="sky-form">
    <h4>Phân loại</h4>
    <div class="row1 scroll-pane">
        <div class="col col-4">
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource1">
                <ItemTemplate >
                                <label class="checkbox" style="color: #555555">
                                    <asp:HyperLink ForeColor="#555555" runat="server" NavigateUrl='<%# GetRouteUrl("theoloaisp",new { bidanh = Eval("biDanh") }) %>' Text='<%# Eval("tenLoai") %>'>

                                    </asp:HyperLink>

                                </label>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</section>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="LayDanhSach" TypeName="LuxuryWatches.Data.loaiSPBLL"></asp:ObjectDataSource>
