<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Zytb_zsbf.aspx.cs" Inherits="SincciKC.webUI.zytb.Zytb_zsbf" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>����־Ը����˵��</title>    
    <meta http-equiv=Content-Type content="text/html; charset=gb2312">
    <meta content="IE=7" http-equiv="X-UA-Compatible" />
    <link rel="stylesheet" type="text/css" href="/style.css" />
    <link href="../../prompt/skin/qq/ymPrompt.css" rel="stylesheet" type="text/css" />
     <script src="../../prompt/ymPrompt.js" type="text/javascript"></script>
 
</head>
<body>
    <form id="form2" runat="server">
     <div id="wrap">
         <div class="header">
            <div class="logo" style="height: 100px">
            </div>
            <div id="menu">
                <uc:MenuControl ID="MenuControl1" runat="server" />
            </div>
        </div>
        <div class="center_content" style=" margin-left:5px" >
             
            <table cellpadding="0" border="0" cellspacing="0" style=" width:860px; margin-left:10px"  >
                <tr>
                    <td class="title">
                        <img src="/images/arrow.gif" />
                         ԺУ�����ƻ�
                    </td>
                    <td class="title" align="right">
                        <input type="button" name="btnExit" class="register" onclick="javascript:window.location.href='/webUI/Exit.aspx'"
                            value="�˳�ϵͳ">
                    </td>
                </tr>
                <tr><td style=" height:5px"></td></tr>
            </table>
            <div  style="border:1px solid #DFF3FE; background-color:#DFF3FE; margin-left:10px ; padding:1px; width:855px" >
                <div  style="background-color:#FFFFFF;">
                
                    <table width="850" border="0" style="border-collapse: collapse;" align="center" cellpadding="0"
                        cellspacing="0">
                        <%--<tr>
                            <td class="tbltitle">
                                ͭ����<asp:Label ID="lblSysYear" runat="server" Text="Label"></asp:Label>���н׶�ѧУ�������Ա�����Ϣ�ɼ���
                                <br />
                                �� &nbsp;&nbsp;д &nbsp;&nbsp;˵ &nbsp;&nbsp;��
                            </td>
                        </tr>--%>
                        <tr>
                            <td  height="100">
                                
                                <table width="820" align="center">    
                                    <tr>
                                       <td id="Content" class="tblcontent">&nbsp;
<table style="width:700pt;border-collapse:collapse;" cellspacing="0" cellpadding="0" width="820" border="0">
	<tbody>
		<tr>
			<td width="820"  >
				<p style="text-align:center;" align="center">
					<span style="font-size:18pt;color:black;font-family:����С���μ���;">ͭ����<span>2016</span>��ʡ��ʾ������ͨ���м�������ͨ����<span></span></span>
				</p>
			</td>
		</tr>
		<tr>
			<td width="820">
				<p style="text-align:center;" align="center">
					<span style="font-size:18pt;color:black;font-family:����С���μ���;">����ʵʱ¼ȡ�����ƻ������<span></span></span>
				</p>
			</td>
		 
		</tr>
	</tbody>
</table>
&nbsp;
<p style="margin-left:18pt;text-indent:-18pt;">
	<span style="color:black;"><span><strong>1��</strong><span><strong>&nbsp; </strong></span></span></span><span style="color:black;font-family:����;"><strong>ȫ�������ƻ�ͨ��ʵʱ¼ȡ��ѧУ</strong></span><span style="color:black;"></span>
</p>
<table style="border-collapse:collapse;" bordercolor="#000000" cellspacing="0" cellpadding="0" border="2">
	<tbody>
		<tr>
			<td width="99" rowspan="2">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">����ѧУ<span><span> </span></span></span>
				</p>
			</td>
			<td width="123" rowspan="2">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">�������<span></span></span>
				</p>
			</td>
			<td width="525" colspan="10">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">��������<span></span></span>
				</p>
			</td>
			<td width="79" rowspan="2">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">�ϼ�<span></span></span>
				</p>
			</td>
			<td width="108" rowspan="2">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">��ע<span></span></span>
				</p>
			</td>
		</tr>
		<tr>
			<td width="63">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">�̽�<span></span></span>
				</p>
			</td>
			<td width="68">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">��ɽ<span></span></span>
				</p>
			</td>
			<td width="49">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">����<span></span></span>
				</p>
			</td>
			<td width="49">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">����<span></span></span>
				</p>
			</td>
			<td width="49">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">ʯ��<span></span></span>
				</p>
			</td>
			<td width="49">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">����<span></span></span>
				</p>
			</td>
			<td width="49">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">˼��<span></span></span>
				</p>
			</td>
			<td width="49">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">ӡ��<span></span></span>
				</p>
			</td>
			<td width="49">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">�½�<span></span></span>
				</p>
			</td>
			<td width="49">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">�غ�<span></span></span>
				</p>
			</td>
		</tr>
		<tr>
			<td width="99" rowspan="5">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">ͭ��һ��<span></span></span>
				</p>
			</td>
			<td width="123">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">ͳ����<span></span></span>
				</p>
			</td>
			<td width="131" colspan="2">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">510</span>
				</p>
			</td>
			<td width="197" colspan="4">
				<p style="text-align:center;" align="center">
					<b><span style="font-size:11pt;color:black;font-family:����;">340</span></b>
				</p>
			</td>
			<td width="197" colspan="4">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">�D�D�D�D�D�D<span></span></span>
				</p>
			</td>
			<td width="79">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">850</span>
				</p>
			</td>
			<td width="108">
				<p style="text-align:left;" align="left">
					<span style="font-size:10pt;color:black;font-family:����;">���س���<span></span></span>
				</p>
			</td>
		</tr>
		<tr>
			<td width="123">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">�����<span></span></span>
				</p>
			</td>
			<td width="131" colspan="2">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;"><span>&nbsp;</span></span><span style="font-size:11pt;color:black;font-family:����;">��<span>595</span>�����̽���<span>457</span>����ɽ��<span>138</span>��<span></span></span>
				</p>
			</td>
			<td width="49">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">36</span>
				</p>
			</td>
			<td width="49">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">23</span>
				</p>
			</td>
			<td width="49">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">76</span>
				</p>
			</td>
			<td width="49">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">120</span>
				</p>
			</td>
			<td width="197" colspan="4">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">�D�D�D�D�D�D<span></span></span>
				</p>
			</td>
			<td width="79">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">850</span>
				</p>
			</td>
			<td width="108">
				<p style="text-align:left;" align="left">
					<span style="font-size:10pt;color:black;font-family:����;">��<span></span></span>
				</p>
			</td>
		</tr>
		<tr>
			<td width="123">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">�ϼ�<span></span></span>
				</p>
			</td>
			<td width="328" colspan="6">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">1700</span>
				</p>
			</td>
			<td width="197" colspan="4">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">�D�D�D�D�D�D<span></span></span>
				</p>
			</td>
			<td width="79">
				<p style="text-align:center;" align="center">
					<b><span style="font-size:11pt;color:black;font-family:����;">1700</span></b>
				</p>
			</td>
			<td width="108">
				<p style="text-align:left;" align="left">
					<span style="font-size:10pt;color:black;font-family:����;">��<span></span></span>
				</p>
			</td>
		</tr>
		<tr>
			<td width="123">
				<p style="text-align:center;" align="center">
					<b><span style="font-size:11pt;color:black;font-family:����;">��׼��ƶ��<span></span></span></b>
				</p>
			</td>
			<td width="525" colspan="10">
				<p style="text-align:center;" align="center">
					<b><span style="font-size:11pt;color:black;font-family:����;">����ȫ����<span>50</span>��<span></span></span></b>
				</p>
			</td>
			<td width="79">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">50</span>
				</p>
			</td>
			<td width="108">
				<p style="text-align:left;" align="left">
					<span style="font-size:10pt;color:black;font-family:����;">����ȫ�н�������ƶ����<span></span></span>
				</p>
			</td>
		</tr>
		<tr>
			<td width="123">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">�ܼ�<span></span></span>
				</p>
			</td>
			<td width="525" colspan="10">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">1750</span>
				</p>
			</td>
			<td width="79">
				<p style="text-align:center;" align="center">
					<b><span style="font-size:11pt;color:black;font-family:����;">1750</span></b>
				</p>
			</td>
			<td width="108">
				<p style="text-align:left;" align="left">
					<span style="font-size:10pt;color:black;font-family:����;">��<span></span></span>
				</p>
			</td>
		</tr>
		<tr>
			<td width="99" rowspan="3">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">˼����ѧ<span></span></span>
				</p>
			</td>
			<td width="123">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">ͳ����<span></span></span>
				</p>
			</td>
			<td width="328" colspan="6">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">�D�D�D�D�D�D<span></span></span>
				</p>
			</td>
			<td width="49">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">390</span>
				</p>
			</td>
			<td width="148" colspan="3">
				<p style="text-align:center;" align="center">
					<b><span style="font-size:11pt;color:black;font-family:����;">260</span></b>
				</p>
			</td>
			<td width="79">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">650</span>
				</p>
			</td>
			<td width="108">
				<p style="text-align:left;" align="left">
					<span style="font-size:10pt;color:black;font-family:����;">���س���<span></span></span>
				</p>
			</td>
		</tr>
		<tr>
			<td width="123">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">�����<span></span></span>
				</p>
			</td>
			<td width="328" colspan="6">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">�D�D�D�D�D�D<span></span></span>
				</p>
			</td>
			<td width="49">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">455</span>
				</p>
			</td>
			<td width="49">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">49</span>
				</p>
			</td>
			<td width="49">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">64</span>
				</p>
			</td>
			<td width="49">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">82</span>
				</p>
			</td>
			<td width="79">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">650</span>
				</p>
			</td>
			<td width="108">
				<p style="text-align:left;" align="left">
					<span style="font-size:10pt;color:black;font-family:����;">��<span></span></span>
				</p>
			</td>
		</tr>
		<tr>
			<td width="123">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">�ϼ�<span></span></span>
				</p>
			</td>
			<td width="328" colspan="6">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">�D�D�D�D�D�D<span></span></span>
				</p>
			</td>
			<td width="197" colspan="4">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">1300</span>
				</p>
			</td>
			<td width="79">
				<p style="text-align:center;" align="center">
					<b><span style="font-size:11pt;color:black;font-family:����;">1300</span></b>
				</p>
			</td>
			<td width="108">
				<p style="text-align:left;" align="left">
					<span style="font-size:10pt;color:black;font-family:����;">��<span></span></span>
				</p>
			</td>
		</tr>
		<tr>
			<td width="99" rowspan="5">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">ͭ��������<span></span></span>
				</p>
			</td>
			<td width="123">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">ͳ����<span></span></span>
				</p>
			</td>
			<td width="131" colspan="2">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">531</span>
				</p>
			</td>
			<td width="395" colspan="8">
				<p style="text-align:center;" align="center">
					<b><span style="font-size:11pt;color:black;font-family:����;">94</span></b>
				</p>
			</td>
			<td width="79">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">625</span>
				</p>
			</td>
			<td width="108">
				<p style="text-align:left;" align="left">
					<span style="font-size:10pt;color:black;font-family:����;">�����������س��ࣨ<span>3</span>���ࣩ<span></span></span>
				</p>
			</td>
		</tr>
		<tr>
			<td width="123">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">�����<span></span></span>
				</p>
			</td>
			<td width="131" colspan="2">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">��<span>438</span>�����̽���<span>337</span>����ɽ��<span>101</span>��<span></span></span>
				</p>
			</td>
			<td width="49">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">26</span>
				</p>
			</td>
			<td width="49">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">17</span>
				</p>
			</td>
			<td width="49">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">56</span>
				</p>
			</td>
			<td width="49">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">88</span>
				</p>
			</td>
			<td width="197" colspan="4">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">�D�D�D�D�D�D<span></span></span>
				</p>
			</td>
			<td width="79">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">625</span>
				</p>
			</td>
			<td width="108">
				<p style="text-align:left;" align="left">
					<span style="font-size:10pt;color:black;font-family:����;">��<span></span></span>
				</p>
			</td>
		</tr>
		<tr>
			<td width="123">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">�ϼ�<span></span></span>
				</p>
			</td>
			<td width="525" colspan="10">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">1300</span>
				</p>
			</td>
			<td width="79">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">1300</span>
				</p>
			</td>
			<td width="108">
				<p style="text-align:left;" align="left">
					<span style="font-size:10pt;color:black;font-family:����;">��<span></span></span>
				</p>
			</td>
		</tr>
		<tr>
			<td width="123">
				<p style="text-align:center;" align="center">
					<b><span style="font-size:11pt;color:black;font-family:����;">��ͨ���������<span></span></span></b>
				</p>
			</td>
			<td width="525" colspan="10">
				<p style="text-align:center;" align="center">
					<b><span style="font-size:11pt;color:black;font-family:����;">����ȫ����<span>50</span>��<span></span></span></b>
				</p>
			</td>
			<td width="79">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">50</span>
				</p>
			</td>
			<td width="108">
				<p style="text-align:left;" align="left">
					<span style="font-size:10pt;color:black;font-family:����;">ʡ������ʡ��ίί�а��<span></span></span>
				</p>
			</td>
		</tr>
		<tr>
			<td width="123">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">�ܼ�<span></span></span>
				</p>
			</td>
			<td width="525" colspan="10">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">1350</span>
				</p>
			</td>
			<td width="79">
				<p style="text-align:center;" align="center">
					<b><span style="font-size:11pt;color:black;font-family:����;">1350</span></b>
				</p>
			</td>
			<td width="108">
				<p style="text-align:left;" align="left">
					<span style="font-size:10pt;color:black;font-family:����;">��<span></span></span>
				</p>
			</td>
		</tr>
		<tr>
			<td width="99" rowspan="5">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">ͭ���ж���<span></span></span>
				</p>
			</td>
			<td width="123">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">ͳ����</span><span style="font-size:11pt;color:black;"></span>
				</p>
			</td>
			<td width="131" colspan="2">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">388</span>
				</p>
			</td>
			<td width="395" colspan="8">
				<p style="text-align:center;" align="center">
					<b><span style="font-size:11pt;color:black;font-family:����;">212</span></b>
				</p>
			</td>
			<td width="79">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">600</span>
				</p>
			</td>
			<td width="108">
				<p style="text-align:left;" align="left">
					<span style="font-size:10pt;color:black;font-family:����;">���س���<span></span></span>
				</p>
			</td>
		</tr>
		<tr>
			<td width="123">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">�����<span></span></span>
				</p>
			</td>
			<td width="131" colspan="2">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">��<span>600</span>�����̽���<span>461</span>����ɽ��<span>139</span>��<span></span></span>
				</p>
			</td>
			<td width="395" colspan="8">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">�D�D�D�D�D�D<span></span></span>
				</p>
			</td>
			<td width="79">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">600</span>
				</p>
			</td>
			<td width="108">
				<p style="text-align:left;" align="left">
					<span style="font-size:10pt;color:black;font-family:����;">��<span></span></span>
				</p>
			</td>
		</tr>
		<tr>
			<td width="123">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">�ϼ�<span></span></span>
				</p>
			</td>
			<td width="525" colspan="10">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">1200</span>
				</p>
			</td>
			<td width="79">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">1200</span>
				</p>
			</td>
			<td width="108">
				<p style="text-align:left;" align="left">
					<span style="font-size:10pt;color:black;font-family:����;">��<span></span></span>
				</p>
			</td>
		</tr>
		<tr>
			<td width="123">
				<p style="text-align:center;" align="center">
					<b><span style="font-size:11pt;color:black;font-family:����;">��׼��ƶ��<span></span></span></b>
				</p>
			</td>
			<td width="525" colspan="10">
				<p style="text-align:center;" align="center">
					<b><span style="font-size:11pt;color:black;font-family:����;">����ȫ����<span>50</span>��<span></span></span></b>
				</p>
			</td>
			<td width="79">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">50</span>
				</p>
			</td>
			<td width="108">
				<p style="text-align:left;" align="left">
					<span style="font-size:10pt;color:black;font-family:����;">����ȫ�н�������ƶ����<span></span></span>
				</p>
			</td>
		</tr>
		<tr>
			<td width="123">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">�ϼ�<span></span></span>
				</p>
			</td>
			<td width="525" colspan="10">
				<p style="text-align:center;" align="center">
					<span style="font-size:11pt;color:black;font-family:����;">1250</span>
				</p>
			</td>
			<td width="79">
				<p style="text-align:center;" align="center">
					<b><span style="font-size:11pt;color:black;font-family:����;">1250</span></b>
				</p>
			</td>
			<td width="108">
				<p style="text-align:left;" align="left">
					<span style="font-size:10pt;color:black;font-family:����;">��<span></span></span>
				</p>
			</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Button ID="btnNext" runat="server" Text="  �����˽���������ƻ�  " OnClick="btnNext_Click"   Height="30"/>
                              
                              
                            </td>
                        </tr>
                    </table>
             </div>
             </div>
            <!--end of center content-->
        </div>
        

        <div class="footer">
            <div class="left_footer">
                Copyright <span class="copy">&copy;</span> 2015-2017,All Rights Reserved. ͭ������������Ժ
                ����
            </div>
        </div>
        <!--end of footer--> 
    </div>
    </form>
</body>
</html>
 