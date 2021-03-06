<?xml version="1.0" encoding="UTF-8" ?>
<%
    String path=request.getContextPath();
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>

<link rel="stylesheet" href="<%=path %>/easyui/themes/default/easyui.css" type="text/css"></link>
  <link rel="stylesheet" href="<%=path %>/easyui/themes/icon.css" type="text/css"></link>
  <script type="text/javascript" src="<%=path %>/easyui/jquery.min.js"></script>
  <script type="text/javascript" src="<%=path %>/easyui/jquery.easyui.min.js"></script>
  <script type="text/javascript" src="<%=path %>/easyui/locale/easyui-lang-zh_CN.js"></script>
 <script type="text/javascript" src="<%=path %>/admin/js/exceptionlog.js"></script>
</head>
<body>

<table class="easyui-datagrid" id="tabs" data-options="url:'<%=path %>/log!findExceptionLog.action',fitColumns:true,fit:true,pagination:true,pageList:[5,10,15,20],pageSize:10,showFooter:true,
remoteSort:false,fit:true,toolbar:'#toolbar'">
	<thead>  
        <tr>
        	<th data-options="field:'ck',checkbox:true"></th>  
            <th data-options="field:'logId',width:100,sortable:true">日志编号</th>    
            <th data-options="field:'logTime',width:100,sortable:true">日志时间</th>
            <th data-options="field:'logLevel',width:100,sortable:true">日志级别</th>
            <th data-options="field:'logSite',width:100,sortable:true">位置</th>
            <th data-options="field:'logMsg',width:100,sortable:true">日志消息 </th>
        </tr>  
    </thead>  
</table> 
<div id="toolbar">
日志位置:<input id="logSite" class="easyui-validatebox" data-options="" /> 
日志消息:<input id="logMsg" class="easyui-validatebox" data-options=""/>  
创建时间:<input  id="startDate"  class="easyui-datebox" type="text" style="width: 120px" data-options="formatter:function(date){
	var y = date.getFullYear();
	var m = date.getMonth()+1;
	var d = date.getDate();
	return y+'-'+m+'-'+d;
}"
></input>--<input  id="endDate" type="text"  class="easyui-datebox" style="width: 120px" data-options="formatter:function(date){
	var y = date.getFullYear();
	var m = date.getMonth()+1;
	var d = date.getDate();
	return y+'-'+m+'-'+d;
}"></input>

<a id="search" href="javascript:searchLog()" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" >查询</a>
<a id="clear" href="javascript:clearCondition()" class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" >清空</a>|
<a id="delete" href="javascript:deleteLog()" class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" >删除</a>

</div>

</body>
</html>