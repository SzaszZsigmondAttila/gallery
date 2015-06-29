<%@ attribute name="title" required="true" type="java.lang.String" %>
<%@ attribute name="currentItem" required="true" type="java.lang.Integer" %>
<%@ attribute name="stylesheet" fragment="true" %>
<%@ attribute name="javascript" fragment="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="commons" tagdir="/WEB-INF/tags" %>

<html>
<head>
    <meta charset="utf-8">
    <title>${title}</title>
    <meta name="format-detection" content="telephone=no"/>
    <link rel="icon" href="<c:url value="/resources/images/favicon.ico"/>">
    <link rel="shortcut icon" href="<c:url value="/resources/images/favicon.ico"/>"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
    <jsp:invoke fragment="stylesheet"/>
    <link href='http://fonts.googleapis.com/css?family=Economica:700' rel='stylesheet' type='text/css'>
    <script src="<c:url value="/resources/js/jquery.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery-migrate-1.1.1.js"/>"></script>
    <script src="<c:url value="/resources/js/script.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.ui.totop.js"/>"></script>
    <script src="<c:url value="/resources/js/superfish.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.equalheights.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.mobilemenu.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.easing.1.3.js"/>"></script>
    <script src="<c:url value="/resources/js/common.js"/>"></script>
    <jsp:invoke fragment="javascript"/>
    <!--[if lt IE 8]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
            <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820"
                 alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."/>
        </a>
    </div>
    <![endif]-->
    <!--[if lt IE 9]>
    <script src="/resources/js/html5shiv.js"></script>
    <link rel="stylesheet" media="screen" href="/resources/css/ie.css">
    <![endif]-->
</head>
<body id="top">
<commons:menu currentItem="${currentItem}"/>
<div class="main">
    <div class="content">
        <jsp:doBody/>
    </div>
    <footer>
        <div class="hor bg3"></div>
        <div class="container_12">
            <div class="grid_12">
                <div class="socials">
                    <a href="#"></a>
                    <a href="#"></a>
                    <a href="#"></a>

                    <div class="clear"></div>
                </div>
                <div class="copy">
                    &copy; <span id="copyright-year"></span> | <a href="#">Privacy Policy</a> <br>
                    Website designed by <a href="http://www.templatemonster.com/" rel="nofollow">TemplateMonster.com</a>
                </div>
            </div>
        </div>
    </footer>
</div>
</body>
</html>