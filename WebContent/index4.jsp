<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="div1">
    <p>欢迎使用 <b>wangEditor</b> 富文本编辑器</p>
    <img src="https://ss0.bdstatic.com/5aV1bjqh_Q23odCf/static/superman/img/logo_top_ca79a146.png" style="max-width:100%;"/>
</div>
<button id="btn1">getJSON</button>
<script type="text/javascript" src="jq/jquery-3.4.1.js" ></script>
  <script type="text/javascript" src="js/wangEditor.min.js" ></script>
<script type="text/javascript">
    var E = window.wangEditor
    var editor = new E('#div1')
    editor.create()

    document.getElementById('btn1').addEventListener('click', function () {
        var json = editor.txt.getJSON() // 获取 JSON 格式的内容
        var jsonStr = JSON.stringify(json)
        alert(jsonStr)
    })
</script>
</body>
</html>