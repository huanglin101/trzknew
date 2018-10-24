﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ByXxLqInfo.aspx.cs" Inherits="SincciKC.ByXxLqInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../../easyui/themes/default/easyui.css" />
    <link rel="stylesheet" type="text/css" href="../../easyui/themes/icon.css" />
    <link rel="stylesheet" type="text/css" href="../../css/page.css" />
 
    <script src="../../js/addTableListener.js" type="text/javascript"></script>
    <script src="../../prompt/ymPrompt.js" type="text/javascript"></script>
    <link href="../../prompt/skin/qq/ymPrompt.css" rel="stylesheet" type="text/css" />
 
     <script language="javascript" type="text/javascript">
     
         function MsgYes() {


             if (confirm('确定将您选择的考生预录到专业 ' + document.getElementById("ddlzy").value + " 吗?")) {
                 return true;
             }
             else {
                 return false;
             }
         }
         var prev = null;
        
         function RowClick(obj) {
          //   var bSHIFT = obj.shiftKey;
            
          
             var chkColl = obj.all;
             obj.style.backgroundColor = '';
             prev = obj;
         
             for (var i = 0; i < chkColl.length; i++) {
                 if (chkColl[i].type == "checkbox") {
                     if (chkColl[i].checked) {
                         chkColl[i].checked = false;
                         prev.style.backgroundColor = '';
                     } else {
                       
                         chkColl[i].checked = true;
                         prev.style.backgroundColor = '#EEF5FF';
                     }
                 }
             }
         }
         //全选、全不选
         function SelectAll(obj) {
             //获取所有的input的元素
             var inputs = document.getElementsByTagName("input");
             var elem = document.getElementById('<%= repDisplay.ClientID%>').getElementsByTagName('input');

             for (var i = 0; i < inputs.length; i++) {
                 //如果是复选框
                 if (inputs[i].type == "checkbox") {
                     inputs[i].checked = obj.checked;
                     try {
                         if (inputs[i].checked) {
                             if (inputs[i].id != "checkboxid")
                                 elem[i - 9].parentNode.parentNode.style.backgroundColor = '#EEF5FF';
                         }
                         else {
                             if (inputs[i].id != "checkboxid")
                                 elem[i - 9].parentNode.parentNode.style.backgroundColor = '';
                         }
                     } catch (e) {

                     }
                 }
             }
         }
         function opdg(pcdm, xqdm, xxdm, title) {
             window.parent.addTab2(title, '/websystem/zklq/ByXxLqInfo.aspx?pcdm=' + pcdm + '&xqdm=' + xqdm + '&xxdm=' + xxdm);
             return false;
         }
         function opUp(ID, Title) {
             ymPrompt.win({ message: 'XQ_SH.aspx?ksh=' + ID, width: 420, height: 300, title: Title, iframe: true, fixPosition: true, dragOut: false })
             return false;
         }
         function meg() {
             ymPrompt.alert({ message: '正在导出数据，请稍候...<br /><img src="/images/busy.gif"/> ', title: '提示' });
             return false;
         }  
     </script>
</head>
<body >
    <form id="form1" runat="server">
      <table border="0" cellpadding="0" cellspacing="0" style="width: 98%;">
               
            <tr>
                <td style="text-align: left; vertical-align: top;">
                    <table border="1" cellpadding="4" cellspacing="0" style="width: 100%; border-collapse: collapse;
                        height: 400px;">
                        
                        
                        <tr style="height: 45px;">
                            <td>
                            <div id="divs" runat="server">
                                <table style="width: 100%;">
                                    <tr>
                                        <td style="text-align: left; width: 75%;">
                                          <asp:Button ID="btn_beginTd" runat="server" Text="通过" CssClass="icon-reload"
                                                OnClick="btn_beginTd_Click" Width="80px"     />
                                            &nbsp;

                                              <asp:Button ID="Button1" runat="server" Text=" 全部通过" CssClass="icon-reload"
                                                  Width="80px" onclick="Button1_Click"     />
                                            &nbsp;
                                            <asp:Button ID="btnCancel_Td" runat="server" Text="不通过" CssClass="icon-reload" 
                                                Width="80px" onclick="btnCancel_Td_Click"    />
                                          
                                            &nbsp;
                                            <asp:Button ID="btnPl_Fd"   runat="server" Text="提交" CssClass="icon-reload"
                                                Width="80px" onclick="btnPl_Fd_Click" />
                                            &nbsp;
                                          <asp:Button ID="btn_dbf"   runat="server" Text=" 导出DBF" CssClass="icon-reload"
                                                Width="80px" onclick="btn_dbf_Click"   />
                                            &nbsp;
                                            <asp:DropDownList ID="ddl_xx" runat="server">
                                                <asp:ListItem Text="所有" Value="0"></asp:ListItem>
                                                   <asp:ListItem Text="统招生" Value="1" ></asp:ListItem>
                                                   <asp:ListItem Text="配额生" Value="2"></asp:ListItem>
                                                   <asp:ListItem Text="配转统" Value="3"></asp:ListItem>
                                             
                                    </asp:DropDownList>   &nbsp;
                                              <asp:Button ID="btn_sel"   runat="server" Text="查询" 
                                                Width="80px" OnClick="btn_sel_Click"    />
                                        </td>
                                        <td style="text-align: right;">
                                            </td>
                                    </tr>
                                </table>
                                </div>
                            </td>
                        </tr>
                        
                      
                        
                        <tr>
                            <td style="text-align: left; vertical-align: top; width: 100%; height: 350px;">
                              <asp:GridView ID="repDisplay" runat="server" ForeColor="#333333" AutoGenerateColumns="False"
                                    AllowSorting="True"   OnSorting="repDisplay_Sorting" Font-Size="13px"  BorderWidth="1px"
                                    Width="100%"  EmptyDataText="该批次暂无数据!" 
                                      onrowdatabound="repDisplay_RowDataBound" AllowPaging="True" 
                                      onpageindexchanged="repDisplay_PageIndexChanged" 
                                      onpageindexchanging="repDisplay_PageIndexChanging" PageSize="100">
                                    <AlternatingRowStyle BackColor="White" />
                                    <EditRowStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#E9EBEF" Font-Bold="True" ForeColor="Black" HorizontalAlign="Center" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle   HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                    <Columns>
                                        <asp:TemplateField>
                                            <HeaderTemplate>
                                                <input type="checkbox" name="checkboxid" id="checkboxid" onclick="SelectAll(this);" />全选</b>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <input type="checkbox" name="CheckBox1" id="CheckBox1" value='<%# Eval("ksh") %>'>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="序号">
                                            <ItemTemplate>
                                                <%# Container.DataItemIndex+1 %>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="报名号" SortExpression="ksh">
                                            <ItemTemplate>
                                                <%# Eval("ksh")%>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="姓名">
                                            <ItemTemplate>
                                                <%# Eval("xm")%>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                          <asp:TemplateField HeaderText="毕业中学">
                                            <ItemTemplate>
                                                <%# Eval("bmdmc")%>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="总分" >
                                            <ItemTemplate>
                                                <%# Eval("cj")%>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="体育">
                                            <ItemTemplate>
                                                <%# Eval("ty")%>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="文综" >
                                            <ItemTemplate>
                                                <%# Eval("wkzh")%>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="地生" >
                                            <ItemTemplate>
                                                <%# Eval("dsdj")%>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="综合等级" >
                                            <ItemTemplate>
                                                <%# Eval("zhdj")%>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                          <asp:TemplateField HeaderText="录取类型" >
                                            <ItemTemplate>
                                               <%#Eval("sftzs").ToString() == "1" ? "统招生" : Eval("sftzs").ToString() == "2"? "配额生":"配转统"%>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                      <%--  <asp:TemplateField HeaderText="专业服从" SortExpression="zyfc">
                                            <ItemTemplate>
                                                <%#Eval("zyfc").ToString() == "True" ? "服从" : "不服从"%>
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>
                                        <asp:TemplateField HeaderText="本地状态" SortExpression="xq_zt">
                                            <ItemTemplate>
                                            <%#Eval("xq_zt").ToString() == "2" ? "已发档" : Eval("xq_zt").ToString() == "3" ? "预退" : Eval("xq_zt").ToString() == "4" ? "预录" : Eval("xq_zt").ToString() == "5" ? "录取" : Eval("xq_zt").ToString() == "1" ? "在库" : "已投"%>
                                             </ItemTemplate>
                                        </asp:TemplateField>
                                           <asp:TemplateField HeaderText="数据库状态" SortExpression="td_zt">
                                            <ItemTemplate>
                                              <%#Eval("td_zt").ToString() == "2" ? "已发档" : Eval("td_zt").ToString() == "3" ? "预退" : Eval("td_zt").ToString() == "4" ? "预录" : Eval("td_zt").ToString() == "5" ? "录取" : Eval("td_zt").ToString() == "1" ? "已投" : "在库"%>
                                              </ItemTemplate>
                                        </asp:TemplateField>
                                      
                                    </Columns>
                                      <PagerTemplate>
      <table width="100%">
             <tr>
                 <td style="text-align: center">
                                        第<asp:Label ID="lblPageIndex" runat="server" Text='<%# ((GridView)Container.Parent.Parent).PageIndex + 1 %>' ForeColor="red" />页
                                        共<asp:Label ID="lblPageCount" runat="server" Text='<%# ((GridView)Container.Parent.Parent).PageCount %>' />页
                                                                            <asp:LinkButton ID="btnFirst" runat="server" CausesValidation="False" CommandArgument="First"
                                         Visible="<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>"   CommandName="Page" Text="首页"  ForeColor="White"  />
                                        <asp:LinkButton ID="btnPrev" runat="server" CausesValidation="False" CommandArgument="Prev" 
                                         Visible="<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>" CommandName="Page" Text="上一页"   ForeColor="White" />
                                        <asp:LinkButton ID="btnNext" runat="server" CausesValidation="False" CommandArgument="Next"
                                         Visible="<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>" CommandName="Page" Text="下一页"   ForeColor="White" />
                                        <asp:LinkButton ID="btnLast" runat="server" CausesValidation="False" CommandArgument="Last"
                                         Visible="<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>" CommandName="Page" Text="尾页"   ForeColor="White" />   </td>
             </tr>
      </table>
</PagerTemplate>
                                </asp:GridView>
                       
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    <asp:HiddenField ID="hf_xqdm" runat="server" />
    <asp:HiddenField ID="hf_zsxxdm" runat="server" />
    <asp:HiddenField ID="hf_pcdm" runat="server" />
    </form>
</body>
</html>