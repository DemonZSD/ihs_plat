<%@ page contentType="application/vnd.ms-word; charset=utf-8" import="java.util.*,edu.ahu.hs.platAppoint.beans.*"%>
<%@ page pageEncoding="utf-8"%>
 
<%  
	DeOrBean dob=(DeOrBean)request.getAttribute("deordetail");
    String fileName = "高性能集群服务器账号申请表.doc";  
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
<title>安徽大学健康科学研究院服务器账户申请表</title>  
</head>  
	<body lang=ZH-CN style='tab-interval:21.0pt;text-justify-trim:punctuation'>

<div class=Section1 style='layout-grid:15.6pt'>

<table class=MsoNormalTable border=1 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:480;mso-padding-alt:0cm 5.4pt 0cm 5.4pt;mso-border-insideh:
 .5pt solid windowtext;mso-border-insidev:.5pt solid windowtext'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:38.15pt'>
  <td width=568 colspan=5 style='width:426.1pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:38.15pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><b><span
  style='font-size:16.0pt;line-height:150%;font-family:宋体;mso-bidi-font-family:
  宋体;color:black;mso-font-kerning:0pt'>安徽大学健康科学研究院服务器账户申请表</span></b><span
  lang=EN-US style='font-size:16.0pt;line-height:150%'><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;height:46.4pt'>
  <td width=139 colspan=2 style='width:104.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:46.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:宋体;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:"Times New Roman"'>申请人</span><span
  lang=EN-US style='font-size:14.0pt;line-height:150%'><o:p></o:p></span></p>
  </td>
  <td width=132 style='width:99.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:46.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%'><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=144 style='width:108.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:46.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:宋体;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:"Times New Roman"'>经办人</span><span
  lang=EN-US style='font-size:14.0pt;line-height:150%'><o:p></o:p></span></p>
  </td>
  <td width=153 style='width:114.7pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:46.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:2;height:46.4pt'>
  <td width=139 colspan=2 style='width:104.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:46.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:宋体;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:"Times New Roman"'>联系电话</span><span
  lang=EN-US style='font-size:14.0pt;line-height:150%'><o:p></o:p></span></p>
  </td>
  <td width=132 style='width:99.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:46.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%'><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=144 style='width:108.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:46.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:宋体;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:"Times New Roman"'>电子邮箱</span><span
  lang=EN-US style='font-size:14.0pt;line-height:150%'><o:p></o:p></span></p>
  </td>
  <td width=153 style='width:114.7pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:46.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:3'>
  <td width=139 colspan=2 style='width:104.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-pagination:widow-orphan'><span
  style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>申请账号名称</span><span style='font-size:7.5pt;font-family:
  宋体;mso-bidi-font-family:宋体;color:black;mso-font-kerning:0pt'>（暂不填，由健康科学研究院计算平台分配）</span><span
  lang=EN-US style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:宋体;
  color:black;mso-font-kerning:0pt'><o:p></o:p></span></p>
  </td>
  <td width=132 style='width:99.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:宋体;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:"Times New Roman"'>账号责任人</span><span
  lang=EN-US style='font-size:14.0pt;line-height:150%'><o:p></o:p></span></p>
  </td>
  <td width=144 style='width:108.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:宋体;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:"Times New Roman"'>责任人工号或身份证号</span><span
  lang=EN-US style='font-size:14.0pt;line-height:150%'><o:p></o:p></span></p>
  </td>
  <td width=153 style='width:114.7pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:宋体;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:"Times New Roman"'>账号有效期</span><span
  lang=EN-US style='font-size:14.0pt;line-height:150%'><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:4'>
  <td width=139 colspan=2 style='width:104.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center'><span lang=EN-US
  style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=132 style='width:99.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%'><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=144 style='width:108.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%'><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=153 style='width:114.7pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:5'>
  <td width=139 colspan=2 style='width:104.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-pagination:widow-orphan'><span
  lang=EN-US style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:宋体;
  color:black;mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=132 style='width:99.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%'><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=144 style='width:108.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%'><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=153 style='width:114.7pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:6'>
  <td width=139 colspan=2 style='width:104.4pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-pagination:widow-orphan'><span
  style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>单位<span lang=EN-US><o:p></o:p></span></span></p>
  <p class=MsoNormal align=center style='text-align:center;mso-pagination:widow-orphan'><span
  style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>审批意见<span lang=EN-US><o:p></o:p></span></span></p>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:宋体;mso-bidi-font-family:
  宋体;color:black;mso-font-kerning:0pt'>（加盖公章）</span><span lang=EN-US
  style='font-size:14.0pt;line-height:150%'><o:p></o:p></span></p>
  </td>
  <td width=429 colspan=3 style='width:321.7pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:7'>
  <td width=568 colspan=5 style='width:426.1pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%;
  tab-stops:108.0pt'><span style='font-size:14.0pt;line-height:150%;font-family:
  宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman"'>以下由健康科学研究院计算平台填写</span><span
  lang=EN-US style='font-size:14.0pt;line-height:150%'><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:8'>
  <td width=127 style='width:95.4pt;border:solid windowtext 1.0pt;border-top:
  none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-pagination:widow-orphan'><span
  style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>健康院计算平台办理记录<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width=144 colspan=2 style='width:108.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%'><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=144 style='width:108.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;mso-pagination:widow-orphan'><span
  style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>办理<span lang=EN-US><o:p></o:p></span></span></p>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:宋体;mso-bidi-font-family:
  宋体;color:black;mso-font-kerning:0pt'>日期</span><span lang=EN-US
  style='font-size:14.0pt;line-height:150%'><o:p></o:p></span></p>
  </td>
  <td width=153 style='width:114.7pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:14.0pt;line-height:150%'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:9;height:36.6pt'>
  <td width=127 style='width:95.4pt;border:solid windowtext 1.0pt;border-top:
  none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:36.6pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:宋体;mso-bidi-font-family:
  宋体;color:black;mso-font-kerning:0pt'>办理人</span><span lang=EN-US
  style='font-size:12.0pt;line-height:150%'><o:p></o:p></span></p>
  </td>
  <td width=144 colspan=2 style='width:108.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:36.6pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:12.0pt;line-height:150%'><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=144 style='width:108.0pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:36.6pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:宋体;mso-bidi-font-family:
  宋体;color:black;mso-font-kerning:0pt'>缴费方式</span><span lang=EN-US
  style='font-size:12.0pt;line-height:150%'><o:p></o:p></span></p>
  </td>
  <td width=153 style='width:114.7pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:36.6pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  lang=EN-US style='font-size:12.0pt;line-height:150%'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:10;mso-yfti-lastrow:yes;height:59.0pt'>
  <td width=127 style='width:95.4pt;border:solid windowtext 1.0pt;border-top:
  none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:59.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:150%'><span
  style='font-size:14.0pt;line-height:150%;font-family:宋体;mso-bidi-font-family:
  宋体;color:black;mso-font-kerning:0pt'>备注<span lang=EN-US>:<o:p></o:p></span></span></p>
  </td>
  <td width=441 colspan=4 valign=top style='width:330.7pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:59.0pt'>
  <p class=MsoNormal align=left style='text-align:left;mso-pagination:widow-orphan'><span
  lang=EN-US style='font-size:11.0pt;font-family:宋体;mso-bidi-font-family:宋体;
  color:black;mso-font-kerning:0pt'>1</span><span style='font-size:11.0pt;
  font-family:宋体;mso-bidi-font-family:宋体;color:black;mso-font-kerning:0pt'>、账户的使用者必须遵守国家、学校相关法律法规及安徽大学健康科学研究院相关规定。<span
  lang=EN-US><o:p></o:p></span></span></p>
  <p class=MsoNormal align=left style='text-align:left;mso-pagination:widow-orphan'><span
  lang=EN-US style='font-size:11.0pt;font-family:宋体;mso-bidi-font-family:宋体;
  color:black;mso-font-kerning:0pt'>2</span><span style='font-size:11.0pt;
  font-family:宋体;mso-bidi-font-family:宋体;color:black;mso-font-kerning:0pt'>、申请人单位为校内部门的审批意见需是学校处级单位以上。<span
  lang=EN-US><o:p></o:p></span></span></p>
  <p class=MsoNormal align=left style='text-align:left;mso-pagination:widow-orphan'><span
  lang=EN-US style='font-size:11.0pt;font-family:宋体;mso-bidi-font-family:宋体;
  color:black;mso-font-kerning:0pt'>3</span><span style='font-size:11.0pt;
  font-family:宋体;mso-bidi-font-family:宋体;color:black;mso-font-kerning:0pt'>、缴费方式需标明是现金、转账两种类别，其中涉及票据的要注明票据号
  <span lang=EN-US><o:p></o:p></span></span></p>
  </td>
 </tr>
 <![if !supportMisalignedColumns]>
 <tr height=0>
  <td width=127 style='border:none'></td>
  <td width=12 style='border:none'></td>
  <td width=132 style='border:none'></td>
  <td width=144 style='border:none'></td>
  <td width=153 style='border:none'></td>
 </tr>
 <![endif]>
</table>

<p class=MsoNormal><span lang=EN-US><o:p>&nbsp;</o:p></span></p>

</div>

</body>

</html> 