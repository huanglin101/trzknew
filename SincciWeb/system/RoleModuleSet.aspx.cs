﻿using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
 
using System.Collections;
using BLL;
using Model;

namespace SincciWeb.system
{
    public partial class RoleModuleSet : BPage
    {
        #region "Page_Load"
        int Roleid = Convert.ToInt32(config.sink("Roleid", config.MethodType.Get, 255, 1, config.DataType.Int));
        string R_name = Convert.ToString(config.sink("R_name", config.MethodType.Get, 255, 1, config.DataType.Str));
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Permission();

                if (Roleid > 0)
                { 
                    binData();
                    RoleModuleChecked(Roleid);
                    this.lblRoleName.Text = R_name;
                }
                //选择后改变背景颜色
                CheckBoxList1.Attributes.Add("onclick", "ChangeSelectedItemColor('CheckBoxList1','" + CheckBoxList1.Items.Count + "');"); 
            }
        }
        #endregion

        #region "判断页面权限"
        /// <summary>
        /// 页面权限
        /// </summary>
        private void Permission()
        {
            ////查看
            //if (!new Method().CheckButtonPermission(PopedomType.List))
            //{
            //    Response.Write("你没有页面查看的权限！");
            //    Response.End();
            //}
        }
        #endregion

        #region "绑定CheckBoxList1数据"
        /// <summary>
        /// 绑定CheckBoxList1数据
       /// </summary>
        private void binData()
        {
            QueryParam qp = new QueryParam();
            qp.ReturnFields = " M_modulename,Moduleid ";
            qp.Order = " order by M_order asc";
            int RecordCount = 0;
            this.CheckBoxList1.DataSource = new Method().sys_ModuleList(qp, out RecordCount);
            this.CheckBoxList1.DataTextField = "M_modulename";
            this.CheckBoxList1.DataValueField = "Moduleid";
            this.CheckBoxList1.DataBind();           
           
        }

        #endregion

        #region "判断角色已选中的模块"
        /// <summary>
        /// 
        /// </summary>
        /// <param name="Roleid">角色ID</param>
        private void RoleModuleChecked(int Roleid)
        {
            QueryParam qp = new QueryParam();
            qp.Order = " order by A_moduleid asc";
            qp.Where = string.Format(" A_roleid={0} ", Roleid);
            qp.ReturnFields = "A_moduleid";
            int RecordCount = 0;
            DataTable dt = new Method().sys_RoleModuleList(qp, out RecordCount);
            if (RecordCount > 0)
            {
                List<sys_RoleModuleTable> lst = new Method().DT2EntityList<sys_RoleModuleTable>(dt);

                for (int j = 0; j < lst.Count; j++)
                {
                    sys_RoleModuleTable var = lst[j];
                    for (int i = 0; i < this.CheckBoxList1.Items.Count; i++)
                    {
                        if (var.A_moduleid == Convert.ToInt32(this.CheckBoxList1.Items[i].Value))
                        {
                            this.CheckBoxList1.Items[i].Selected = true;
                            this.CheckBoxList1.Items[i].Attributes.Add("class", "ItemBgColor");
                        }
                    }
                }
            }
        }
        #endregion

        #region "保存数据"
        /// <summary>
        /// 保存数据
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSave_Click(object sender, EventArgs e)
        {
            sys_RoleModuleTable sat = new sys_RoleModuleTable();
            int fa = 0;
            string A_moduleids = "";
            foreach (ListItem Item in this.CheckBoxList1.Items)//遍历这个checkboxlist
            {
                if (Item.Selected == true)//如果被选择了，那么就取出它的文本
                {
                    A_moduleids = Item.Value.ToString().Trim() + "," + A_moduleids;
                }
            }

            sat.A_RoleID = Roleid;
            sat.A_moduleids = A_moduleids;
            sat.DB_Option_Action_ = "Update";
            fa = new Method().sys_RoleModuleInsertUpdate(sat);
            string E_record = "设置: 角色管理设置数据：" + A_moduleids + "";
            if (fa >= 0)
            {
                EventMessage.EventWriteDB(1, E_record);

                Page.ClientScript.RegisterStartupScript(Page.GetType(), "", "<script>ymPrompt.succeedInfo({message:'操作成功！' ,title:'操作提示'});setTimeout(function(){window.parent.location.href=window.parent.location.href;window.parent.ymPrompt.close();},1000);</script>");

            }
            else
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "", "<script>ymPrompt.alert({message:'操作失败！' ,title:'提示'});</script>");
            }

        }
        #endregion

    }
}