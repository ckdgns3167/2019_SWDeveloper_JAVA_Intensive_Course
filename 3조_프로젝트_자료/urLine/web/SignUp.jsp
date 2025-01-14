<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
          type="text/css">
    <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
    <link rel="stylesheet" href="./css/style.css">
</head>

<body>
<!-- navigation bar -->
<nav class="navbar navbar-expand-md navbar-dark bg-transparent fixed-top" style="">
    <div class="container"><a class="navbar-brand" href="#">
        <img src="./images/logo_w.png" alt="">
    </a>
        <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse"
                data-target="#navbar16" style="">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbar16">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="./main.html">메인</a></li>
                <li class="nav-item"><a class="nav-link" href="#">글쓰기</a></li>
                <li class="nav-item"><a class="nav-link" href="#">결제</a></li>
                <li class="nav-item"><a class="nav-link" href="./mypage.html">마이페이지</a></li>
                <li class="nav-item"><a class="nav-link" href="./about.html">ABOUT</a></li>
            </ul>
            <a class="btn navbar-btn ml-md-2 btn-light text-dark">로그아웃</a>
        </div>
    </div>
</nav>
<div class="py-5 text-center" style="">
    <div class="container">
        <div class="row text-dark" style="">
            <div class="mx-auto col-lg-6 px-5 border-left border-right">
                <h1>YOUR Line</h1>
                <p class="mb-3" style="">저희 사이트에 가입해주셔서 감사합니다.<br> 저희는 앞으로 더 나은 서비스를 제공하기 위하여 <br>최선을 다하도록 하겠습니다.</p>
                <form class="text-center" method="POST" autocomplete="off" action="SignUp_process2.jsp"
                      onsubmit="return pwCheck()"
                      name="userInfo">
                    <div class="row">
                        <div class="col-md-12" style="">
                            <div class="form-group"><label for="id">이메일</label>
                                <div class="row">
                                    <div class="col-md-9 pr-0" style="">
                                        <input type="text" name="id" class="form-control" id="id"
                                               onchange="idConditionCheck()" placeholder="j.goethe@werther.com">
                                    </div>
                                    <div class="col-md-3 pl-1 pr-2" style="">
                                        <input type="button" name="confirm_id" value="중복확인"
                                               OnClick="openConfirmid(this.form)"
                                               class="btn my-auto border-primary btn-light"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-row text-center">
                        <div class="form-group col-md-6" style="">
                            <label for="pw">비밀번호</label>
                            <input type="password" id="pw" name="pw" class="form-control" id="pw" placeholder="••••">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="rePw">비밀번호 확인</label>
                            <input type="password" id="rePw" name="rePw" class="form-control" id="rePw"
                                   placeholder="••••">
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 mb-3">
                                <small class="text-muted"> ※ 비밀번호는 8자리 이상 숫자, 문자의 조합으로 작성해 주십시오.</small>
                            </div>
                        </div>
                    </div>
                    <div class="form-group" draggable="true"><label for="name">이름</label> <input type="text" name="name"
                                                                                                 class="form-control text-center"
                                                                                                 id="name"
                                                                                                 onchange="nameConditionCheck()"
                                                                                                 placeholder="두 글자 이상의 한글로 작성해 주십시오">
                    </div>
                    <div class="form-group"><label for="nickname">닉네임</label> <input type="text" name="nickname"
                                                                                     class="form-control text-center"
                                                                                     id="nickname"
                                                                                     onchange="nicknameConditionCheck()"
                                                                                     placeholder="두 글자 이상의 한글로 작성해 주십시오">
                    </div>
                    <div class="form-group"><label for="phone">휴대폰 번호</label> <input type="text" name="phone"
                                                                                     class="form-control text-center"
                                                                                     id="phone"
                                                                                     onchange="phoneConditionCheck()"
                                                                                     placeholder="010AAAABBBB"></div>
                    <div class="container">
                        <div class="row">
                        </div>
                        <div class="row">
                            <div class="col-md-12 mb-2">
                                <div id="radioBtn" class="btn-group">
                                    남자 <input type="radio" name="sex" value="1"/>
                                    여자 <input type="radio" name="sex" value="2"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="form21" value="on">
                            <label class="form-check-label" for="form21"> 다음 <a href="#">이용약관에 </a> 동의합니다. </label>
                        </div>
                    </div>
                    <input type="submit" value="가입하기" id="joinBtn" class="btn border-primary btn-light"
                           disabled='disabled'/>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- footer -->
<div class="border-top border-light bg-black-opacity-6">
    <div class="container">
        <div class="row text-center align-items-center text-white">
            <div class="p-4 col-md-4">
                <h2 class="mb-4">Your Line</h2>
                <p>Your Line은 제주에서 더 가치있는 경험을 추구합니다. 더 이상 기다리지 마세요.</p>
            </div>
            <div class="p-4 col-md-4">
                <h2 class="mb-4">Mapsite</h2>
                <ul class="list-unstyled"><a href="#" class="font-white">Home</a> <br> <a href="#" class="font-white">About
                    us</a> <br> <a href="#" class="font-white">Our services</a> <br> <a href="#" class="font-white">Stories</a>
                </ul>
            </div>
            <div class="p-4 col-md-4">
                <h2 class="mb-4">Contact</h2>
                <p><a href="#" class="font-white">
                    <i class="fa d-inline mr-3 text-muted fa-phone"></i>+082 10 1234 5678</a></p>
                <p><a href="#" class="font-white">
                    <i class="fa d-inline mr-3 text-muted fa-envelope-o"></i>info@yourline.com</a></p>
                <p><a href="#" class="font-white">
                    <i class="fa d-inline mr-3 fa-map-marker text-muted"></i>154904, 제주시, JEJU</a></p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 mt-3">
                <p class="text-center font-white">© Copyright 2019 YourLine - All rights reserved. </p>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    // 입력해야 할 입력란이 뭔가 쓰여져있고 그게 조건을 충족하는지에 대한 여부를 기록하는 배열.
    var check = [false, false, false, false];
    var pw = document.getElementById("pw");

    // 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음
    function popUpX(width) {
        return (window.screen.width / 2) - (width / 2);
    }

    function popUpY(height) {
        return (window.screen.height / 2) - (height / 2);
        // 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
    }

    function regularExCheck(re, e, msg) {
        if (re.test(e.value)) return true;
        alert(msg);
        e.value = "";
        return false;
    }

    function pwCheck() {
        if (!regularExCheck(/^[a-zA-Z0-9]{8,20}$/, pw, "알맞은 형식의 비밀번호를 입력하세요.\n( 8자리 이상...최대 20, 문자 + 숫자")) {
            document.userInfo.pw.value = "";
            document.userInfo.rePw.value = "";      //기존에는 비워지지 않던 문제 해결
            return false;
        }
        if (document.userInfo.pw.value != document.userInfo.rePw.value) {
            alert("비밀번호를 동일하게 입력하세요.");
            document.userInfo.pw.value = "";
            document.userInfo.rePw.value = "";
            return false;
        }
        return true;
    }

    function openConfirmid(inputid) {
        if (inputid.id.value == "") {
            alert("중복확인에러: 아이디를 입력하세요.");
            return;
        }
        var ctxPath = "<%=request.getContextPath()%>";
        var url = ctxPath + "/ConfirmId.jsp?id=" + inputid.id.value;
        open(url, "confirm", "toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=500,height=180,left=" + popUpX(500) + ", top=" + popUpY(300));
    }

    //각 입력란의 조건을 검사하는 함수...
    function idConditionCheck() {
        if (regularExCheck(/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/, document.getElementById("id"), "잘못된 형식의 ID입니다.")) {
            check[0] = true;
        } else {
            check[0] = false;
            document.userInfo.id.value = "";
        }
        inputConditionCheck();
    }

    function nameConditionCheck() {
        if (regularExCheck(/^[가-힝]{2,}$/, document.getElementById("name"), "한글만 입력하세요.(2글자 이상)")) {
            check[1] = true;
        } else {
            check[1] = false;
            document.userInfo.name.value = "";
        }
        inputConditionCheck();
    }

    function nicknameConditionCheck() {
        if (regularExCheck(/^[가-힝]{2,}$/, document.getElementById("nickname"), "한글만 입력하세요.(2글자 이상)")) {
            check[2] = true;
        } else {
            check[2] = false;
        }
        inputConditionCheck();
    }

    function phoneConditionCheck() {
        if (regularExCheck(/^\d{3}\d{4}\d{4}$/, document.getElementById("phone"), "핸드폰 번호를 입력하세요.\n예)01012341234")) {
            check[3] = true;
        } else {
            check[3] = false;
            document.userInfo.phone.value = "";
        }
        inputConditionCheck();
    }

    function inputConditionCheck() {
        for (var i = 0; i < check.length; i++) {
            if (check[i] == false) {
                document.getElementById("joinBtn").disabled = true;
                break;
            } else if (i == 3 && check[i] == true) {//모두 true이면 조건 완료한 상황이니까 가입하기 버튼 활성화시켜주자.
                joinBtnActibation();
            } else {
                continue;//true면 다음꺼 확인
            }
        }
    }

    function joinBtnActibation() {
        document.getElementById("joinBtn").disabled = false;
    }


</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
        integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
<script src="./js/navscroll.js"></script>
<script>
    $('#radioBtn a').on('click', function () {
        var sel = $(this).data('title');
        var tog = $(this).data('toggle');
        $('#' + tog).prop('value', sel);
        $('a[data-toggle="' + tog + '"]').not('[data-title="' + sel + '"]').removeClass('active').addClass('notActive');
        $('a[data-toggle="' + tog + '"][data-title="' + sel + '"]').removeClass('notActive').addClass('active');
    })
</script>
</body>

</html>