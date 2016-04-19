var req;
function validate(){
	var startTime=document.getElementById("datetimepicker_start_time").value;
	var endTime=document.getElementById("datetimepicker_end_time").value;
	var roomId=document.getElementById("roomId").value;
	var deviceId=document.getElementById("deviceId").value;
	var url=null;
	if(roomId==""||roomId==null){
		 url="TimeCheckServlet?startTime="
			+escape(startTime)+"&endTime="+escape(endTime)
			+"&roomId="+escape(roomId);
	}
	if(deviceId==""||deviceId==null){
		 url="TimeCheckServlet?startTime="
			+escape(startTime)+"&endTime="+escape(endTime)+"&deviceId"+escape(deviceId)
	}
	if(window.XMLHttpRequest) {  
        //IE7+, Firefox, Opera支持  
        req = new XMLHttpRequest();  
    }else if(window.ActiveXObject) {  
        //IE5,IE6支持  
        req = new ActiveXObject("Microsoft.XMLHTTP");  
    }  
	req.open("GET", url, true);
	req.onreadystatechange=callback;
	req.send(null);
}
function callback(){
	 if(req.readyState == 4 && req.status == 200) {  
	     var check = req.responseText;  
	     show (check);  
	  }  
}
function show(str){
	if(str == "ok") {  
//        var show = "<font color='green'>您选择的时间段没有被预约</font>";  
        document.getElementById("info").innerHTML =null;  
    }  
    else if( str == "conflict") {  
        var show = "<font color='red'>该时间段被预约，请重新选择时间</font>";  
        document.getElementById("info").innerHTML = show;  
    }  
}

