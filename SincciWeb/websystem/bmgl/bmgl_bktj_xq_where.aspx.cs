﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;
using Model;
using System.IO;

namespace SincciKC.websystem.bmgl
{
    public partial class bmgl_bktj_xq_where : BPage
    {
        public string str = "";
        public string tiaojian = "";
        public string kaoci = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Permission();
                ShowLoad();
                drpLoad();
                BindGv();
                tiaojian = listxb.SelectedValue + "_" + listmz.SelectedValue + "_" + listlb.SelectedValue;
            }
        }
        /// <summary>
        /// 加载考次
        /// </summary>
        private void drpLoad()
        {
            BLL_zk_kcdm bllkc = new BLL_zk_kcdm();
            drpKaoci.DataSource = bllkc.Select_zk_kcdm();
            drpKaoci.DataTextField = "kcmc";
            drpKaoci.DataValueField = "kcdm";
            drpKaoci.DataBind();
        }
        #region "判断页面权限"
        /// <summary>
        /// 页面权限
        /// </summary>
        private void Permission()
        {

            //查看
            if (!new Method().CheckButtonPermission(PopedomType.A2))
            {
                Response.Write("你没有页面查看的权限！");
                Response.End();
            }
            //excel
            if (!new Method().CheckButtonPermission(PopedomType.A4))
            {
                btnExcel.Visible = false;
            }

            //打印
            if (!new Method().CheckButtonPermission(PopedomType.A8))
            {
                btnPrint.Visible = false;
            }

        }
        #endregion
        /// <summary>
        /// 加载条件
        /// </summary>
        private void ShowLoad()
        {
            BLL_zk_zdxx bzd=new BLL_zk_zdxx();
     
            listxb.DataSource = bzd.selectZdxx("xb");//性别
            listxb.DataTextField = "zlbmc";
            listxb.DataValueField = "zlbdm";
            listxb.DataBind();

            listxb.Items.Insert(0, new ListItem("全部", "0"));

            listmz.Items.Insert(0, new ListItem("全部", "0"));
            listmz.Items.Insert(1, new ListItem("汉族", "01"));
            listmz.Items.Insert(2, new ListItem("少数民族", "02"));

            listlb.DataSource = bzd.selectZdxx("kslb");//性别
            listlb.DataTextField = "zlbmc";
            listlb.DataValueField = "zlbdm";
            listlb.DataBind();
            listlb.Items.Insert(0, new ListItem("全部", "0"));
        }
        /// <summary>
        /// 志愿定制BLL
        /// </summary>
        private BLL_xxgl bll = new BLL_xxgl();
        /// <summary>
        /// 绑定数据
        /// </summary>
        private void BindGv()
        {

            kaoci = drpKaoci.SelectedValue;
            int UserType = SincciLogin.Sessionstu().UserType;
            string Department = SincciLogin.Sessionstu().U_department;
            string strc = whereRole(Department, UserType);

            if (UserType == 4)
            {
                tiaojian = listxb.SelectedValue + "_" + listmz.SelectedValue + "_" + listlb.SelectedValue;
                Response.Redirect("bmgl_bktj_xx_where.aspx?kaoci=" + drpKaoci.SelectedValue + "&tiaojian=" + tiaojian + "&xqdm=" + strc + "&where=" + str);
            }
            if (UserType == 5)
            {
                tiaojian = listxb.SelectedValue + "_" + listmz.SelectedValue + "_" + listlb.SelectedValue;
                Response.Redirect("bmgl_bktj_bj_where.aspx?kaoci=" + drpKaoci.SelectedValue + "&tiaojian=" + tiaojian + "&xqdm=" + Department.Substring(0, 4) + "&where=" + str + "&bmddm=" + Department.Substring(0, 6));
            }
            if (strc.IndexOf("*") == -1)
            {
                if (strc == "")
                {
                    this.Repeater1.DataSource = bll.Select_xqtj_Where(Where(), kaoci);
                    this.Repeater1.DataBind();
                }
                else
                {
                    DataTable dt = bll.Select_xqtj_Where(Where(), kaoci);
                    DataTable dtnew = dt.Clone();
                    DataRow[] dr = dt.Select(" xqdm='" + strc + "'");
                    foreach (DataRow item in dr)
                    {
                        dtnew.ImportRow(item);
                    }
                    this.Repeater1.DataSource = dtnew;
                    this.Repeater1.DataBind();
                }
            }

        }
        /// <summary>
        /// 权限控制
        /// </summary>
        /// <param name="fanwei">管理范围</param>
        /// <param name="UserType">用户类型</param>
        /// <returns></returns>
        public string whereRole(string fanwei, int UserType)
        {
            if (fanwei.Length >= 4)
            {
                fanwei = fanwei.Substring(0, 4);
            }
            string where = "";
            switch (UserType)
            {
                //系统管理员
                case 1:
                    where = "";
                    break;
                //市招生办
                case 2:
                    where = "";
                    break;
                //区招生办
                case 3:
                    where = fanwei;
                    break;
                //学校用户 
                case 4:
                    where = fanwei;
                    break;
                //班级用户 
                case 5:
                    where = "*";
                    break;
                default:
                    where = "*";
                    break;
            }
            return where;
        }
        /// <summary>
        /// 条件
        /// </summary>
        private string Where()
        {
            string where = "";
            //xb 1男2女
            if (listxb.SelectedValue!="0")
            {
                where = where + "xbdm=" + listxb.SelectedValue + " and ";
            }
            if (listmz.SelectedValue != "0")
            {
                if (listmz.SelectedValue == "01")
                {
                    where = where + "mzdm='01' and ";
                }
                else
                {
                    where = where + "mzdm!='01' and ";
                }

            }
            if (listlb.SelectedValue != "0")
            {
                where = where + "kslbdm='" + listlb.SelectedValue + "' and "; 
            }
            if (where.Length > 0)
            {
                where = where.Substring(0, where.Length - 4);
               
            }
            str = where ;
            str = str.Replace("'", "_");
            return where;
        }
        /// <summary>
        /// 分析
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click(object sender, EventArgs e)
        {
            tiaojian = listxb.SelectedValue + "_" + listmz.SelectedValue + "_" + listlb.SelectedValue;
            BindGv();
        }

        protected void btnExcel_Click(object sender, EventArgs e)
        {
            string strDate1 = DateTime.Now.ToString("yyyyMMddHHmmss");

            base.Response.Clear();

            base.Response.ContentEncoding = System.Text.Encoding.GetEncoding("gb2312");

            base.Response.AddHeader("content-disposition", "attachment;filename=" + strDate1.ToString() + ".xls");

            base.Response.Charset = "gb2312";//gb2312,utf-8,UTF7
            Response.Write("<meta http-equiv=Content-Type content=\"text/html; charset=GB2312\">");
            //base.Response.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");

            //Response.ContentType指定文件类型 可以为application/ms-excel、application/ms-word、application/ms-txt、application/ms-html 或其他浏览器可直接支持文档

            base.Response.ContentType = "application/vnd.xls";

            this.EnableViewState = false;

            //　定义一个输入流

            StringWriter writer = new StringWriter();

            HtmlTextWriter Htmlwriter = new HtmlTextWriter(writer);

            this.Repeater1.RenderControl(Htmlwriter);

            //this 表示输出本页，你也可以绑定datagrid,或其他支持obj.RenderControl()属性的控件

            base.Response.Write(writer.ToString());

            base.Response.End();
        }

        protected void btnPrint_Click(object sender, EventArgs e)
        {
            kaoci = drpKaoci.SelectedValue;
            Where();
          
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "", "<script> hideTest('县区报名分析表打印','" + drpKaoci.SelectedValue + "','" + str + "');</script>");

        }
    }
}