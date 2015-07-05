<%@ attribute name="currentItem" required="true" type="java.lang.Integer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="main">
    <header>
        <div class="clear"></div>
        <div class="container_12">
            <div class="grid_12">
                <h1>
                    <a href="<c:url value="/"/>">
                        <img src="<c:url value="/resources/images/logo.png"/>" alt="Your Happy Family">
                    </a>
                </h1>
            </div>
        </div>
    </header>
</div>
<div class="menu_block">
    <div class="container_12">
        <div class="grid_12">
            <nav class="horizontal-nav full-width horizontalNav-notprocessed">
                <ul class="sf-menu">
                    <li class="${currentItem == 1 ?'current':''}">
                        <a href="<c:url value="/"/>"><spring:message code="menu.home"/></a>
                    </li>
                    <li class="${currentItem == 2 ?'current':''}">
                        <a href="<c:url value="/about"/>"><spring:message code="menu.about"/></a>
                    </li>
                    <li class="${currentItem == 3 ?'current':''}">
                        <a href="<c:url value="/gallery"/>"><spring:message code="menu.gallery"/></a>
                    </li>
                    <li class="${currentItem == 4 ?'current':''}">
                        <a href="<c:url value="/video"/>"><spring:message code="menu.video"/></a>
                    </li>
                    <li class="${currentItem == 5 ?'current':''}">
                        <a href="<c:url value="/contacts"/>"><spring:message code="menu.contacts"/></a>
                    </li>
                </ul>
            </nav>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
</div>