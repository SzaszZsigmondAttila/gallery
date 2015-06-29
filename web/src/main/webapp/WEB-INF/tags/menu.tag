<%@ attribute name="currentItem" required="true" type="java.lang.Integer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                    <li class="${currentItem == 1 ?'current':''}"><a href="<c:url value="/"/>">Home</a></li>
                    <li class="${currentItem == 2 ?'current':''}"><a href="<c:url value="/about"/>">About</a></li>
                    <li class="${currentItem == 3 ?'current':''}"><a href="<c:url value="/gallery"/>">Gallery</a></li>
                    <li class="${currentItem == 4 ?'current':''}"><a href="<c:url value="/video"/>">Video</a></li>
                    <li class="${currentItem == 5 ?'current':''}"><a href="<c:url value="/contacts"/>">Contacts</a></li>
                </ul>
            </nav>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
</div>