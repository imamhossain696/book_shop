<div class="footer">
    <div class="container">
        <div class="col-md-3 footer-left">
            <h2><a href="index.html"><img src="{{ asset('public/frontEnd/images/') }}" alt=" " /></a></h2>
            <p></p>
        </div>
        <div class="col-md-9 footer-right">
            <div class="col-sm-6 newsleft">
                <h3>SIGN UP FOR NEWSLETTER !</h3>
            </div>
            <div class="col-sm-6 newsright">
                <form>
                    <input type="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Email';
                                    }" required="">
                    <input type="submit" value="Submit">
                </form>
            </div>
            <div class="clearfix"></div>
            <div class="sign-grds">
                <div class="col-md-4 sign-gd">
                    <h4>Information</h4>
                    <ul>
                        <li><a href="{{ url('/') }}">Home</a></li>
                        <li><a href="mens.html">Books</a></li>
                        <li><a href="womens.html">Stationary</a></li>
                        <li><a href="{{url('/contact')}}">Contact</a></li>
                        <li><a href="codes.html"></a></li>
                        <li><a href="contact.html">Contact</a></li>
                    </ul>
                </div>

                <div class="col-md-4 sign-gd-two">
                    <h4>Store Information</h4>
                    <ul>
                        <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Address : House#354, Road#10, Block#C, <span>Bashundhara R/A.</span></li>
                        <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>Email : <a href="mailto:info@example.com">booksworld@gmail.com</a></li>
                        <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>Phone : 01935723484</li>
                    </ul>
                </div>
                <div class="col-md-4 sign-gd flickr-post">
                    <h4>Flickr Posts</h4>
                    <ul>
                        <li><a href="single.html"><img src="{{ asset('public/frontEnd/images/') }}" alt=" " class="img-responsive" /></a></li>
                        <li><a href="single.html"><img src="{{ asset('public/frontEnd/images/') }}" alt=" " class="img-responsive" /></a></li>
                        <li><a href="single.html"><img src="{{ asset('public/frontEnd/images/') }}" alt=" " class="img-responsive" /></a></li>
                        <li><a href="single.html"><img src="{{ asset('public/frontEnd/images/') }}" alt=" " class="img-responsive" /></a></li>
                        <li><a href="single.html"><img src="{{ asset('public/frontEnd/images/') }}" alt=" " class="img-responsive" /></a></li>
                        <li><a href="single.html"><img src="{{ asset('public/frontEnd/images/') }}" alt=" " class="img-responsive" /></a></li>
                        <li><a href="single.html"><img src="{{ asset('public/frontEnd/images/') }}" alt=" " class="img-responsive" /></a></li>
                        <li><a href="single.html"><img src="{{ asset('public/frontEnd/images/') }}" alt=" " class="img-responsive" /></a></li>
                        <li><a href="single.html"><img src="{{ asset('public/frontEnd/images/') }}" alt=" " class="img-responsive" /></a></li>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="clearfix"></div>
        <p class="copy-right">Books World. All rights reserved |</a></p>
    </div>
</div>