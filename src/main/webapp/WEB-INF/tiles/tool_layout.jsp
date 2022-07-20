<%@page   contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@taglib prefix="tiles"    uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="_csrf" content="${_csrf.token}"/>
    <meta name="_csrf_header" content="${_csrf.headerName}"/>
    <link rel="shortcut icon" href="/img/logo/logo_header_icon.png">
    <title>오늘의쇼핑</title>
    <link rel="stylesheet" type="text/css" href="/css/common.css" >
    <link rel="stylesheet" type="text/css" href="/css/admin.css" >
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script> 
    <script type="text/javascript" src="/js/common.js"></script>
    <script type="text/javascript" src="/js/admin.js"></script>
</head>
<body>
    <tiles:insertAttribute name="header" flush="true" />
    <main class="container">
       <tiles:insertAttribute name="body" />
    </main>
    <tiles:insertAttribute name="footer" flush="true" />
</body>
</html>