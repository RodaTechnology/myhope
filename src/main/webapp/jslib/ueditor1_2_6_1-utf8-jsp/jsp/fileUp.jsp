<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="com.myhope.util.base.UEditorUtil"%>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	UEditorUtil up = new UEditorUtil(request);
	up.setSavePath("upload"); //保存路径
	String[] fileType = { ".rar", ".doc", ".docx", ".zip", ".pdf", ".txt", ".swf", ".wmv" }; //允许的文件类型
	up.setAllowFiles(fileType);
	up.setMaxSize(10000); //允许的文件最大尺寸，单位KB
	up.upload();
	response.getWriter().print("{'url':'" + up.getUrl() + "','fileType':'" + up.getType() + "','state':'" + up.getState() + "','original':'" + up.getOriginalName() + "'}");
%>
