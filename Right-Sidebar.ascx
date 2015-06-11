<%@ Control language="c#" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="HEADER" Src="includes/header.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Footer" Src="includes/footer.ascx" %>

<dnn:HEADER ID="uxHeader" runat="server" SkinPath="<%# SkinPath %>"  />
            <div class="row">
                <div class="col-md-12">
                    <h1><%= Server.HtmlEncode(PortalSettings.ActiveTab.Title) %></h1>
                </div>
            </div>
            <div class="row">
                <div class="col-md-7">
    		        <div id="ContentPane" class="contentPane" runat="server"></div>
                </div>
                <div class="col-md-4 col-md-offset-1">
                    <div id="rightPane" class="twoColRightPane" runat="server"></div>
                </div>
            </div>
       </div>
       <div id="footer">
            <footer class="footer">
                <div class="container">

<dnn:FOOTER ID="uxFooter" runat="server" SkinPath="<%# SkinPath %>"  />

</div>