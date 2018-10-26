﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LQZsjh_Manage.aspx.cs" Inherits="SincciKC.websystem.zklq.LQZsjh_Manage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>招生计划管理</title>

    <link rel="stylesheet" type="text/css" href="../../easyui/themes/default/easyui.css" />
    <link rel="stylesheet" type="text/css" href="../../easyui/themes/icon.css" />
    <link rel="stylesheet" type="text/css" href="../../css/page.css"  />
    <script src="../../js/addTableListener.js" type="text/javascript"></script>
    <script src="../../prompt/ymPrompt.js" type="text/javascript"></script>
    <script src="../../js/Jquery183.js" type="text/javascript"></script>
    <script src="../../easyui/jquery.easyui.min.js" type="text/javascript"></script>
    <link href="../../prompt/skin/qq/ymPrompt.css" rel="stylesheet" type="text/css" />
    <link href="../../easyui/themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <link href="../../easyui/themes/icon.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
    function MsgYes() {
        var ids = "";
        $("[name='CheckBox1']").each(function () {
            if ($(this).attr("checked"))
                ids += $(this).val() + ",";
        });

        if (ids.length > 0)
            $("#hfDelIDS").val(ids.substr(0, ids.length - 1));
        else {
            alert("请选择需要删除的数据。");
            return false;
        }

        if (confirm('您确定要删除选中的信息吗？本次操作将不可恢复。')) {
            return true;
        }
        else {
            return false;
        }
    }

    //全选、全不选
    function SelectAll(obj) {
        //获取所有的input的元素
        var inputs = document.getElementsByTagName("input");

        for (var i = 0; i < inputs.length; i++) {
            //如果是复选框
            if (inputs[i].type == "checkbox") {
                inputs[i].checked = obj.checked;
            }
        }
    }



    function opdg(ID, Title) {
        //window.parent.addTab2(Title, '/websystem/zysz/Zydz_xxglDetails.aspx?ksh=110&title=' + Title);
        //window.parent.addTab2(Title, '/websystem/bmgl/Zydz_xxglDetails.aspx?ksh=' + ID + '&title=' + Title);
        ymPrompt.win({ message: 'LQZsjh_AddEdit.aspx?ID=' + ID, width: 440, height: 370, title: Title, iframe: true, fixPosition: true, dragOut: false })
        return false;
    }
    function opdy(ID, Title) {

        //window.parent.addTab2(Title, '/websystem/bmgl/Printxx.aspx?ksh=' + ID + '&title=' + Title);
        //  ymPrompt.win({ message: 'xxglMange.aspx.aspx?ID=' + ID, width: 340, height: 300, title: Title, iframe: true, fixPosition: true, dragOut: false })
        return false;
    }

    function addMask() {
        var str = "<div id='backgroud' class='mask-backgroud'>";
        str += "<div id='image' class='mask-image'></div>";
        str += "<div id='text' class='mask-text'>请稍等，正在导入数据。。。。。</div>"
        str += "</div>";

        $("body").append(str);
    }

</script>

<style type="text/css">
.btn
{
	 cursor: hand; 
 }
  
</style>

</head>
<body>
    <form id="form1" runat="server"  >
     
    
     <div id="tb" class="datagrid-toolbar"  >
         <table>
             <tr> 
              <td>
                   选择县区：
                 </td>
                  <td>
                      <asp:DropDownList ID="ddlxqdm" runat="server"   >
                      </asp:DropDownList>
                 </td>
                 <td>
                    学校代码：
                 </td>
                 <td>
                     <asp:TextBox ID="txtName" CssClass="searchbox" runat="server" Width="150px"></asp:TextBox>
                     <asp:Button ID="btnSearch" runat="server" Text="  查询" CssClass="icon-search" OnClick="btnSearch_Click" />
                 </td>
                 
             </tr>
             </table>
             </div>
          
      <asp:Repeater ID="Repeater1" runat="server">
        <HeaderTemplate>
            <table class="tbColor" id="GridView1" border="1" style="border-collapse:collapse;  "  cellpadding="2" cellspacing="0" >
                <tr class="datagrid-header" style="height: 26px">
                    <td>
                        <b>全选
                           <input type="checkbox" name="checkboxid" id="checkboxid"  onclick="SelectAll(this)"  /></b>
                    </td>
                    <td>
                        <b>序号</b>
                    </td>
                    <td>
                        <b>县区</b>
                    </td>
                    <td>
                        <b>学校名称</b>
                    </td>
                    <td>
                        <b>专业名称</b>
                    </td>
                      <td>
                        <b>计划数</b>
                    </td>
                     <td>
                        <b>学制</b>
                    </td> 
                     <td>
                        <b>招生批次</b>
                    </td>
                     <td>
                        <b>修改</b>
                    </td>

                </tr>
        </HeaderTemplate>
         <ItemTemplate> 
                   <tr style="height: 24px" class="datagrid-body" <%# (Container.ItemIndex+1) % 2 ==0?"bgcolor='#F7F7F7'":"" %>>
                   <td><input type="checkbox" name="CheckBox1" id="CheckBox1" value='<%# Eval("lsh") %>'> </td>
                    <td> 
                       <%# (this.AspNetPager1.CurrentPageIndex - 1) * this.AspNetPager1.PageSize + Container.ItemIndex + 1%>
                       
                    </td>
                     <td>
                        [<%# Eval("xqdm")%>]<%# Eval("xqmc")%></td>
                    <td align="left">
                        [<%# Eval("xxdm")%>]<%# Eval("zsxxmc")%></td>
                    <td align="left">
                        [<%# Eval("zydm")%>]<%# Eval("zymc")%></td> 
                    
                      <td  >
                        <%# Eval("jhs")%>
                    </td>
                      <td >
                        <%# Eval("xzmc")%>
                    </td>
               
                     <td  >
                        <%# Eval("pcdm")%>
                    </td>
                    <td>
                        <a href="#" onclick="return opdg('<%# Eval("lsh") %>' ,'修改数据');">
                            <image src="/easyui/themes/icons/pencil.png" alt="修改" border="0"></image>
                        </a>
                    </td>
         </ItemTemplate>

         <FooterTemplate> </table></FooterTemplate>
        </asp:Repeater> 

    <div id="tbpage" class="datagrid-toolbar" style="padding-left:10px" >
        <table width="100%">
            <tr> <td>
             <webdiyer:aspnetpager id="AspNetPager1" runat="server"   onpagechanged="AspNetPager1_PageChanged"  Width="100%"   >
               </webdiyer:aspnetpager></td>
        
               <td>每页：<asp:DropDownList ID="ddlPageSize" runat="server"  AutoPostBack="true"
                    onselectedindexchanged="ddlPageSize_SelectedIndexChanged">                     
            </asp:DropDownList>条</td>
         </tr>
       </table> 
    </div> 
     

    <asp:HiddenField ID="hfDelIDS" runat="server" />
    </form>
</body>
</html>
