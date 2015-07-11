<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<s:message var="title" code="title.gallery"/>

<t:wrapper title="${title}" activeItem="1">
    <jsp:attribute name="javascript">
        <script src="<c:url value="/resources/js/gallery.js"/>"></script>
    </jsp:attribute>
    <jsp:attribute name="additionalElements">
        <div id="blueimp-gallery" class="blueimp-gallery">
            <div class="slides"></div>
            <h3 class="title"></h3>
            <c:set var="controlPrev" value="‹"/>
            <a class="prev">${controlPrev}</a>
            <c:set var="controlNext" value="›"/>
            <a class="next">${controlNext}</a>
            <c:set var="controlClose" value="×"/>
            <a class="close">${controlClose}</a>
            <a class="play-pause"></a>
            <ol class="indicator"></ol>
        </div>
    </jsp:attribute>
    <jsp:body>
        <c:forEach items="${data.images}" var="image">
            <c:url var="img" value="http://drive.google.com/uc?id=${image.id}"/>
            <c:url var="thumbnail" value="http://drive.google.com/thumbnail?id=${image.id}"/>
            <a href="${img}" title="" data-gallery=""><img src="${thumbnail}"></a>
        </c:forEach>
    </jsp:body>
</t:wrapper>