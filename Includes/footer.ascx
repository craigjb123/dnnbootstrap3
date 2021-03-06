<%@ Control language="c#" AutoEventWireup="false" Explicit="True" %>

<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="LINKTOMOBILE" Src="~/Admin/Skins/LinkToMobileSite.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="DNNLINK" Src="~/Admin/Skins/DnnLink.ascx" %>

<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<!-- Adds a Log in/Log out Contorl -->

                        <div id="copyright" class="row">

				            <div class="col-md-6" id="links-entry">
					            <dnn:LINKTOMOBILE ID="dnnLinkToMobile" runat="server" />
					            <dnn:TERMS ID="dnnTerms" runat="server" /> |
					            <dnn:PRIVACY ID="dnnPrivacy" runat="server" /> |
                                <dnn:LOGIN ID="dnnLogin" CssClass="LoginLink" runat="server" LegacyMode="false" />
				            </div>
                          <div class="col-md-6" id="copyright-entry">
				            <dnn:COPYRIGHT ID="dnnCopyright" runat="server" /> | Website Design by <a href="http://www.clarity-ventures.com" target="_blank">Clarity Ventures.</a>
                          </div>
                        </div>
                    </div>
                </div>
	        </div>
        </div>
    </div>
</footer>

<dnn:DnnJsInclude ID="DnnJsInclude" runat="server" FilePath="js/custom.js" PathNameAlias="SkinPath" AddTag="false" />
<dnn:DnnJsInclude ID="dttg" runat="server" FilePath="js/doubletaptogo.min.js" PathNameAlias="SkinPath" AddTag="false" />

