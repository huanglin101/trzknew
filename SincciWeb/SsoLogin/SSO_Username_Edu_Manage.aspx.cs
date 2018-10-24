﻿using BLL;
using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SincciKC.SsoLogin
{
    public partial class SSO_Username_Edu_Manage : System.Web.UI.Page
    {
        public int page = Convert.ToInt32(config.sink("page", config.MethodType.Get, 255, 1, config.DataType.Int));
        public int pagesize = Convert.ToInt32(config.sink("pagesize", config.MethodType.Get, 255, 1, config.DataType.Int));
        SqlDbHelper_1 helper = new SqlDbHelper_1();
        string error = "";
        bool bReturn = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.ddlPageSize.DataSource = new config().PageSizelist();
                this.ddlPageSize.DataBind();

                if (pagesize > 0)
                {
                    this.ddlPageSize.SelectedValue = pagesize.ToString();
                }
                else
                {
                    pagesize = Convert.ToInt32(this.ddlPageSize.SelectedValue);
                }
                LoadXq();
            }
        }

        /// <summary>
        /// 获取县区信息。因为此处只给管理员，所以不需要再用权限进行限定。
        /// </summary>
        protected void LoadXq()
        {
            dlistSq.DataSource = GetXqInfo();
            dlistSq.DataTextField = "xqmc";
            dlistSq.DataValueField = "xqdm";
            dlistSq.DataBind();
            this.dlistSq.Items.Insert(0, new ListItem("-请选择-", ""));
        }

        protected void BindGv()
        {
            if (page == 0)
                page = 1;
            int RecordCount = 0;
            string where = strwhere();
            pagesize = Convert.ToInt32(this.ddlPageSize.SelectedValue);
            this.Repeater1.DataSource = SelectData(where, pagesize, AspNetPager1.CurrentPageIndex, ref RecordCount);
            this.Repeater1.DataBind();
            config.AspNetPagerCustomInfoHTML2(AspNetPager1, RecordCount, pagesize);
        }
        /// <summary>
        ///获取县区信息 铜仁市本身不取
        /// </summary>
        /// <returns></returns>
        protected DataTable GetXqInfo()
        {
            string sql = "select * from zk_xqdm where xqdm<>'500'";
            DataTable dt = helper.selectTab(sql, ref error, ref bReturn);
            return dt;
        }

        private string strwhere()
        {
            string str = "";
            string shiqu = dlistSq.SelectedValue;
            string KeyWord = config.CheckChar(this.txtName.Text.Trim().ToString());
            if (shiqu.Length > 0)
            {
                str = str + " xqdm='" + shiqu + "' ";
            }
            if (KeyWord.Length > 0)
            {
                str = str + " and xqmc like '%" + KeyWord + "%' ";
            }
            return str;
        }

        /// <summary>
        /// 取得数据 建立了View_SSO_School_User视图，以便于分页
        /// </summary>
        /// <param name="where"></param>
        /// <param name="pageSize"></param>
        /// <param name="pageIndex"></param>
        /// <param name="totalRecord"></param>
        /// <returns></returns>
        private DataTable SelectData(string where, int pageSize, int pageIndex, ref int totalRecord)
        {
            //取得用户类型为学校的学校的名称，教育局不取。目前将这些内容封在了视图中
            //string sql = @"select a.sys_name,a.organization_id,b.xxmc,case a.type when '2' then '初中' else '其它' end as type 
            //from Sys_SSOUserContrast a,zk_xxdm b where type=2 and a.sys_name=b.xxdm";
            //DataTable dt = helper.selectTab(sql, ref error, ref bReturn);
            string tabName = "View_SSO_Edu_User";
            //要查询的字段
            string reField = "xqdm,organization_id,xqmc,user_type";
            //排序字段
            string orderStr = "xqdm";
            //排序标识（0、升序；1、降序）
            int orderType = 0;
            //执行成功与失败的标识（true、表示执行成功；false、表示执行失败）
            bool bFlag = false;
            decimal dec = 0;
            DataSet dst = helper.ExecuteProc2(tabName, reField, orderStr, "", where, pageSize, pageIndex, orderType, 0, ref dec, ref totalRecord, ref bFlag);
            if (bFlag)
            {
                if (dst.Tables.Count > 0)
                {
                    return dst.Tables[0];
                }
            }
            return null;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            BindGv();
        }
        protected void ddlPageSize_SelectedIndexChanged(object sender, EventArgs e)
        {
            pagesize = Convert.ToInt32(this.ddlPageSize.SelectedValue);
            BindGv();
        }

        /// <summary>
        /// 上下一页
        /// </summary> 
        protected void AspNetPager1_PageChanged(object src, EventArgs e)
        {
            BindGv();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (Request.Form["CheckBox1"] != null)
            {
                //所有的选中教育局列表 
                string ids = Request.Form["CheckBox1"].ToString();
                string sql = "delete from Sys_SSOUserContrast where sys_name in ('" + ids + "')";
                int i = helper.ExecuteNonQuery(sql, ref error, ref bReturn);
                //证明找到了教育局并且完成对应表的删除
                if (i > 0)
                {
                    Page.ClientScript.RegisterStartupScript(Page.GetType(), "", "<script>alert('删除成功!');</script>");
                    BindGv();
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(Page.GetType(), "", "<script>alert('删除失败!请联系管理员!');</script>");
                }
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            if (Request.Form["CheckBox1"] != null)
            {
                //以学校的账号为索引，划分
                string[] ids = Request.Form["CheckBox1"].ToString().Split(',');
                if (ids.Length == 1)
                {
                    Page.ClientScript.RegisterStartupScript(Page.GetType(), "", "<script>option_update('" + ids[0] + "', '修改学校平台信息') ;</script>");
                }
                else if (ids.Length > 1)
                {
                    Page.ClientScript.RegisterStartupScript(Page.GetType(), "", "<script>alert('不能对多个学校进行修改!');</script>");
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "", "<script>alert('请选择需要修改的学校!');</script>");
            }
        }

    }
}