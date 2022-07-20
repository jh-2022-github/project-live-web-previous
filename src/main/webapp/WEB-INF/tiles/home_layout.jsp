<%@page   contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@taglib prefix="tiles"    uri="http://tiles.apache.org/tags-tiles"%>
<%-- <%@taglib uri="http://java.sun.com/jsp/jstl/core"              prefix="c" %>
<%@taglib uri="http://www.springframework.org/security/tags"   prefix="sec" %>
<sec:authentication var="user" property="principal" /> --%>
<%
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader("Expires",0);
if (request.getProtocol().equals("HTTP/1.1"))
        response.setHeader("Cache-Control", "no-cache");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="_csrf" content="${_csrf.token}"/>
    <meta name="_csrf_header" content="${_csrf.headerName}"/>
    <link rel="shortcut icon" href="/img/logo/logo_header_icon.png">
    <title>오늘의쇼핑</title>
    <link rel="stylesheet" type="text/css" href="/css/common.css" >
    <link rel="stylesheet" type="text/css" href="/css/shop.css" > 
    <link rel="stylesheet" type="text/css" href="/css/mypage.css" >
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script> 
    <script type="text/javascript" src="/js/common.js"></script>
    <script type="text/javascript" src="/js/shop.js"></script>
    <script type="text/javascript" src="/js/mypage.js"></script>
    <script type="text/javascript" src="/js/order.js"></script>
</head>
<body>

    <tiles:insertAttribute name="header" flush="true" />
    <main class="container">
       <tiles:insertAttribute name="body" />
    </main>
    <tiles:insertAttribute name="footer" flush="true" />
</body>
</html>