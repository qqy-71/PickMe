<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/login.js"></script>
    <script>
        function changeImg() {
            document.getElementById("validateCodeImg").src="${pageContext.request.contextPath}/validateCode?"+Math.random();
        }
    </script>
    <script type="text/javascript">
        var ctx = "${pageContext.request.contextPath}";
    </script>
</head>
<body>
<div id = "nav">
    <div class="nav_img">
        <a href="${pageContext.request.contextPath}/internshipElves/index.jsp"><img src="${pageContext.request.contextPath}/images/logo.png"></a>
    </div>
    <div class="nav_font">
        <span>Pick Me!</span>
    </div>
</div>

<div id = "register">
    <div id = "register_left">
        <div class="register_left_r1">
            <a href="${pageContext.request.contextPath}/internshipElves/login.jsp">学生登录</a>
        </div>

        <div class="register_left_r2">
            <form>
                <span class="loginMessage" id="loginMsg"></span>
                <input type="text" placeholder="请输入手机号/邮箱"class="loginInfo" id="loginTelAndEmail" name = "stuPhoneEmail" onblur="loginTelAndPwd()"/>
                <span class="loginMsg"></span>

                <input type="password" placeholder="请输入密码" class="loginInfo" id="loginPwd" name="stuPwd" onblur="loginPassword()" />
                <span class = "loginPwdMsg"></span>

                <input type="text" placeholder="请输入图片验证码" class="loginImgCode" style="vertical-align:bottom" onblur="loginImg()" name="imgCode"/>
                <img id="validateCodeImg" src="${pageContext.request.contextPath}/validateCode" onclick="changeImg()" style="vertical-align: bottom"/>
                <span class="loginImgMsg"></span>

                <div class="remember">
                    <div class="reb_stu"><input type="checkbox" id="reb_me"><label>记住我</label></div>
                    <div class="reb_pwd"><a href="${pageContext.request.contextPath}/internshipElves/getpass.jsp"><pre>忘记密码</pre></a></div>
                </div>
                <button type="button" class = "loginButton" onclick="login()"><span>登录</span></button>

            </form>
            <div class="register_left_r3">
                <span>没有账号? 直接 <a href="${pageContext.request.contextPath}/internshipElves/register.jsp">注册</a></span>
            </div>
        </div>
    </div>

    <div class="slice"></div>

    <div id = "register_right">
        <div class="register_right_r1">
            <span>没有账号? 直接 <a href="${pageContext.request.contextPath}/internshipElves/register.jsp">注册</a></span>
        </div>
        <div class="register_right_r2">
            <div class="register_right_r2_Ba">
                <span>已使用第三方账号登录</span>
            </div>
            <div class="register_right_r2_Bb">
                <ul>
                    <li><a href=""><img src="${pageContext.request.contextPath}/images/4.jpg"/></a></li>
                    <li><a href=""><img src="${pageContext.request.contextPath}/images/5.jpg"/></a></li>
                    <li><a href=""><img src="${pageContext.request.contextPath}/images/6.jpg"/></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>
</html>
