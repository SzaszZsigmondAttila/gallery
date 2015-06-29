<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:wrapper title="About" currentItem="2">
    <jsp:attribute name="stylesheet">
        <link rel="stylesheet" href="<c:url value="/resources/css/touchTouch.css"/>">
    </jsp:attribute>
    <jsp:attribute name="javascript">
        <script src="<c:url value="/resources/js/touchTouch.jquery.js"/>"></script>
        <script src="<c:url value="/resources/js/about.js"/>"></script>
    </jsp:attribute>
    <jsp:body>
        <div class="container_12">
            <div class="grid_4">
                <div class="box">
                    <div class="inner maxheight">
                        <h3>My Bio</h3>
                        <img src="/resources/images/page2_img.jpg" alt="" class="img_inner">

                        <p>
                            <strong class="col2"><a href="#">Lorem ipsum dolor sit amet, consectetur cingeit. In mollis erat ttis neque
                                facilisis, sit amettricies era rutrum.</a></strong>
                        </p>

                        <p>
                            Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis suada.nibh odio ut velit. Proin pharetra
                            luctus diam, a scelerisque eros convallis mertoli noloto. accumsan. Maecenas vehicula egestas
                        </p>
                        Duis massa elit, auctor non pellentesque vellop, aliquet sit amet eratVivamus at magna non nunc tristique rhoncus.
                        <br>
                        <a href="#" class="btn">More</a>
                    </div>
                </div>
            </div>
            <div class="grid_4">
                <div class="box">
                    <div class="inner maxheight">
                        <h3>My Equipment</h3>

                        <div class="block1">
                            <div class="count">A.</div>
                            <div class="extra_wrapper">
                                <p class="col2"><strong><a href="#">Consectetur cingeit. In mollis erat ttise facilisis, sit amettricies era
                                    rutru. </a></strong></p>
                                Luctus diam, a scelerisque eros convallis mertoli noloto. Maecenas vehiculamello egestasuis massa elit
                            </div>
                        </div>
                        <div class="block1">
                            <div class="count">B.</div>
                            <div class="extra_wrapper">
                                <p class="col2"><strong><a href="#">Dosectetur cingeit. An mollis eat twese facilisis, sit amettricies era
                                    rutre. </a></strong></p>
                                Luctus diam, a scelerisque eros convallis mertoli noloto. Maecenas vehiculamello egestasuis massa elit,
                                auctor nonynn pellentesque vellopliquet
                            </div>
                        </div>
                        <div class="block1">
                            <div class="count">C.</div>
                            <div class="extra_wrapper">
                                <p class="col2"><strong><a href="#">Metsectetur cingeit. Omollis etwesemi acilisisit imettricies era rutrer
                                    ti. </a></strong></p>
                                Luctus diam, a scelerisque eros convallis mertoli noloto. Maecenas vehiculamello egestasuis massa elit,
                                auctor nonynn pellentesque vellopliquet
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="grid_4">
                <div class="box">
                    <div class="inner maxheight">
                        <h3>Latest Photos</h3>

                        <div class="latest">
                            <a href="/resources/images/big1.jpg" class="gal"><img src="/resources/images/page2_img1.jpg" alt=""></a>
                            <a href="/resources/images/big2.jpg" class="gal"><img src="/resources/images/page2_img2.jpg" alt=""></a>
                            <a href="/resources/images/big3.jpg" class="gal"><img src="/resources/images/page2_img3.jpg" alt=""></a>
                            <a href="/resources/images/big4.jpg" class="gal"><img src="/resources/images/page2_img4.jpg" alt=""></a>
                            <a href="/resources/images/big5.jpg" class="gal"><img src="/resources/images/page2_img5.jpg" alt=""></a>
                            <a href="/resources/images/big6.jpg" class="gal"><img src="/resources/images/page2_img6.jpg" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clear"></div>
            <div class="grid_12">
                <div class="box1">
                    <div class="inner">
                        <blockquote>
                            <p>Integer convallis orci vel mi laoreet, aterto ornare lorem consequat. Phasellus erat nisl, auctor vel velit
                                sed, pharetramulo venenatis nulla. Vestibulum volutpilom at turpis ut massa commodo noloty </p>

                            <div class="bq_bot"><span>Mark Brown</span>Client</div>
                        </blockquote>
                        <blockquote>
                            <p>Integer convallis orci vel mi laoreet, aterto ornare lorem consequat. Phasellus erat nisl, auctor vel velit
                                sed, pharetramulo venenatis nulla. Vestibulum volutpilom at turpis ut massa commodo noloty </p>

                            <div class="bq_bot"><span>Elza Grey</span>Client</div>
                        </blockquote>
                        <blockquote>
                            <p>Integer convallis orci vel mi laoreet, aterto ornare lorem consequat. Phasellus erat nisl, auctor vel velit
                                sed, pharetramulo venenatis nulla. Vestibulum volutpilom at turpis ut massa commodo noloty </p>

                            <div class="bq_bot"><span>Bred Wood</span>Client</div>
                        </blockquote>
                    </div>
                </div>
            </div>
        </div>
    </jsp:body>
</t:wrapper>