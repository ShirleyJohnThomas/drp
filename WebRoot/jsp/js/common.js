/*浏览器宽度和高度*/
//var w = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;
//var h = wondow.innerHeight || document.documentElement.clientHeight || document.body.clientHeight;
/*event.returnValue = false;禁止右键功能 */
document.oncontextmenu = function() {
	
};
/*屏蔽键盘的一些按键*/
document.onkeydown= function() {   
   	if (window.event.altKey &&   
        ((window.event.keyCode==37)||       //屏蔽   Alt+   方向键   ←   
         (window.event.keyCode==39))) {      //屏蔽   Alt+   方向键   →   
       		event.returnValue=false;   
		}   
   	if (event.ctrlKey && event.keyCode==82){   //Ctrl   +   R   
	         event.keyCode=0;   
	         event.returnValue=false;   
    }   
    //event.keyCode==8 ||  //屏蔽退格删除键   
    //event.keyCode==116 ||  //屏蔽   F5   刷新键   
};
/*
 *日期格式化  
 *格式 YYYY/yyyy/YY/yy 表示年份  
 *MM/M 月份  
 *W/w 星期  
 *dd/DD/d/D 日期  
 *hh/HH/h/H 时间  
 *mm/m 分钟  
 *ss/SS/s/S 秒  
*/   
Date.prototype.Format = function(formatStr)   
{   
    var str = formatStr;   
    var Week = ['日','一','二','三','四','五','六'];  
  
    str=str.replace(/yyyy|YYYY/,this.getFullYear());   
    str=str.replace(/yy|YY/,(this.getYear() % 100)>9?(this.getYear() % 100).toString():'0' + (this.getYear() % 100));   
  
    str=str.replace(/MM/,(this.getMonth()+1)>9?(this.getMonth()+1).toString():'0' + (this.getMonth()+1));   
    str=str.replace(/M/g,this.getMonth()+1);   
  
    str=str.replace(/w|W/g,Week[this.getDay()]);   
  
    str=str.replace(/dd|DD/,this.getDate()>9?this.getDate().toString():'0' + this.getDate());   
    str=str.replace(/d|D/g,this.getDate());   
  
    str=str.replace(/hh|HH/,this.getHours()>9?this.getHours().toString():'0' + this.getHours());   
    str=str.replace(/h|H/g,this.getHours());   
    str=str.replace(/mm/,this.getMinutes()>9?this.getMinutes().toString():'0' + this.getMinutes());   
    str=str.replace(/m/g,this.getMinutes());   
  
    str=str.replace(/ss|SS/,this.getSeconds()>9?this.getSeconds().toString():'0' + this.getSeconds());   
    str=str.replace(/s|S/g,this.getSeconds());   
  
    return str;   
}
/*判断闰年*/ 
Date.prototype.isLeapYear = function(){   
    return (0==this.getYear()%4&&((this.getYear()%100!=0)||(this.getYear()%400==0)));   
}  
/*日期计算*/
Date.prototype.DateAdd = function(strInterval, Number) {   
    var dtTmp = this;  
    switch (strInterval) {   
        case 's' :return new Date(Date.parse(dtTmp) + (1000 * Number));  
        case 'n' :return new Date(Date.parse(dtTmp) + (60000 * Number));  
        case 'h' :return new Date(Date.parse(dtTmp) + (3600000 * Number));  
        case 'd' :return new Date(Date.parse(dtTmp) + (86400000 * Number));  
        case 'w' :return new Date(Date.parse(dtTmp) + ((86400000 * 7) * Number));  
        case 'q' :return new Date(dtTmp.getFullYear(), (dtTmp.getMonth()) + Number*3, dtTmp.getDate(), dtTmp.getHours(), dtTmp.getMinutes(), dtTmp.getSeconds());  
        case 'm' :return new Date(dtTmp.getFullYear(), (dtTmp.getMonth()) + Number, dtTmp.getDate(), dtTmp.getHours(), dtTmp.getMinutes(), dtTmp.getSeconds());  
        case 'y' :return new Date((dtTmp.getFullYear() + Number), dtTmp.getMonth(), dtTmp.getDate(), dtTmp.getHours(), dtTmp.getMinutes(), dtTmp.getSeconds());  
    }  
}
/*比较日期差 dtEnd 格式为日期型或者有效日期格式字符串*/
Date.prototype.DateDiff = function(strInterval, dtEnd) {   
    var dtStart = this;  
    if (typeof dtEnd == 'string' )//如果是字符串转换为日期型  
    {   
        dtEnd = StringToDate(dtEnd);  
    }  
    switch (strInterval) {   
        case 's' :return parseInt((dtEnd - dtStart) / 1000);  
        case 'n' :return parseInt((dtEnd - dtStart) / 60000);  
        case 'h' :return parseInt((dtEnd - dtStart) / 3600000);  
        case 'd' :return parseInt((dtEnd - dtStart) / 86400000);  
        case 'w' :return parseInt((dtEnd - dtStart) / (86400000 * 7));  
        case 'm' :return (dtEnd.getMonth()+1)+((dtEnd.getFullYear()-dtStart.getFullYear())*12) - (dtStart.getMonth()+1);  
        case 'y' :return dtEnd.getFullYear() - dtStart.getFullYear();  
    }  
}  
/*日期输出字符串，重载了系统的toString方法*/
Date.prototype.toString = function(showWeek)  
{   
    var myDate= this;  
    var str = myDate.toLocaleDateString();  
    if (showWeek)  
    {   
        var Week = ['日','一','二','三','四','五','六'];  
        str += ' 星期' + Week[myDate.getDay()];  
    }  
    return str;  
}
/*获取某天是星期几*/
Date.prototype.getWeek = function()  
{   
    var myDate= this;  
    var Week = ['日','一','二','三','四','五','六'];  
    return ' 星期' + Week[myDate.getDay()];  
}
/*把日期分割成数组*/
Date.prototype.toArray = function()  
{   
    var myDate = this;  
    var myArray = Array();  
    myArray[0] = myDate.getFullYear();  
    myArray[1] = myDate.getMonth()+1;  
    myArray[2] = myDate.getDate();  
    myArray[3] = myDate.getHours();  
    myArray[4] = myDate.getMinutes();  
    myArray[5] = myDate.getSeconds();  
    return myArray;  
}
/*
 *取得日期数据信息  
 *参数 interval 表示数据类型  
 *y 年 m月 d日 w星期 ww周 h时 n分 s秒  
*/
Date.prototype.DatePart = function(interval)  
{   
    var myDate = this;  
    var partStr='';  
    var Week = ['日','一','二','三','四','五','六'];  
    switch (interval)  
    {   
        case 'y' :partStr = myDate.getFullYear();break;  
        case 'm' :partStr = myDate.getMonth()+1;break;  
        case 'd' :partStr = myDate.getDate();break;  
        case 'w' :partStr = Week[myDate.getDay()];break;  
        case 'ww' :partStr = myDate.WeekNumOfYear();break;  
        case 'h' :partStr = myDate.getHours();break;  
        case 'n' :partStr = myDate.getMinutes();break;  
        case 's' :partStr = myDate.getSeconds();break;  
    }  
    return partStr;  
}
/*取得当前日期所在月的最大天数 */
Date.prototype.MaxDayOfDate = function()  
{   
    var myDate = this;  
    var ary = myDate.toArray();  
    var date1 = (new Date(ary[0],ary[1]+1,1));  
    var date2 = date1.dateAdd(1,'m',1);  
    var result = dateDiff(date1.Format('yyyy-MM-dd'),date2.Format('yyyy-MM-dd'));  
    return result;  
}   
/*取得当前日期所在周是一年中的第几周  */ 
Date.prototype.WeekNumOfYear = function()  
{    
}  
/*运算函数，用来得到精确的加减乘除结果 
 *说明：javascript的加减乘除结果会有误差，在两个浮点数运算的时候会比较明显。
 *这个函数返回较为精确的运算结果。 
 *调用：acc名称(arg1,arg2) 
 *返回值：arg1运算arg2的精确结果*/
function accDiv(arg1,arg2){//除法
    var t1=0,t2=0,r1,r2; 
    try{t1=arg1.toString().split(".")[1].length}catch(e){} 
    try{t2=arg2.toString().split(".")[1].length}catch(e){} 
    with(Math){ 
      r1=Number(arg1.toString().replace(".","")) 
      r2=Number(arg2.toString().replace(".","")) 
      return (r1/r2)*pow(10,t2-t1); 
    } 
} 
function accMul(arg1,arg2){//乘法
    var m=0,s1=arg1.toString(),s2=arg2.toString(); 
    try{m+=s1.split(".")[1].length}catch(e){} 
    try{m+=s2.split(".")[1].length}catch(e){} 
    return Number(s1.replace(".",""))*Number(s2.replace(".",""))/Math.pow(10,m) 
} 
function accAdd(arg1,arg2){//加法 
    var r1,r2,m; 
    try{r1=arg1.toString().split(".")[1].length}catch(e){r1=0} 
    try{r2=arg2.toString().split(".")[1].length}catch(e){r2=0} 
    m=Math.pow(10,Math.max(r1,r2)) 
    return (arg1*m+arg2*m)/m 
} 
function accSub(arg1,arg2){//减法
       var r1,r2,m,n; 
       try{r1=arg1.toString().split(".")[1].length}catch(e){r1=0} 
       try{r2=arg2.toString().split(".")[1].length}catch(e){r2=0} 
       m=Math.pow(10,Math.max(r1,r2));  
       n=(r1>=r2)?r1:r2; 
       return ((arg1*m-arg2*m)/m).toFixed(n); 
}

/*给Number类型增加上述的运算方法，调用起来更加方便。*/ 
Number.prototype.div = function (arg){ 
    return accDiv(this, arg); 
} 
Number.prototype.mul = function (arg){ 
    return accMul(arg, this); 
} 
Number.prototype.add = function (arg){ 
    return accAdd(arg,this); 
} 
Number.prototype.sub = function (arg){ 
    return accDiv(this, arg); 
} 
/*重写Number的toFixed方法，解决不同浏览器精度问题*/
Number.prototype.toFixed = function(s){ 
	var changenum=(parseInt(this * Math.pow( 10, s ) + 0.5)/ Math.pow( 10, s )).toString(); 
	var index=changenum.indexOf("."); 
	if(index<0&&s>0){ 
		changenum=changenum+"."; 
		for(i=0;i<s;i++){ 
			changenum=changenum+"0"; 
		} 
	}else{ 
		index=changenum.length-index; 
		for(i=0;i<(s-index)+1;i++){ 
			changenum=changenum+"0"; 
		} 
	} 
	return changenum; 
}
/**
* @desc: 工具类
* @author:wyz
* @date:2015-01-07
*/
function ToolExt(){
	this.xmlHttpReq = tool_xmlHttpReq;
	
	/*执行ajax调用*/
	this.executeRequest = function(){
		this.xmlHttpReq.open("POST", strURL, false);
		this.xmlHttpReq.setrequestheader("content-type","application/x-www-form-urlencoded"); 
	  this.xmlHttpReq.send(postParameter);
	  var resultFlag = false;
	  if(this.xmlHttpReq.readyState == 4){//reponse返回成功
    		if(this.xmlHttpReq.status == 200){//request请求成功  
					var resultText = this.xmlHttpReq.responseText; 
					if (resultText != null && resultText != "") {
							eval("this.jsonObj = " + resultText); 
    					if (this.getResultType() == "ERROR") resultFlag = false;
    					else resultFlag = true;   				
	    		}
				}
		} else {
			this.status = null;
			this.alert("服务器响应错误！");
			resultFlag = false;	
		}
	}
}

/*创建ajax的XMLHttpRequest对象*/
function tool_xmlHttpReq(){
 var xmlHttp;
 try{
	 // Firefox, Opera 8.0+, Safari
	 xmlHttp=new XMLHttpRequest();
 }catch (e){
  // Internet Explorer
   try{
      xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
   }catch (e){
      try{
         xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
      }catch (e){
         alert("您的浏览器不支持AJAX！");
         return false;
      }
   }
 }
 return xmlHttp;
}

//鼠标放上事件
function mouseover(obj){
	$('#'+obj.id).css("background-color","rgb(227,238,251)");
}
//鼠标移走事件
function mouseout(obj){
	$('#'+obj.id).css("background-color","rgb(255,255,245)");
}
