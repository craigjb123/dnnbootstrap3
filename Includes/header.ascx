<%@ Control language="c#" AutoEventWireup="false" Explicit="True" %>

<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<!-- DNN Client Resource Management API - Docs at: http://www.dnnsoftware.com/wiki/client-resource-management-api  -->

<%@ Register TagPrefix="fortyfingers" TagName="STYLEHELPER" Src="~/DesktopModules/40Fingers/SkinObjects/StyleHelper/StyleHelper.ascx" %> 
<!-- 40 Fingers Style Helper - Docs atL http://www.40fingers.net/WeblogsNews/Weblogs/tabid/58/ID/23/language/en-US/Style-Helper-Skin-Object-Documentation.aspx -->

<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<!-- The DNN Core Search Module - Consider Replacing with SearchBoost -->

<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<!-- Identifies the Logged In User -->

<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<!-- Displays the Log set in Admin > Site Settings > Appearance -->

<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>

<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<!-- The Default Menu Control - Docs at http://www.dnnsoftware.com/wiki/ddrmenu-user-guide -->

<fortyfingers:STYLEHELPER ID="STYLEHELPER1" AddBodyClass="True" runat="server" />
<!-- The style helper adds helpful classes -->

<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<!-- The Default Breadcrumb Control - Docs At :http://www.10poundgorilla.com/DNN/Skinning-Tool#Breadcrumb --> 

<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>


<!-- Get the Skin Path -->
<!-- <img src="<%# SkinPath %>images/logo.png" /> -->

<script runat="server">
  public string SkinPath { get; set; }
</script>

<!--  Mobile viewport scale | Disable user zooming as the layout is optimised -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Custom CSS files -->
<dnn:DnnCssInclude ID="DnnCssInclude1" runat="server" FilePath="css/custom.css" PathNameAlias="SkinPath" />
<link rel="stylesheet" href="<%#SkinPath %>css/print.css" type="text/css" media="print" />
 
<!-- Paul Irish browser detection for easy IE fixes -->
<!--[if lt IE 7 ]> <div class="ie6"> <![endif]--> 
<!--[if IE 7 ]>    <div class="ie7"> <![endif]--> 
<!--[if IE 8 ]>    <div class="ie8"> <![endif]--> 
<!--[if IE 9 ]>    <div class="ie9"> <![endif]-->
<!--[if gt IE 9]>  <div> <![endif]-->
<!--[if !IE]><!--> <div id="browser-detection"> <!--<![endif]-->
 
<!-- Links to FavIcons -->
<link rel="apple-touch-icon" sizes="57x57" href="/favicon/apple-touch-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="/favicon/apple-touch-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="/favicon/apple-touch-icon-72x72.png">
<link rel="icon" type="image/png" href="/favicon/favicon-32x32.png" sizes="32x32">
<link rel="icon" type="image/png" href="/favicon/favicon-16x16.png" sizes="16x16">
<link rel="manifest" href="/favicon/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="theme-color" content="#ffffff">

<dnn:DnnJsInclude ID="bootstrapJS" runat="server" FilePath="bootstrap/js/bootstrap.min.js" PathNameAlias="SkinPath" AddTag="false" />
<dnn:DnnJsInclude ID="customJS" runat="server" FilePath="js/scripts.js" PathNameAlias="SkinPath" AddTag="false" />

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

<nav class="navbar navbar-default navbar-static-top navbar-desktop">
      <div class="container">
        <div class="navbar-header">
          <a class="navbar-brand" href="#">Clarity Ventures DNN Skin</a>
        </div>
        <div id="topnav" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
             <dnn:MENU ID="MENU3" MenuStyle="bootstrapNav" runat="server" IncludeNodes="My Profile"></dnn:MENU>
            <ul class="nav navbar-nav">
                <li id="header-login">
                 <dnn:LOGIN ID="dnnLogin" CssClass="LoginLink" runat="server" LegacyMode="false" />
                </li>
            </ul>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

<div id="siteWrapper">
   <div id="header">
       <div class="container">
          <nav class="navbar navbar-default navbar-mobile">
            <div class="container-fluid">
              <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </button>
              </div>
              <div id="navbar" class="navbar-collapse collapse">
                  <dnn:MENU ID="MENU2" MenuStyle="bootstrapMobileNav" runat="server" ></dnn:MENU>
              </div><!--/.nav-collapse -->
            </div><!--/.container-fluid -->
          </nav>

          <div class="row" id="site-logo">
            <div class="brand col-md-6">
                <dnn:LOGO runat="server" id="dnnLOGO" />
            </div>
            <div id="search" class="col-md-6">
                <dnn:SEARCH ID="dnnSearch" runat="server" ShowSite="false" ShowWeb="false" EnableTheming="true" Submit="Search" CssClass="SearchButton" />
            </div>
          </div>
            <nav class="navbar navbar-default navbar-desktop">
            <div class="container-fluid">
                <div id="navbar">
                    <dnn:MENU ID="MENU1" ExcludeNodes="My Profile" MenuStyle="bootstrapNav" runat="server"></dnn:MENU>
                </div><!--/.nav-collapse -->
            </div><!--/.container-fluid -->
            </nav>
        </div>
    </div>
<div id="contentWrapper">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
    	        <ol id="breadcrumb" class="breadcrumb">
                    <li><a href="/">Home</a> / </li>
                    <dnn:BREADCRUMB ID="dnnBreadcrumb" runat="server" CssClass="breadcrumbLink" RootLevel="0" Separator=" / " HideWithNoBreadCrumb="false" />
    	        </ol>
            </div>
        </div>

