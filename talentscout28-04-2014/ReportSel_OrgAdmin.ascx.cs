﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class ReportSel_OrgAdmin : System.Web.UI.UserControl
{
    AssesmentDataClassesDataContext dataClasses = new AssesmentDataClassesDataContext();
    string reportControl;
    int groupRptAccess = 0, individualRptAccess = 0;

    string reporttype = "", scoringType = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        ddlUserGroup.DataBind();

        int groupindex = 0;
        if (Session["groupIndex_report"] != null)
            groupindex = int.Parse(Session["groupIndex_report"].ToString());
        if (ddlUserGroup.Items.Count > 0)
            ddlUserGroup.SelectedIndex = groupindex;

        FillTestList();
        
    }
    protected void ddlTestList_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlTestList.SelectedIndex > 0)
        {
            Session["testIndex_report"] = ddlTestList.SelectedIndex.ToString();
            FilluserList();
        }
        else Session["testIndex_report"] = null;
    }
    protected void ddlUserList_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    private string GetOrganization()
    {
        string organizationname = "";
        int orgid = 0;
        if (Session["AdminOrganizationID"] != null)
            orgid = int.Parse(Session["AdminOrganizationID"].ToString());
        var orgName = from orgDet in dataClasses.Organizations
                      where orgDet.OrganizationID == orgid
                      select orgDet;
        if (orgName.Count() > 0)
        {
            if (orgName.First().Name != null)
                organizationname = orgName.First().Name.ToString();
        }

        return organizationname;
    }
    private void FillTestList()
    {
        string organization = "";
        if (Session["Admin_Organization"] != null)
            organization = Session["Admin_Organization"].ToString();
        else organization = GetOrganization();
        if (organization == "") return;
        int testindex = 0;
        if (Session["testIndex_report"] != null)
            testindex = int.Parse(Session["testIndex_report"].ToString());
        ddlTestList.Items.Clear();
        ListItem litem = new ListItem("-- Select --", "0");
        ddlTestList.Items.Add(litem);

        //if (ddlOrganizationList.SelectedIndex > 0)
        //{
            var Gettestdetails = from testdet in dataClasses.TestLists
                                 where testdet.OrganizationName == organization
                                 select testdet;
            if (Gettestdetails.Count() > 0)
            {
                ddlTestList.DataSource = Gettestdetails;
                ddlTestList.DataTextField = "TestName";
                ddlTestList.DataValueField = "TestId";
                ddlTestList.DataBind();
                if (testindex > 0)
                {
                    ddlTestList.SelectedIndex = testindex;
                    FilluserList();
                }
            }
        //}
    }
    private void FilluserList()
    {
        
        ddlUserList.DataSource = ""; ddlUserList.DataBind();

        int orgid = 0, testid = 0, groupid = 0;
        if (Session["AdminOrganizationID"] != null)
            orgid = int.Parse(Session["AdminOrganizationID"].ToString());
        if (ddlTestList.SelectedIndex > 0)
            testid = int.Parse(ddlTestList.SelectedValue);
        if (ddlUserGroup.SelectedIndex > 0)
            groupid = int.Parse(ddlUserGroup.SelectedValue);


        if (Session["reportControl"] != null)
            reportControl = Session["reportControl"].ToString();
        else
            reportControl = GetTestReportPreviewControl();

        //if (reportControl == "ReportPreviewCtrl_GrpRpt.ascx")
        //{ ddlUserList.Enabled = false; return; }

        if (individualRptAccess == 0)// bipson 07-03-2011
        { ddlUserList.Enabled = false; return; }


        ddlUserList.Items.Clear();
        ListItem litem = new ListItem("-- Select --", "0");
        ddlUserList.Items.Add(litem);

        if (orgid > 0 && testid > 0 && groupid > 0)// bipson 7-3-2011
        {
            var userdetails = from userdet in dataClasses.UserProfiles
                              where userdet.OrganizationID == orgid && userdet.TestId == testid && userdet.GrpUserID == groupid && userdet.FirstLoginDate.HasValue == true &&
                              (userdet.UserType != "SuperAdmin" && userdet.UserType != "OrgAdmin" && userdet.UserType != "GrpAdmin" && userdet.UserType != "SpecialAdmin")
                              select userdet;
            //LinqUserList.Where = "OrganizationId=" + orgid + " && TestId=" + testid;
            //ddlUserList.DataSource = LinqUserList;
            ddlUserList.DataSource = userdetails;
            ddlUserList.DataTextField = "UserName";
            ddlUserList.DataValueField = "UserId";
            ddlUserList.DataBind();
        }

        else if (orgid > 0 && testid > 0)
        {
            var userdetails = from userdet in dataClasses.UserProfiles
                              where userdet.OrganizationID == orgid && userdet.TestId == testid && userdet.FirstLoginDate.HasValue == true &&
                              (userdet.UserType != "SuperAdmin" && userdet.UserType != "OrgAdmin" && userdet.UserType != "GrpAdmin" && userdet.UserType != "SpecialAdmin")
                              select userdet;
            //LinqUserList.Where = "OrganizationId=" + orgid + " && TestId=" + testid;
            //ddlUserList.DataSource = LinqUserList;
            ddlUserList.DataSource = userdetails;
            ddlUserList.DataTextField = "UserName";
            ddlUserList.DataValueField = "UserId";
            ddlUserList.DataBind();
        }
    }
    protected void btnShow_Click(object sender, EventArgs e)
    {

        if (ddlTestList.SelectedIndex <= 0 && ddlUserList.SelectedIndex <= 0)
        { lblMessage.Text = "Please select a Test/User from the list"; return; }
        
        if (groupRptAccess == 0 && ddlUserList.SelectedIndex <= 0)
        { lblMessage.Text = "Please select a user from the list"; return; }
        else
            if (ddlUserList.SelectedIndex > 0)
                Session["UserId_Report"] = ddlUserList.SelectedValue;         
           
        if (groupRptAccess == 1 && ddlUserList.SelectedIndex <= 0)
        { Session["UserId_Report"] = null; reportControl = "ReportPreviewCtrl_GrpRpt.ascx"; }
        if (ddlUserGroup.SelectedIndex > 0)// bipson 07-03-2011
            Session["UserGroupID_Report"] = ddlUserGroup.SelectedValue;
        else Session["UserGroupID_Report"] = null;

        Session["UserTestID_Report"] = ddlTestList.SelectedValue;

        Session["TestName"] = ddlTestList.SelectedItem.Text;

        GetReportType(int.Parse(ddlTestList.SelectedValue));

        Session["SubCtrl"] = reportControl; //GetTestReportPreviewControl();// "ReportPreviewCtrl.ascx";
        Response.Redirect("FJAHome.aspx");
        //}
        
    }

    private void GetReportType(int testidreport)
    {
        
        var ReportTextDetails = from reportdet in dataClasses.ReportDescriptions
                                where reportdet.TestId == testidreport
                                select reportdet;
        if (ReportTextDetails.Count() > 0)
        {
            if (ReportTextDetails.First().ReportType != null)
                reporttype = ReportTextDetails.First().ReportType.ToString();
            if (ReportTextDetails.First().ScoringType != null)
                scoringType = ReportTextDetails.First().ScoringType.ToString();
        }

        Session["ReportType"] = reporttype;
        Session["ScoringType"] = scoringType;
    }
    private string GetTestReportPreviewControl()
    {
        string reportcontrol = "", reportType = "";
        if (ddlTestList.SelectedIndex > 0)
        {
            int testid = int.Parse(ddlTestList.SelectedValue);
            var testReportControl = from testRptCtrl in dataClasses.TestLists
                                    where testRptCtrl.TestId == testid
                                    select new { testRptCtrl.ReportType,testRptCtrl.GroupReportAccess };
            if (testReportControl.Count() > 0)
            {
                if (testReportControl.First().GroupReportAccess != null)
                    groupRptAccess = testReportControl.First().GroupReportAccess.Value;                   

                reportType = testReportControl.First().ReportType;

                if (reportType == "Interpretative Report")
                { reportcontrol = "ReportPreviewCtrl.ascx"; individualRptAccess = 1; }
                else if (reportType == "Indicative Report")
                { reportcontrol = "ReportPreviewCtrl_IdvlRpt.ascx"; individualRptAccess = 1; }
                //else if (reportType == "Organizational Group Report")
                //    reportcontrol = "ReportPreviewCtrl_GrpRpt.ascx";
                else if (reportType == "Certification Report")
                { reportcontrol = "ReportPreviewCtrl_Certify.ascx"; individualRptAccess = 1; }
            }
        }
        return reportcontrol;
    }
    protected void ddlUserGroup_SelectedIndexChanged(object sender, EventArgs e)
    {
        // code to get users list under selected group.
                
        if (ddlTestList.SelectedIndex > 0)
        {
            Session["groupIndex_report"] = ddlUserGroup.SelectedIndex.ToString();
            FilluserList();
        }
        else Session["groupIndex_report"] = null;

    }
}
