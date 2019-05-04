<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" EnableViewState="false" Inherits="ePi.CMS.Web.UserControls.Header" %>
<%@ Import Namespace="ePi.CMS.Engine" %>
<%@ Register Src="/UserControls/Skins/MenuMain.ascx" TagName="MainMenu" TagPrefix="uc5" %>

<header class="header">
    <div class="topbar">
        <div class="l-container">
            <time><%= GetDateTime %></time>
            <div class="info">
                <p class="link">
                    <span>Hotline : 0123456789</span>
                    <a href="/contact.html" title="Liên hệ quảng cáo">Liên hệ</a>
                    <a href="/rss/home.rss" title="Rss">RSS</a>
                    <a href="#" title="facebook fanpage">Facebook</a>
                </p>
                <div class="search">
                    <input type="text" class="search-keyword" placeholder="Từ khóa" value="">
                    <button class="search-btn"><i class="spr spr--search"></i></button>
                </div>
                <%-- <p class="social">
                    <a href="#" title="Fanpage cá»§a BÃ¡o Máº·t Tráº­n"><i class="c-spr c-spr--fb"></i></a>
                    <a href="#" title="">
                        <img src="<%=ConfigurationManager.AppSettings["StaticHost"] %>/webthemes/img/fb-mini.png" height="20" width="20" alt=""></a>
                    <a href="#" title="">
                        <img src="<%=ConfigurationManager.AppSettings["StaticHost"] %>/webthemes/img/gl-mini.png" height="20" width="20" alt=""></a>
                    <a href="#" title="">
                        <img src="<%=ConfigurationManager.AppSettings["StaticHost"] %>/webthemes/img/tw-mini.png" height="20" width="20" alt=""></a>
                </p>--%>
            </div>
        </div>
    </div>
    <div class="l-container">
        <%= Request.PhysicalPath.ToLower().IndexOf("default.aspx") >=0 ? "<h1>" : "<h2>" %>
        <a href="/" class="logo" title="Tạp chí mặt trận Online"></a>
        <%= Request.PhysicalPath.ToLower().IndexOf("default.aspx") >=0 ? "</h1>" : "</h2>" %>
        <div class="fyi">
            <img src="<%=ConfigurationManager.AppSettings["StaticHost"] %>/webthemes/fig-image/ads/ads-728x90.jpg">
        </div>
    </div>
</header>
<uc5:MainMenu ID="MainMenu1" runat="server" />
