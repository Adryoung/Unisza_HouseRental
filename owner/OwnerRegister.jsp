<%-- 
    Document   : OwnerRegister
    Created on : 17 Dec 2022, 7:31:25 PM
    Author     : Lenovo
--%>

<!DOCTYPE html> 
<html> 
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Sign Up Now ! </title>
        <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.2.0/css/all.css'>
        <link rel=s="button__icon fas fa-chevron-right"></i>




    <style>
        @import url('https://fonts.googleapis.com/css?family=Raleway:400,700');

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
            margin-top:3em;
        }

        .screen {
            background: linear-gradient(270deg,#B7CEEC ,#737CA1);
            position: relative;
            height:800px;
            width: 500px;


        }

        .screen__content {
            z-index: 1;
            position: relative;
            height: 50%;
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

        .screen__background__shape {
            transform: rotate(45deg);
            position: absolute;
        }

        .screen__background__shape1 {
            height: 750px;
            width: 650px;
            background: #FFF;
            top: -50px;
            right: 120px;
            border-radius: 0 72px 0 0;
        }

        .screen__background__shape2 {
            height: 220px;
            width: 220px;
            background: #C9DFEC;
            top: -172px;
            right: 0;
            border-radius: 32px;
        }

        .screen__background__shape3 {
            height: 750px;
            width: 250px;
            background: linear-gradient(270deg,#B7CEEC ,#737CA1);
            top: -24px;
            right: 0;
            border-radius: 32px;
        }

        .screen__background__shape4 {
            height: 750px;
            width: 200px;
            background:#DBE9FA ;
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
            color: #7875B5;
        }

        .login__input {
            border: none;
            border-bottom: 2px solid #D1D1D4;
            background: none;
            padding: 10px;
            padding-left: 24px;
            font-weight: 700;
            width: 75%;
            transition: .2s;
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
            padding: 16px 20px;
            border-radius: 26px;
            border: 1px solid #D4D3E8;
            text-transform: uppercase;
            font-weight: 700;
            display: flex;
            align-items: center;
            width: 100%;
            color: #4C489D;
            box-shadow: 0px 2px 2px  #AED6F1;
            cursor: pointer;
            transition: .2s;
        }

        .login__submit:active,
        .login__submit:focus,
        .login__submit:hover {
            border-color:  #B3B6B7;
            outline: none;
        }

        .button__icon {
            font-size: 24px;
            margin-left: auto;
            color:#2471A3 ;
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

                <form method="post" action="owner.jsp" class="login" style= "margin-top:-2em;" > 
                    <h2 style="margin-top:-3em ;">Sign In</h2>


                    <div class="login__field">
                        <i class="login__icon fas fa-user"></i>
                        <input type="text" name="name"  class="login__input" placeholder="Name" required>
                    </div>



                    <div class="login__field">
                        <i class="login__icon fas fa-user"></i>
                        <input type="text" name="icOwner" class="login__input" placeholder="IC Number" requiered>
                    </div>


                    <div class="login__field">
                        <i class="login__icon fas fa-user"></i>
                        <input type="email" name="email" class="login__input" placeholder="Email">
                    </div>

                    <div class="login__field">
                        <i class="login__icon fas  fa-location-arrow"></i>
                        <input type="text" name="address" class="login__input" placeholder="Address">
                    </div>

                    <div class="login__field">
                        <i class="login__icon fas fa-phone"></i>
                        <input type="text" name="noTel" class="login__input" placeholder="Phone Number">
                    </div>

                    <div class="login__field">
                        <i class="login__icon fas fa-lock"></i>
                        <input type="password" name="pass" class="login__input" placeholder="Password">
                    </div>



                    <div>
                        <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me</div>

                    <button class="button login__submit" name="register">
                        <span class="button__text">Register</span>
                    </button>
                    <button class="button login__submit" name="reset">
                        <span href="HomePage.html" class="button_text">Sign Up</span>
                    </button>
                </form>
            </div>
            <div class="screen__background">
                <span class="screen__background__shape screen__background__shape4"></span>
                <span class="screen__background__shape screen__background__shape3"></span>		
                <span class="screen__background__shape screen__background__shape2"></span>
                <span class="screen__background__shape screen__background__shape1"></span>
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
            height: 100%;
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