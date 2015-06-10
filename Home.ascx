<%@ Control language="c#" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>

<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>

<%@ Register TagPrefix="dnn" TagName="HEADER" Src="includes/header.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Footer" Src="includes/footer.ascx" %>

<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>

<dnn:HEADER ID="uxHeader" runat="server" SkinPath="<%# SkinPath %>"  />
 
    <div id="contentWrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
    		        <div id="ContentPane" class="contentPane" runat="server"></div>
                </div>
            </div>
       </div>
        <div id="footer">
            <footer class="footer">
                <div class="container">
                <dnn:FOOTER ID="uxFooter" runat="server" SkinPath="<%# SkinPath %>"  />