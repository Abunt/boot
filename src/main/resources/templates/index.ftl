<!DOCTYPE HTML>
<html>
<head>
    <title>Mr.Wang - 老王的个人空间</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="一个站在java开发之路上的草根程序员个人网站">
    <meta name="keywords" content="个人网站, 王风宇个人网站,王风宇个人博客,  老王博客, 王风宇">
    <meta name="author" content="王风宇">
    <!--[if lte IE 8]><script src="static/js/ie/html5shiv.js"></script><![endif]-->
    <link rel="stylesheet" href="static/css/main.css" />
    <link rel="shortcut icon" href="static/images/favicon.ico">
    <link rel="apple-touch-icon" href="static/images/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="static/images/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="static/images/apple-touch-icon-114x114.png">
    <!-- Add fancyBox main JS and CSS files -->
    <script type="text/javascript" src="static/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="static/js/jquery.fancybox.pack.js?v=2.1.5"></script>
    <link rel="stylesheet" type="text/css" href="static/js/jquery.fancybox.css?v=2.1.5" media="screen" />
    <!--[if lte IE 8]><link rel="stylesheet" href="static/css/ie8.css" /><![endif]-->
    <!--[if lte IE 9]><link rel="stylesheet" href="static/css/ie9.css" /><![endif]-->
    <script type="text/javascript">
        $(document).ready(function() {
            $('#fancybox').fancybox({
                padding : 0,
                openEffect  : 'elastic',
                closeBtn: false
            });
        });
    </script>
</head>
<body>
<div id="wrapper">
    <div id="bg"></div>
    <div id="overlay"></div>
    <div id="main">

        <!-- Header -->
        <header id="header">
            <h1>MR.WANG</h1>
            <p>Hey Guys! 欢迎来到老王空间</p>
            <nav>
                <ul>
                    <li><a href="http://www.wfyvv.com" class="icon fa-home"><span class="label">Home</span></a></li>
                    <li><a href="http://blog.wfyvv.com" class="icon fa-list-ul"><span class="label">Blog</span></a></li>
                    <li><a href="https://git.oschina.net/wilco" class="icon fa-code"><span class="label">Git</span></a></li>
                    <li><a href="http://blog.wfyvv.com/about" class="icon fa-commenting-o"><span class="label">Comments</span></a></li>
                    <li><a href="mailto:wfyv@qq.com" class="icon fa-envelope-o"><span class="label">Email</span></a></li>
                    <!--<li><a href="http://id.wfyvv.com" class="icon fa-info"><span class="label">Card</span></a></li>-->
                    <li><a id="fancybox" class="icon fa-wechat" href="static/css/images/qrcode.jpg" title="关注MR.WANG"><span class="icon fa-wechat">Wechat</span></a></li>
                </ul>
            </nav>
        </header>

        <!-- Footer -->
        <footer id="footer">
            <span class="copyright"><p class="powered-by">© 2017 Mr.Wang |</p><p><a href="http://www.miitbeian.gov.cn/">皖ICP备17002922号</a></p></span>
        </footer>

    </div>
</div>
<!--[if lte IE 8]><script src="static/js/ie/respond.min.js"></script><![endif]-->
<script>
    window.onload = function() { document.body.className = ''; }
    window.ontouchmove = function() { return false; }
    window.onorientationchange = function() { document.body.scrollTop = 0; }
</script>
</body>
</html>