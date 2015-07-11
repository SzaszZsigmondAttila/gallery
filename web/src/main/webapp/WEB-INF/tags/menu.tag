<%@ attribute name="activeItem" required="true" type="java.lang.Integer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>

<div class="navbar navbar-default navbar-fixed-top navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-fixed-top .navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<c:url value="/"/>"><s:message code="brand"/></a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="${activeItem == 0 ?'active':''}">
                    <a href="<c:url value="/"/>"><s:message code="menu.home"/></a>
                </li>
                <li class="${activeItem == 1 ?'active':''}">
                    <a href="<c:url value="/gallery"/>"><s:message code="menu.gallery"/></a>
                </li>
                <li class="${activeItem == 2 ?'active':''}">
                    <a href="<c:url value="/contacts"/>"><s:message code="menu.contacts"/></a>
                </li>
            </ul>
        </div>
    </div>
</div>