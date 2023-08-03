<%@ Page Title="" Language="C#" MasterPageFile="~/PageUser/Site1.Master" AutoEventWireup="true" CodeBehind="DefaultUser.aspx.cs" Inherits="LuxuryWatches.PageUser.DefaultUser" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="tintucContainer container">
        <div class="row">
            <h2>Dach sách bài viết</h2>     
            <div class="col-md-12" style="padding-left:0px">
                <asp:ListView ID="lvBaiVietMoi" runat="server" DataSourceID="objSourceBaiViet">
  
                    <EmptyDataTemplate>
                       Chưa có bài viết nào trong blog.
                    </EmptyDataTemplate>
          
                    <ItemTemplate>
                        <li>
                            <img width="250" height="auto" src="/photos/blog/<%# Eval("hinhDD") %>" />
                            <h3><a style="color:inherit" href="<%# GetRouteUrl("PostContentUser",new { bidanh = Eval("biDanh") }) %>"><%# Eval("tenBV") %></a></h3>
                            <p><%# Eval("ndTomTat") %></p>
                        </li>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul id="itemPlaceholderContainer" runat="server" style="">
                            <li runat="server" id="itemPlaceholder" />
                        </ul>
                        <div class="text-center clearfix">
                            <asp:DataPager ID="DataPager1" PageSize="5" QueryStringField="page" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonCssClass="btn btn-default"  ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField NumericButtonCssClass="btn btn-default" ButtonType="Button" CurrentPageLabelCssClass="btn btn-primary"  />
                                    <asp:NextPreviousPagerField ButtonCssClass="btn btn-default" ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </div>
                    </LayoutTemplate>
                   

                </asp:ListView>
               
                <asp:ObjectDataSource ID="objSourceBaiViet" runat="server" SelectMethod="LayDanhSach" TypeName="LuxuryWatches.Data.BaiVietBLL"></asp:ObjectDataSource>
            </div>
         
        </div>
       
    </div>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Scripts_Content" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Styles_Content" runat="server">
    <style>
    
.tintucContainer > div {
  margin: 20px;
}

.tintucContainer ul {
  list-style-type: none;
}

.tintucContainer li h3 {
  font: bold 20px/1.5 Helvetica, Verdana, sans-serif;
  text-transform: capitalize;
}

.tintucContainer li img {
  float: left;
  margin: 0 15px 0 0;
}

.tintucContainer li p {
  font-size:16px;
  font-family: 'Times New Roman', Times, serif;
}

.tintucContainer li {
  padding: 10px 0px;
  overflow: auto;
}

.tintucContainer li:hover {
  background: #eee;
  cursor: pointer;
}
    </style>
</asp:Content>

