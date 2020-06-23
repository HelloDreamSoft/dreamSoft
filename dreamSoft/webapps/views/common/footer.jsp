<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <!--::footer_part start::-->
    <footer class="footer_part">
        <div class="footer_iner">
            <div class="container">
                <div class="row justify-content-between align-items-center">
                    <div class="col-lg-8">
                        <div class="footer_menu">
                            <div class="footer_logo">
                                <a href="index.html"><img src="<%= request.getContextPath() %>/resources/img/logo.png" alt="#"></a>
                            </div>
                            <div class="footer_menu_item">
                                <a href="index.html">Home</a>
                                <a href="about.html">About</a>
                                <a href="product_list.html">Products</a>
                                <a href="#">Pages</a>
                                <a href="blog.html">Blog</a>
                                <a href="contact.html">Contact</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="social_icon">
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fab fa-google-plus-g"></i></a>
                            <a href="#"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="copyright_part">
            <div class="container">
                <div class="row ">
                    <div class="col-lg-12">
                        <div class="copyright_text">
                            <P><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></P>
                            <div class="copyright_link">
                                <a href="#">Turms & Conditions</a>
                                <a href="#">FAQ</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--::footer_part end::-->

    <!-- jquery plugins here-->
    <script src="<%=request.getContextPath()%>/resources/js/jquery-1.12.1.min.js"></script>
    <!-- popper js -->
    <script src="<%=request.getContextPath()%>/resources/js/popper.min.js"></script>
    <!-- bootstrap js -->
    <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
    <!-- magnific popup js -->
    <script src="<%=request.getContextPath()%>/resources/js/jquery.magnific-popup.js"></script>
    <!-- carousel js -->
    <script src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/jquery.nice-select.min.js"></script>
    <!-- slick js -->
    <script src="<%=request.getContextPath()%>/resources/js/slick.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/jquery.counterup.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/waypoints.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/contact.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/jquery.ajaxchimp.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/jquery.form.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/jquery.validate.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/mail-script.js"></script>
    <!-- custom js -->
    <script src="<%=request.getContextPath()%>/resources/js/custom.js"></script>
    
</body>
</html>