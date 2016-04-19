function checkStart(){
	var startTime=document.getElementById("datetimepicker_start_time").value;
	if(startTime==""||startTime==null){
		document.getElementById("info").innerHTML="<font color='red'>请选择开始时间</font>";
	}else{
		document.getElementById("info").innerHTML=null;
	}
}
function checkEnd(){
	var endTime=document.getElementById("datetimepicker_end_time").value;
	if(endTime==""||endTime==null){
		document.getElementById("info").innerHTML="<font color='red'>请选择结束时间</font>";
	}else{
		document.getElementById("info").innerHTML=null;
	}
}
function checkComp(){
	var startTime=document.getElementById("datetimepicker_start_time").value;
	var endTime=document.getElementById("datetimepicker_end_time").value;
	var beginTimes = startTime.substring(0, 10).split('-');
	var endTimes = endTime.substring(0, 10).split('-');
	s_time = beginTimes[1] + '-' + beginTimes[2] + '-' + beginTimes[0] + ' ' + startTime.substring(10, 17);
	e_time=endTimes[1] + '-' + endTimes[2] + '-' + endTimes[0] + ' ' + endTimes.substring(10, 17);
	var e=Date.parse(e_time);
	var s=Date.parse(s_time);	
	if(e<=s){
		document.getElementById("info").innerHTML="<font color='red'>结束时间必须大于开始时间</font>";
	}else{
		document.getElementById("info").innerHTML=null;
	}
}
function check(){
	var info=document.getElementById("info").innerHTML;
	var start=document.getElementById('datetimepicker_start_time').value;
	var end=document.getElementById('datetimepicker_end_time').value;
	if((info==null&&info=="")&&start!=""&&end!=""){
		
	}else{
		document.form.submit.disabled = true;
		alert ("您填写的信息不完整，请重新填写!");
		window.location.reload(true);
	}
}