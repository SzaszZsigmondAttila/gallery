<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:wrapper title="Gallery" currentItem="3">
    <jsp:attribute name="stylesheet">
        <link rel="stylesheet" href="<c:url value="/resources/css/touchTouch.css"/>">
    </jsp:attribute>
    <jsp:attribute name="javascript">
        <script src="<c:url value="/resources/js/touchTouch.jquery.js"/>"></script>
        <script src="<c:url value="/resources/js/gallery.js"/>"></script>
    </jsp:attribute>
    <jsp:body>
        <div class="container_12">
            <div class="grid_12">
                <div class="box bx1">
                    <div class="inner">
                        <h3>Gallery</h3>

                        <div class="gallery">
                            <c:forEach items="${data.images}" var="image">
                                <c:url var="img" value="http://drive.google.com/uc?id=${image.id}"/>
                                <c:url var="thumbnail" value="http://drive.google.com/thumbnail?id=${image.id}"/>
                                <a href="${img}" class="gal"><img src="${thumbnail}" alt="${image.id}"></a>
                            </c:forEach>
                            <a href="/resources/images/big7.jpg" class="gal"><img src="/resources/images/page3_img1.jpg" alt=""></a>
                            <a href="/resources/images/big8.jpg" class="gal"><img src="/resources/images/page3_img2.jpg" alt=""></a>
                            <a href="/resources/images/big9.jpg" class="gal"><img src="/resources/images/page3_img3.jpg" alt=""></a>
                            <a href="/resources/images/big10.jpg" class="gal"><img src="/resources/images/page3_img4.jpg" alt=""></a>
                            <a href="/resources/images/big11.jpg" class="gal"><img src="/resources/images/page3_img5.jpg" alt=""></a>
                            <a href="/resources/images/big12.jpg" class="gal"><img src="/resources/images/page3_img6.jpg" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </jsp:body>
</t:wrapper>