<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TakeTest.ascx.cs" Inherits="TakeTest" %>

<link rel="stylesheet" type="text/css" href="FJAStyles.css" />

<div>
    <asp:Panel ID="Panel1" runat="server">
        <table>
            <tr>
                <td>
                    <div>
                        <table >
                            <tr>
                                <td rowspan="3">
                                    <img alt="" src="images/Take%20a%20test%20image%201.jpg" /></td>
                                <td width="350">
                                    <div align="center">
                                        <asp:Panel ID="Panel2" runat="server" HorizontalAlign="Left" Width="325px">
                                            <table bgcolor="#4F81BD" width="100%">
                                                <tr>
                                                    <td style=" width: 306px; height: 25px; text-align: center;" valign="middle">
                                                        <img height="9" src="images/spacer.gif" width="1"><img align="absmiddle" 
                                                            height="1" src="images/spacer.gif" width="19"><font class="titlesub3">Registered 
                                                        Users Login Here </font></img></img></td>
                                                </tr>
                                                <tr>
                                                    <td valign="top">
                                                        <div align="right">
                                                            <table style="height: 100px;">
                                                                <tr>
                                                                    <td style="color: #FFFFFF; font-weight: bold;">
                                                                        User&nbsp; ID</td>
                                                                    <td>
                                                                        <input ID="txtUsername" runat="server" style="width: 200px" tabindex="1" 
                                                                            type="text" /></td>
                                                                    <td width="20">
                                                                        &nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="color: #FFFFFF; font-weight: bold;">
                                                                        Password</td>
                                                                    <td>
                                                                        <input ID="txtPassword" runat="server" style="width: 200px" tabindex="2" 
                                                                            type="password" /></td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                    <td>
                                                                        <div align="center">
                                                                            <asp:Button ID="btnSubmit" runat="server" BackColor="White" Font-Bold="True" 
                                                                                ForeColor="Black" onclick="btnSubmit_Click" Text="Submit" />
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="2" style="text-align: right">
                                                                        <asp:Label ID="lblMessage" runat="server" ForeColor="Maroon" TabIndex="10"></asp:Label>
                                                                    </td>
                                                                    <td style="text-align: right">
                                                                        </td>
                                                                </tr>
                                                            </table>
                                                            <%--<a href="/">--%> <%--</a>--%></div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div align="center">
                                        <img alt="" src="images/Take%20a%20test%20image%202.png" /></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div align="center">
                                        <asp:ImageButton ID="imgbtnContactUs" runat="server" 
                                            ImageUrl="~/images/Take a test image 4.png" 
                                            onclick="imgbtnContactUs_Click" />
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>
                        <table>
                            <tr>
                                <td valign="top">
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <div align="center" style="width: 200px">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <img alt="" src="images/Take%20a%20test%20image%203.png" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:ImageButton ID="imgbtnHRSelection" runat="server" 
                                                                ImageUrl="~/images/Test Page Menu button 1.png" 
                                                                onclick="imgbtnHRSelection_Click" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td height="50">
                                                            <asp:ImageButton ID="imgbtnManagerialLeadership" runat="server" 
                                                                ImageUrl="~/images/Test Page Menu button 2.png" 
                                                                onclick="imgbtnManagerialLeadership_Click" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:ImageButton ID="imgbtnSoftSkills" runat="server" 
                                                                ImageUrl="~/images/Test Page Menu button 3.png" 
                                                                onclick="imgbtnSoftSkills_Click" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td height="50">
                                                            <asp:ImageButton ID="imgbtnCareerProfiling" runat="server" 
                                                                ImageUrl="~/images/Test Page Menu button 4.png" 
                                                                onclick="imgbtnCareerProfiling_Click" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:ImageButton ID="imgbtnGeneralAptitude" runat="server" 
                                                                ImageUrl="~/images/Test Page Menu button 5.png" 
                                                                onclick="imgbtnGeneralAptitude_Click" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td height="50">
                                                            <asp:ImageButton ID="imgbtnCreativeArt" runat="server" 
                                                                ImageUrl="~/images/Test Page Menu button 6.png" 
                                                                onclick="imgbtnCreativeArt_Click" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:ImageButton ID="imgbtnSocialSkills" runat="server" 
                                                                ImageUrl="~/images/Test Page Menu button 7.png" 
                                                                onclick="imgbtnSocialSkills_Click" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                                <td valign="top" width="5" style="text-align: left; padding-left: 10px;">
                                    &nbsp;</td>
                                <td style="text-align: left" valign="top" width="550">
                                    <div align="left">
                                        <asp:Panel ID="pnlTestList" runat="server" HorizontalAlign="Left">
                                        <asp:Panel ID="PnlDefaultText" runat="server" HorizontalAlign="Left">
                                            <table>
                                                <tr>
                                                    <td class="staticmainheader_all">
                                                        Realize your real potential</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Welcome to Career Judge’s online assessment engine
                                                        <asp:LinkButton ID="lbtnTalentSCOUT" runat="server" Font-Names="Arial" 
                                                            Font-Size="9pt" Font-Underline="False" ForeColor="Blue" 
                                                            onclick="lbtnTalentSCOUT_Click">TalentSCOUT™</asp:LinkButton>
                                                        . You can take tests of your choice from a long list of test batteries and 
                                                        assessments available through this engine. You can select a test of your choice 
                                                        or contact us for more support in selecting the right test that suits your 
                                                        objective.
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Following are the major test categories available on TalentSCOUT:</td>
                                                </tr>
                                                <tr>
                                                    <td class="staticmainheader_all_sub1">
                                                        HR Selection Tests</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        These are meant for HR selection and recruitment purposes, essentially to screen 
                                                        candidates on the basis of their performance scores on job-specific 
                                                        competencies. You can contact Career Judge, if you want to know the terms and 
                                                        conditions for using these tests.
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="staticmainheader_all_sub1">
                                                        Managerial Leadership Tests</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        These tests assess your leadership potential, your ability to manage people and 
                                                        processes. They help you identify areas of your strength and development. 
                                                        Interpretative reports tell you what your individual scores on different 
                                                        assessment variables mean and give recommendation wherever applicable.</td>
                                                </tr>
                                                <tr>
                                                    <td class="staticmainheader_all_sub1">
                                                        Soft-Skills Tests</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        They assess your personal skills in managing and mastering situations in the 
                                                        social and work situations. Skills such as assertiveness, communication, 
                                                        negotiation, conflict resolution etc. are some examples which typify this 
                                                        category. Career Judge provides you a set of assessments to identify your 
                                                        soft-skill strengths and weaknesses.</td>
                                                </tr>
                                                <tr>
                                                    <td class="staticmainheader_all_sub1">
                                                        Career Profiling Tests</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        They include tests which provide a career profile report. They allow you to 
                                                        judge which careers are best fit for you based on the analysis of your career 
                                                        interests, abilities and aptitudes, skills and personality disposition. 
                                                        Normally, these tests assess you on these variables and provide your detailed 
                                                        interpretative reports. You can use this information to identify which careers 
                                                        are more suitable for you than others and to make wise decisions on career 
                                                        selection.</td>
                                                </tr>
                                                <tr>
                                                    <td class="staticmainheader_all_sub1">
                                                        General Aptitude Tests</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        If you are interested in knowing your basic aptitudes, you can select 
                                                        appropriate tests available with Career Judge. Such aptitudes include 
                                                        quantitative aptitude, mechanical aptitude, analytical aptitude and several 
                                                        others. Many of them are essential for successful performance on most jobs.</td>
                                                </tr>
                                                <tr>
                                                    <td class="staticmainheader_all_sub1">
                                                        Creative Art Tests</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Different art works require different abilities in varying proportions. We have 
                                                        specific tests for different art fields. You can evaluate how strong your 
                                                        artistic abilities are for different arts, such as fine arts, plastic arts, 
                                                        performance arts, photography, etc.</td>
                                                </tr>
                                                <tr>
                                                    <td class="staticmainheader_all_sub1">
                                                        Social Skills Tests</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Social life requires several skills to be effective in our relationships and 
                                                        social interactions. You can learn about yourself, where you are standing on 
                                                        different social skills.
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div align="center" class="linksmall">
                                                            Select any of the test categories from the left-side menu bar for learning more 
                                                            about tests available with us.</div>
                                                    </td>
                                                </tr>
                                            </table>
                                            </asp:Panel>
                                        </asp:Panel>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <div align="center">
                                        <asp:LinkButton ID="lbtnBack" runat="server" Font-Size="10pt" 
                                            Font-Underline="False" onclick="lbtnBack_Click" Visible="False">&lt;&lt; Back</asp:LinkButton>
                                        <asp:LinkButton ID="lbtnBack_1" runat="server" Font-Size="10pt" 
                                            Font-Underline="False" onclick="lbtnBack_1_Click" Visible="False">&lt;&lt; Back</asp:LinkButton>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</div>


<%--<table cellpadding="0" cellspacing="0" style="width: 525px;"><tr><td style=" vertical-align: top; width: 175px;height: 170px;font-weight: bold; color: #FF0066;font-size: 13px;">
                    <div style="background-position: left 20px; width: 175px; height: 170px; vertical-align: top; text-align: right; font-weight: bold;background-image:url('images/TestImages/Take a test image 1.jpg'); background-repeat: no-repeat;"> 
                    <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
                    <tr><td>  title1 </td> </tr><tr> <td> title2 </td></tr> <tr><td> title3 </td>  </tr> <tr><td></td>  </tr></table></div> </td>
                    <td style="vertical-align: top; padding-left: 10px;padding-right: 10px; text-align:left"> description1 </td> </tr> <tr><td colspan="2" style="vertical-align: top; padding-left: 10px; padding-right: 10px"> description2 </td> </tr>
                    </table>--%>
                    