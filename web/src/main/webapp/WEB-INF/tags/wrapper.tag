<%@ attribute name="title" required="true" type="java.lang.String" %>
<%@ attribute name="activeItem" required="true" type="java.lang.Integer" %>
<%@ attribute name="stylesheet" fragment="true" %>
<%@ attribute name="javascript" fragment="true" %>
<%@ attribute name="additionalElements" fragment="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<head>
    <!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <![endif]-->
    <meta charset="utf-8">
    <title>${title}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="<c:url value="/resources/img/favicon.ico"/>">
    <link rel="shortcut icon" href="<c:url value="/resources/img/favicon.ico"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/blueimp-gallery.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-image-gallery.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/main.css"/>">
    <jsp:invoke fragment="stylesheet"/>
    <script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.blueimp-gallery.min.js"/>"></script>
    <script src="<c:url value="/resources/js/bootstrap-image-gallery.min.js"/>"></script>
    <jsp:invoke fragment="javascript"/>
</head>
<body>
<t:menu activeItem="${activeItem}"/>
<div class="container">
    <jsp:doBody/>
</div>
<jsp:invoke fragment="additionalElements"/>
</body>