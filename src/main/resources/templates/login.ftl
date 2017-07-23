<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>登陆页</title>
    <link rel="shortcut icon" href="static/images/favicon.ico">
    <link rel="apple-touch-icon" href="static/images/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="static/images/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="static/images/apple-touch-icon-114x114.png">
    <script src="static/js/jquery-1.10.2.min.js" type="text/javascript" ></script>
    <link rel="stylesheet" type="text/css" href="static/css/register.css"/>
</head>
<body>

<div class='signup_container'>
    <h1 class='signup_title'>用户登陆</h1>
    <img src='static/images/people.png' id='admin' />
    <div id="signup_forms" class="signup_forms clearfix">
        <form class="signup_form_form" id="signup_form" method="post" action="" data-secure-action="/login" data-secure-ajax-action="">
            <div class="form_row first_row">
                <label for="signup_email">请输入用户名</label><div class='tip ok'></div>
                <input type="text" name="user[email]" placeholder="请输入用户名" id="signup_name" data-required="required">
            </div>
            <div class="form_row">
                <label for="signup_password">请输入密码</label><div class='tip error'></div>
                <input type="password" name="user[password]" placeholder="请输入密码" id="signup_password" data-required="required">
            </div>
        </form>
    </div>
    <div class="login-btn-set">
        <div class='rem'>记住我</div>
        <#--<a href='javascript:void(0)' class='login-btn'></a>-->
        <input type="submit" class="login-btn" value="">
    </div>
    <p class='copyright'>版权所有</p>
</div>

</body>

<script type="text/javascript">

    $(function(){

        $('.rem').click(function(){
            $(this).toggleClass('selected');
        })

    })


</script>

</html>