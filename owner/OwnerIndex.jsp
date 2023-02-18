<%-- 
    Document   : OwnerIndex
    Created on : 17 Dec 2022, 7:44:09 PM
    Author     : Lenovo
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title> Sign Up  </title>

        <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.2.0/css/all.css'>
        <link rel=s="button__icon fas fa-chevron-right"></i>


   
    

     <style>
        @import url("https://fonts.googleapis.com/css?family=Raleway:400,700");

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Raleway, sans-serif;
        }

        body {
            background-image:url('https://wallpaperstock.net/architecture-wallpapers_23856_1920x1200.jpg');

        }

        .container {
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }


        .screen {
            background: linear-gradient(90deg, #808080  ,#C6DEFF);
            position: relative;
            height: 650px;
            width: 400px;

        }

        .screen__content {
            z-index: 1;
            position: relative;
            height: 100%;
        }

        .screen__background {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            z-index: 0;
            -webkit-clip-path: inset(0 0 0 0);
            clip-path: inset(0 0 0 0);
        }

        .screenbackgroundshape {
            transform: rotate(45deg);
            position: absolute;
        }

        .screenbackgroundshape1 {
            height: 575px;
            width: 550px;
            background: #ECF0F1 ;
            top: -50px;
            right: 120px;
            border-radius: 0 72px 0 0;
        }

        .screenbackgroundshape2 {
            height: 220px;
            width: 220px;
            background:#C9DFEC  ;
            top: -172px;
            right: 0;
            border-radius: 32px;
        }

        .screenbackgroundshape3 {
            height: 540px;
            width: 190px;
            background: linear-gradient(270deg,#B7CEEC ,#737CA1);
            top: -24px;
            right: 0;
            border-radius: 32px;
        }

        .screenbackgroundshape4 {
            height: 400px;
            width: 200px;
            background:#DBE9FA    ;
            top: 420px;
            right: 50px;
            border-radius: 60px;
        }



        .login {
            width: 320px;
            padding: 30px;
            padding-top: 156px;
        }

        .login__field {
            padding: 20px 0px;
            position: relative;
        }

        .login__icon {
            position: absolute;
            top: 30px;
            color: #9CA3C8 ;
        }

        .login__input {
            border: none;
            border-bottom: 2px solid #d1d1d4;
            background: none;
            padding: 10px;
            padding-left: 24px;
            font-weight: 700;
            width: 75%;
            transition: 0.2s;
        }

        .login__input:active,
        .login__input:focus,
        .login__input:hover {
            outline: none;
            border-bottom-color: #6a679e;
        }

        .login__submit {
            background: #fff;
            font-size: 14px;
            margin-top: 30px;
            padding: 15px 10px;
            border-radius: 14px;
            border: 1px solid #d4d3e8;
            text-transform: uppercase;
            font-weight: 700;
            display: flex;
            align-items: center;
            width: 50%;
            color: #2471A3 ;
            box-shadow: 0px 2px 2px #AED6F1;
            cursor: pointer;
            transition: 0.2s;
        }

        .login__submit:active,
        .login__submit:focus,
        .login__submit:hover {
            border-color: #B3B6B7 ;
            outline: none;
        }



        .button__icon {
            font-size: 24px;
            margin-left: auto;
            color: #2471A3 ;
        }
    </style>
</head>
<body>
    <div>

        <a href="OwnerRegister.jsp">Sign In</a>
        <a href="OwnerIndex.jsp">Log In</a>
        <a href="http://localhost:8082/Example/owner/HomePage.html">Back</a>
       



        <div class="animation start-home"></div> 

    </div>
<center>
    <!-- partial:index.partial.html -->
    <div class="container">
        <div class="screen">
            <div class="screen__content">
                <form method="post" action="owner.jsp" class="login">
                    <h2 style="margin-buttom:-2em;">Sign In</h2>


                    <div class="login__field">
                        <i class="login__icon fas fa-user"></i>
                        <input type="text" name="name"  class="login__input"  maxlength="50" placeholder="Name" required="">
                    </div>


                    <div class="login__field">
                        <i class="login__icon fas fa-user"></i>
                        <input type="email" name="email" class="login__input" maxlength=""  placeholder="Email" required="" ></div>

                    <div class="login__field">
                        <i class="login__icon fas fa-lock"></i>
                        <input type="password" name="pass" class="login__input" maxlength="12" minlength=""  placeholder="Password" required="">
                    </div>



                    <button class="button login__submit" name="login">
                        <span class="button__text">Log In</span>
                    </button>
                    <button class="button login__submit" name="reset">
                        <span href="OwnerRegister.jsp" class="button_text">Sign Up</span>
                    </button>				
                </form>

            </div>
            <div class="screen__background">
                <span class="screenbackgroundshape screenbackgroundshape4"></span>
                <span class="screenbackgroundshape screenbackgroundshape3"></span>  
                <span class="screenbackgroundshape screenbackgroundshape2"></span>
                <span class="screenbackgroundshape screenbackgroundshape1"></span>
            </div>  
        </div>
    </div>
    <!-- partial --> 
    <style>
        body{
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background-image:url('https://www.kentonline.co.uk/_media/img/KW3F55080RFJ5Q0BW1OC.jpg');
        }

        .header{

            min-height: 100vh;

            background-position: center;
            background-size: cover;
            position: relative;
        }
        div{
            position: relative;
        }
        a{
            line-height: 50px;
            height: 100%;
            font-size: 15px;
            display: inline-block;
            position: relative;
            z-index: 1;
            text-decoration: none;
            text-transform: uppercase;
            text-align: center;
            color:azure;
            cursor: pointer;
        }
        .animation {
            position: absolute;
            height: 90%;
            top: 0;
            z-index: 0;
            transition: all .5s ease 0s;
            border-radius: 8px;
        }
        a:nth-child(1){
            width: 100px;
        }
        a:nth-child(2){
            width: 110px;
        }
        a:nth-child(3){
            width: 100px;
        }
        a:nth-child(4){
            width: 160px;
        }
        a:nth-child(5){
            width: 120px;
        }
        .start-home, a:nth-child(1):hover~.animation{
            width: 100px;
            left: 0;
            background-color:#98AFC7;
        }
        .start-owner, a:nth-child(2):hover~.animation{
            width: 110px;
            left: 100px;
            background-color:#D1D0CE;
        }
        .start-student, a:nth-child(3):hover~.animation{
            width: 100px;
            left: 210px;
            background-color:#708090;
        }
        .start-about, a:nth-child(4):hover~.animation{
            width: 160px;
            left: 310px;
            background-color:#838996;
        }



    </style>
</center>
</body>


</html>