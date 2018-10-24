﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zysz_tbtj_xx.aspx.cs" Inherits="SincciKC.websystem.zysz.zysz_tbtj_xx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" type="text/css" href="../../easyui/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="../../easyui/themes/icon.css" />
<link rel="stylesheet" type="text/css" href="../../css/page.css"  />

<style type="text/css">
.btn
{
	 cursor: hand; 
 }
  
</style>
    <script type="text/javascript">
        function opdg(bmddm, xqdm, Title) {

            window.parent.addTab2(Title, '/websystem/zygl/zysz_tbtj_bj.aspx?bmddm=' + bmddm + '&xqdm=' + xqdm + '&title=' + Title);
            return false;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server"  >
        <asp:Label Text="<未到志愿填报时间>" runat="server" ID="lblshow" BackColor="Red" />
        <div id="divdata" runat="server">
     <div id="tb" class="datagrid-toolbar" style="text-align:center" >
         <span class="font20" >学校填报志愿统计</span>
             </div>
             
      <asp:Repeater ID="Repeater1" runat="server">
        <HeaderTemplate>
            <table class="tbColor" id="GridView1" border="1" style="border-collapse:collapse;  "  cellpadding="2" cellspacing="0" >
                <tr class="datagrid-header" style="height: 26px">
                <td  >
                     
                     <b>  </b></td>
                    <td colspan="5">
                     
                     <b> 总计</b></td>
                   <%-- <td colspan="4">
                        <b>应届生</b>
                    </td>
                    <td colspan="4">
                        <b>往届生</b>
                    </td> --%>   <%--  <td  style=" width:5%">
                        <b>操作</b>
                    </td>--%>
                    <%-- <td><b>修改</b></td>--%>
                </tr>
                <tr class="datagrid-header" style="height: 26px">
                    <td>
                     
                     <b>学校</b></td>
                    <td>
                        <b>总人数</b>
                    </td>
                    <td>
                        <b>填报人数</b>
                    </td>
                  
                    <td>
                        <b>未填报人数</b>
                    </td>
                      <td>
                        <b>录取人数</b>
                    </td>    <td>
                        <b>填报进度</b>
                    </td>
                  <%--   <td>
                        <b>总人数</b>
                    </td>
                    <td>
                        <b>填报人数</b>
                    </td>
                  
                    <td>
                        <b>未填报人数</b>
                    </td>
                       <td>
                        <b>录取人数</b>
                    </td>
                    <td>
                        <b>总人数</b>
                    </td>
                    <td>
                        <b>填报人数</b>
                    </td>
                    
                    <td>
                        <b>未填报人数</b>
                    </td>
                       <td>
                        <b>录取人数</b>
                    </td>--%>
                   <%-- <td>
                        <b>详情</b>
                    </td>--%>
                    <%-- <td><b>修改</b></td>--%>
                </tr>
        </HeaderTemplate>
         <ItemTemplate> 
                   <tr style="height:24px" class="datagrid-body" <%# (Container.ItemIndex+1) % 2 ==0?"bgcolor='#F7F7F7'":"" %> >
                      <td> 
                     <%#Eval("bmdmc")%> </td>      
                    
                  <%--  <td><%# (page - 1) * pagesize + Container.ItemIndex + 1%></td>   --%>
                     <td>  
                         <asp:Label ID="lblksh" runat="server" Text='<%#Eval("zjallnum")%>'></asp:Label>  </td> 
                      
                     <td><%#Eval("zjbmrs")%> </td> 
             
                     
                      <td><%#Eval("zjwqrrs")%> </td> 
                         <td><%#Eval("zjlqrs")%> </td> 
                          <td>
                     <%# Convert.ToDouble(Eval("zjwqrrs"))!=0? Convert.ToDouble((Convert.ToDouble( Eval("zjbmrs"))/(Convert.ToDouble(Eval("zjwqrrs"))+Convert.ToDouble( Eval("zjbmrs")))).ToString("0.00"))*100 :0%>%
                    
                 </td>
                   <%--   <td><%#Eval("yjallnum")%> </td>
                      <td><%#Eval("yjbmrs")%> </td>                     
                     
                          <td><%#Eval("yjwqrrs")%></td> 
                          <td><%#Eval("yjlqrs")%> </td> 
                      <td><%#Eval("wjallnum")%> </td> 
                      <td><%#Eval("wjbmrs")%></td> 
                      
                      <td><%#Eval("wjwqrrs")%></td> 
                   <td><%#Eval("wjlqrs")%> </td> --%>
                    </tr>
         </ItemTemplate>

         <FooterTemplate> </table></FooterTemplate>
        </asp:Repeater> 

    <div id="tbpage" class="datagrid-toolbar" style="padding-left: 10px">
       <asp:Button ID="btnExport" runat="server" CssClass="btnexit" Text="导出数据" OnClick="btnExport_Click" />
        &nbsp;&nbsp;
      <asp:Button ID="btnNo" runat="server" CssClass="btnexit" Text="导出未填报名单" 
            onclick="btnNo_Click"   />
    </div>
            </div>
    </form>
</body>
</html>