<%@ page contentType="application/vnd.ms-word; charset=utf-8" import="java.util.*,edu.ahu.hs.platAppoint.beans.*"%>
<%@ page pageEncoding="utf-8"%>
 
<%  
	DeOrBean dob=(DeOrBean)request.getAttribute("deordetail");
    String fileName = "仪器设备预约使用通知单.doc";  
      //对中文文件名编码  
   //fileName = URLEncoder.encode(fileName, "utf-8");  
    byte[] yte = fileName.getBytes("GB2312");  
            String unicoStr = new String(yte, "ISO-8859-1");
   response.setHeader("Content-disposition", "attachment; filename=" + unicoStr);  
   Date date = new Date();
   long bianhao = date.getTime();
%>  
 
<html xmlns:v="urn:schemas-microsoft-com:vml"   
      xmlns:o="urn:schemas-microsoft-com:office:office"   
      xmlns:w="urn:schemas-microsoft-com:office:word"   
      xmlns:m="http://schemas.microsoft.com/office/2004/12/omml"   
      xmlns:st1="urn:schemas-microsoft-com:office:smarttags"   
      xmlns="http://www.w3.org/TR/REC-html40">  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">  
<meta name="ProgId" content="Word.Document">  
<meta name="Generator" content="Microsoft Word 12">  
<meta name="Originator" content="Microsoft Word 12">   
<title>JSP页面导出为Word文档</title>  
</head>  
<body bgcolor=white lang=ZH-CN style='tab-interval:21.0pt;text-justify-trim:
punctuation'>

<div class=Section1 style='layout-grid:15.6pt'>

<p class=MsoNormal align=center style='text-align:center'><b style='mso-bidi-font-weight:
normal'><span style='font-size:14.0pt;font-family:宋体;mso-ascii-font-family:
"Times New Roman";mso-hansi-font-family:"Times New Roman"'>安徽大学健康科学研究院仪器设备预约单</span></b><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:14.0pt'><o:p></o:p></span></b></p>

<p class=MsoNormal align=right style='text-align:right'><span style='font-family:
宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman"'>单据编号：</span><span
lang=EN-US><%=bianhao %></span></p>

<table class=MsoNormalTable border=1 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-padding-alt:0cm 5.4pt 0cm 5.4pt;mso-border-insideh:.5pt solid windowtext;
 mso-border-insidev:.5pt solid windowtext'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:21.7pt'>
  <td width=280 valign=top style='width:210.0pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.7pt'>
  <p class=MsoNormal align=center style='text-align:center'><b><span
  style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
  "Times New Roman"'>预约单</span> </b><span lang=EN-US><span
  style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></p>
  </td>
  <td width=280 valign=top style='width:210.0pt;border:solid windowtext 1.0pt;
  border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
  solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.7pt'>
  <p class=MsoNormal align=center style='text-align:center'><b><span
  style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
  "Times New Roman"'>完成单</span></b></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;height:21.7pt'>
  <td width=280 valign=top style='width:210.0pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:21.7pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>预约人（签名）：<%=dob.getOrName() %></span></p>
  </td>
  <td width=280 valign=top style='width:210.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.7pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>预约人（签名）：<%=dob.getOrName() %></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:2;height:21.7pt'>
  <td width=280 valign=top style='width:210.0pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:21.7pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>设备名称：</span><span lang=EN-US><%=dob.getDeviceName() %></span></p>
  </td>
  <td width=280 valign=top style='width:210.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.7pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>设备名称：</span><span lang=EN-US><%=dob.getDeviceName() %></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:3;height:21.7pt'>
  <td width=280 valign=top style='width:210.0pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:21.7pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>设备编号：</span><span lang=EN-US><%=dob.getDeviceId().substring(0, 8) %></span></p>
  </td>
  <td width=280 valign=top style='width:210.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.7pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>设备编号：</span><span lang=EN-US><%=dob.getDeviceId().substring(0, 8) %></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:4;height:21.7pt'>
  <td width=280 valign=top style='width:210.0pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:21.7pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>预约时间：</span><span lang=EN-US><%=dob.getSubmitTime() %></span></p>
  </td>
  <td width=280 valign=top style='width:210.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.7pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>预约时间：</span><span lang=EN-US><%=dob.getSubmitTime() %></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:5;height:21.7pt'>
  <td width=280 valign=top style='width:210.0pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:21.7pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>使用时间段：</span><span lang=EN-US><%=dob.getReDate()+" "+dob.getReTime() %></span></p>
  </td>
  <td width=280 valign=top style='width:210.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.7pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>使用时间段：</span><span lang=EN-US><%=dob.getReDate()+" "+dob.getReTime() %></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:6;height:21.7pt'>
  <td width=280 valign=top style='width:210.0pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:21.7pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>使用用途：<%=dob.getPurpose() %></span></p>
  </td>
  <td width=280 valign=top style='width:210.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.7pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>使用用途：<%=dob.getPurpose() %></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:7;height:21.7pt'>
  <td width=280 valign=top style='width:210.0pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:21.7pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>联系电话：</span><span lang=EN-US><%=dob.getContact() %></span></p>
  </td>
  <td width=280 valign=top style='width:210.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.7pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>联系电话：</span><span lang=EN-US><%=dob.getContact() %></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:8;height:21.7pt'>
  <td width=280 valign=top style='width:210.0pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:21.7pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>备注：<%=dob.getRemark() %></span></p>
  </td>
  <td width=280 valign=top style='width:210.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.7pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>备注：<%=dob.getRemark() %></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:9;height:21.7pt'>
  <td width=280 valign=top style='width:210.0pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:21.7pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>导师签名：</span></p>
  </td>
  <td width=280 valign=top style='width:210.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.7pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>导师签名：</span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:10;height:21.7pt'>
  <td width=280 valign=top style='width:210.0pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:21.7pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>管理员（签名）：<%=dob.getAdminRealName() %></span></p>
  </td>
  <td width=280 valign=top style='width:210.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.7pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>管理员（签名）：<%=dob.getAdminRealName() %></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:11;mso-yfti-lastrow:yes;height:22.4pt'>
  <td width=280 valign=top style='width:210.0pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:22.4pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>使用日期：</span><span lang=EN-US></span></p>
  </td>
  <td width=280 valign=top style='width:210.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:22.4pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>使用日期：</span><span lang=EN-US></span></p>
  </td>
 </tr>
</table>

<p class=MsoNormal align=center style='margin-top:0cm;margin-right:-52.5pt;
margin-bottom:0cm;margin-left:-49.55pt;margin-bottom:.0001pt;mso-para-margin-top:
0cm;mso-para-margin-right:-5.0gd;mso-para-margin-bottom:0cm;mso-para-margin-left:
-4.72gd;mso-para-margin-bottom:.0001pt;text-align:center'><span lang=EN-US>------------------------------------------------------------------------------------</span></p>


<p class=MsoNormal align=center style='text-align:center'><b style='mso-bidi-font-weight:
normal'><span style='font-size:14.0pt;font-family:宋体;mso-ascii-font-family:
"Times New Roman";mso-hansi-font-family:"Times New Roman"'>安徽大学健康科学研究院仪器设备预约单（存根）</span></b><b
style='mso-bidi-font-weight:normal'><span lang=EN-US style='font-size:14.0pt'><o:p></o:p></span></b></p>

<p class=MsoNormal align=right style='text-align:right'><span style='font-family:
宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman"'>单据编号：</span><span
lang=EN-US><%=bianhao %></span></p>

<table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0 width="100%"
 style='width:100.0%;border-collapse:collapse;border:none;mso-border-alt:solid black .5pt;
 mso-border-themecolor:text1;mso-yfti-tbllook:1184;mso-padding-alt:0cm 5.4pt 0cm 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:22.2pt'>
  <td width="50%" valign=top style='width:50.0%;border:solid black 1.0pt;
  mso-border-themecolor:text1;mso-border-alt:solid black .5pt;mso-border-themecolor:
  text1;padding:0cm 5.4pt 0cm 5.4pt;height:22.2pt'>
  <p class=MsoNormal align=center style='text-align:center'><b><span
  style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
  "Times New Roman"'>预约单</span><span lang=EN-US><span
  style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span><o:p></o:p></span></b></p>
  </td>
  <td width="50%" valign=top style='width:50.0%;border:solid black 1.0pt;
  mso-border-themecolor:text1;border-left:none;mso-border-left-alt:solid black .5pt;
  mso-border-left-themecolor:text1;mso-border-alt:solid black .5pt;mso-border-themecolor:
  text1;padding:0cm 5.4pt 0cm 5.4pt;height:22.2pt'>
  <p class=MsoNormal align=center style='text-align:center'><b><span
  style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
  "Times New Roman"'>完成单</span><span lang=EN-US><o:p></o:p></span></b></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;height:22.2pt'>
  <td width="50%" valign=top style='width:50.0%;border:solid black 1.0pt;
  mso-border-themecolor:text1;border-top:none;mso-border-top-alt:solid black .5pt;
  mso-border-top-themecolor:text1;mso-border-alt:solid black .5pt;mso-border-themecolor:
  text1;padding:0cm 5.4pt 0cm 5.4pt;height:22.2pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>预约人（签名）：<%=dob.getOrName() %></span></p>
  </td>
  <td width="50%" valign=top style='width:50.0%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;mso-border-bottom-themecolor:text1;
  border-right:solid black 1.0pt;mso-border-right-themecolor:text1;mso-border-top-alt:
  solid black .5pt;mso-border-top-themecolor:text1;mso-border-left-alt:solid black .5pt;
  mso-border-left-themecolor:text1;mso-border-alt:solid black .5pt;mso-border-themecolor:
  text1;padding:0cm 5.4pt 0cm 5.4pt;height:22.2pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>预约人（签名）：<%=dob.getOrName() %></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:2;height:22.2pt'>
  <td width="50%" valign=top style='width:50.0%;border:solid black 1.0pt;
  mso-border-themecolor:text1;border-top:none;mso-border-top-alt:solid black .5pt;
  mso-border-top-themecolor:text1;mso-border-alt:solid black .5pt;mso-border-themecolor:
  text1;padding:0cm 5.4pt 0cm 5.4pt;height:22.2pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>设备名称：</span><span lang=EN-US><%=dob.getDeviceName() %></span><span
  style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
  "Times New Roman"'></span></p>
  </td>
  <td width="50%" valign=top style='width:50.0%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;mso-border-bottom-themecolor:text1;
  border-right:solid black 1.0pt;mso-border-right-themecolor:text1;mso-border-top-alt:
  solid black .5pt;mso-border-top-themecolor:text1;mso-border-left-alt:solid black .5pt;
  mso-border-left-themecolor:text1;mso-border-alt:solid black .5pt;mso-border-themecolor:
  text1;padding:0cm 5.4pt 0cm 5.4pt;height:22.2pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>设备名称：</span><span lang=EN-US><%=dob.getDeviceName() %></span><span
  style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
  "Times New Roman"'></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:3;height:22.2pt'>
  <td width="50%" valign=top style='width:50.0%;border:solid black 1.0pt;
  mso-border-themecolor:text1;border-top:none;mso-border-top-alt:solid black .5pt;
  mso-border-top-themecolor:text1;mso-border-alt:solid black .5pt;mso-border-themecolor:
  text1;padding:0cm 5.4pt 0cm 5.4pt;height:22.2pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>设备编号：</span><span lang=EN-US><%=dob.getDeviceId().substring(0, 8) %></span></p>
  </td>
  <td width="50%" valign=top style='width:50.0%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;mso-border-bottom-themecolor:text1;
  border-right:solid black 1.0pt;mso-border-right-themecolor:text1;mso-border-top-alt:
  solid black .5pt;mso-border-top-themecolor:text1;mso-border-left-alt:solid black .5pt;
  mso-border-left-themecolor:text1;mso-border-alt:solid black .5pt;mso-border-themecolor:
  text1;padding:0cm 5.4pt 0cm 5.4pt;height:22.2pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>设备编号：</span><span lang=EN-US><%=dob.getDeviceId().substring(0, 8) %></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:4;height:22.2pt'>
  <td width="50%" valign=top style='width:50.0%;border:solid black 1.0pt;
  mso-border-themecolor:text1;border-top:none;mso-border-top-alt:solid black .5pt;
  mso-border-top-themecolor:text1;mso-border-alt:solid black .5pt;mso-border-themecolor:
  text1;padding:0cm 5.4pt 0cm 5.4pt;height:22.2pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>预约时间：</span><span lang=EN-US><%=dob.getSubmitTime() %></span></p>
  </td>
  <td width="50%" valign=top style='width:50.0%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;mso-border-bottom-themecolor:text1;
  border-right:solid black 1.0pt;mso-border-right-themecolor:text1;mso-border-top-alt:
  solid black .5pt;mso-border-top-themecolor:text1;mso-border-left-alt:solid black .5pt;
  mso-border-left-themecolor:text1;mso-border-alt:solid black .5pt;mso-border-themecolor:
  text1;padding:0cm 5.4pt 0cm 5.4pt;height:22.2pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>预约时间：</span><span lang=EN-US><%=dob.getSubmitTime() %></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:5;height:22.2pt'>
  <td width="50%" valign=top style='width:50.0%;border:solid black 1.0pt;
  mso-border-themecolor:text1;border-top:none;mso-border-top-alt:solid black .5pt;
  mso-border-top-themecolor:text1;mso-border-alt:solid black .5pt;mso-border-themecolor:
  text1;padding:0cm 5.4pt 0cm 5.4pt;height:22.2pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>使用时间段：</span><span lang=EN-US><%=dob.getReDate()+" "+dob.getReTime() %></span></p>
  </td>
  <td width="50%" valign=top style='width:50.0%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;mso-border-bottom-themecolor:text1;
  border-right:solid black 1.0pt;mso-border-right-themecolor:text1;mso-border-top-alt:
  solid black .5pt;mso-border-top-themecolor:text1;mso-border-left-alt:solid black .5pt;
  mso-border-left-themecolor:text1;mso-border-alt:solid black .5pt;mso-border-themecolor:
  text1;padding:0cm 5.4pt 0cm 5.4pt;height:22.2pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>使用时间段：</span><span lang=EN-US><%=dob.getReDate()+" "+dob.getReTime() %></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:6;height:22.2pt'>
  <td width="50%" valign=top style='width:50.0%;border:solid black 1.0pt;
  mso-border-themecolor:text1;border-top:none;mso-border-top-alt:solid black .5pt;
  mso-border-top-themecolor:text1;mso-border-alt:solid black .5pt;mso-border-themecolor:
  text1;padding:0cm 5.4pt 0cm 5.4pt;height:22.2pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>使用用途：<%=dob.getPurpose() %></span></p>
  </td>
  <td width="50%" valign=top style='width:50.0%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;mso-border-bottom-themecolor:text1;
  border-right:solid black 1.0pt;mso-border-right-themecolor:text1;mso-border-top-alt:
  solid black .5pt;mso-border-top-themecolor:text1;mso-border-left-alt:solid black .5pt;
  mso-border-left-themecolor:text1;mso-border-alt:solid black .5pt;mso-border-themecolor:
  text1;padding:0cm 5.4pt 0cm 5.4pt;height:22.2pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>使用用途：<%=dob.getPurpose() %></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:7;height:22.2pt'>
  <td width="50%" valign=top style='width:50.0%;border:solid black 1.0pt;
  mso-border-themecolor:text1;border-top:none;mso-border-top-alt:solid black .5pt;
  mso-border-top-themecolor:text1;mso-border-alt:solid black .5pt;mso-border-themecolor:
  text1;padding:0cm 5.4pt 0cm 5.4pt;height:22.2pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>联系电话：</span><span lang=EN-US><%=dob.getContact() %></span></p>
  </td>
  <td width="50%" valign=top style='width:50.0%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;mso-border-bottom-themecolor:text1;
  border-right:solid black 1.0pt;mso-border-right-themecolor:text1;mso-border-top-alt:
  solid black .5pt;mso-border-top-themecolor:text1;mso-border-left-alt:solid black .5pt;
  mso-border-left-themecolor:text1;mso-border-alt:solid black .5pt;mso-border-themecolor:
  text1;padding:0cm 5.4pt 0cm 5.4pt;height:22.2pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>联系电话：</span><span lang=EN-US><%=dob.getContact() %></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:8;height:22.2pt'>
  <td width="50%" valign=top style='width:50.0%;border:solid black 1.0pt;
  mso-border-themecolor:text1;border-top:none;mso-border-top-alt:solid black .5pt;
  mso-border-top-themecolor:text1;mso-border-alt:solid black .5pt;mso-border-themecolor:
  text1;padding:0cm 5.4pt 0cm 5.4pt;height:22.2pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>备注：<%=dob.getRemark() %></span></p>
  </td>
  <td width="50%" valign=top style='width:50.0%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;mso-border-bottom-themecolor:text1;
  border-right:solid black 1.0pt;mso-border-right-themecolor:text1;mso-border-top-alt:
  solid black .5pt;mso-border-top-themecolor:text1;mso-border-left-alt:solid black .5pt;
  mso-border-left-themecolor:text1;mso-border-alt:solid black .5pt;mso-border-themecolor:
  text1;padding:0cm 5.4pt 0cm 5.4pt;height:22.2pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>备注：<%=dob.getRemark() %></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:9;height:22.2pt'>
  <td width="50%" valign=top style='width:50.0%;border:solid black 1.0pt;
  mso-border-themecolor:text1;border-top:none;mso-border-top-alt:solid black .5pt;
  mso-border-top-themecolor:text1;mso-border-alt:solid black .5pt;mso-border-themecolor:
  text1;padding:0cm 5.4pt 0cm 5.4pt;height:22.2pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>导师签名：</span></p>
  </td>
  <td width="50%" valign=top style='width:50.0%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;mso-border-bottom-themecolor:text1;
  border-right:solid black 1.0pt;mso-border-right-themecolor:text1;mso-border-top-alt:
  solid black .5pt;mso-border-top-themecolor:text1;mso-border-left-alt:solid black .5pt;
  mso-border-left-themecolor:text1;mso-border-alt:solid black .5pt;mso-border-themecolor:
  text1;padding:0cm 5.4pt 0cm 5.4pt;height:22.2pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>导师签名：</span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:10;height:22.2pt'>
  <td width="50%" valign=top style='width:50.0%;border:solid black 1.0pt;
  mso-border-themecolor:text1;border-top:none;mso-border-top-alt:solid black .5pt;
  mso-border-top-themecolor:text1;mso-border-alt:solid black .5pt;mso-border-themecolor:
  text1;padding:0cm 5.4pt 0cm 5.4pt;height:22.2pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>管理员（签名）：<%=dob.getAdminRealName() %></span></p>
  </td>
  <td width="50%" valign=top style='width:50.0%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;mso-border-bottom-themecolor:text1;
  border-right:solid black 1.0pt;mso-border-right-themecolor:text1;mso-border-top-alt:
  solid black .5pt;mso-border-top-themecolor:text1;mso-border-left-alt:solid black .5pt;
  mso-border-left-themecolor:text1;mso-border-alt:solid black .5pt;mso-border-themecolor:
  text1;padding:0cm 5.4pt 0cm 5.4pt;height:22.2pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>管理员（签名）：<%=dob.getAdminRealName() %></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:11;mso-yfti-lastrow:yes;height:22.2pt'>
  <td width="50%" valign=top style='width:50.0%;border:solid black 1.0pt;
  mso-border-themecolor:text1;border-top:none;mso-border-top-alt:solid black .5pt;
  mso-border-top-themecolor:text1;mso-border-alt:solid black .5pt;mso-border-themecolor:
  text1;padding:0cm 5.4pt 0cm 5.4pt;height:22.2pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>使用日期：</span><span lang=EN-US></span></p>
  </td>
  <td width="50%" valign=top style='width:50.0%;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;mso-border-bottom-themecolor:text1;
  border-right:solid black 1.0pt;mso-border-right-themecolor:text1;mso-border-top-alt:
  solid black .5pt;mso-border-top-themecolor:text1;mso-border-left-alt:solid black .5pt;
  mso-border-left-themecolor:text1;mso-border-alt:solid black .5pt;mso-border-themecolor:
  text1;padding:0cm 5.4pt 0cm 5.4pt;height:22.2pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman"'>使用日期：</span><span lang=EN-US></span></p>
  </td>
 </tr>
</table>

<p class=MsoNormal><span lang=EN-US><o:p>&nbsp;</o:p></span></p>

</div>

</body>
</html> 