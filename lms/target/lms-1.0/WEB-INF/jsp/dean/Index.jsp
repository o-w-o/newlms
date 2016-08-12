<%-- 
    Document   : console_dean
    Created on : 2016-4-25, 12:00:28
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 
<%
    //    将项目的根取出来，页面中不再使用相对路径
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
        + request.getServerName() + ":"
        + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="zh-cn">
    <head>
        <meta charset="UTF-8">
        <meta content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width" name="viewport">
        <title>教务系统 | 院长</title>

        <!-- css -->
        <link href="<%=path%>/css/base.min.css" rel="stylesheet" />
        <link href="<%=path%>/css/project.min.css" rel="stylesheet" />
        <link href="<%=path%>/css/lms.css" rel="stylesheet" />
        <link href="<%=path%>/css/jquery.fs.boxer.css" rel="stylesheet" />

        <script src="<%=path%>/js/jquery.min.js"></script>



        <style>
            .content-header{
                background-color: #3F51B5 !important;
                padding-top: 24px;
                padding-bottom:  24px;
            }
            .content-header h1{
                font-size: 36px;
                color: #000;
            }
            #lms_dean header{
                background-color: #333;
            }
            #lms_dean .btn{
                min-width: 100px;
            }
            #lms_dean .card-side .btn-golden{
                display: block;
                max-width: 150px;
                margin-top: 15px;
            }
            #lms_dean .tab-content{
                min-height: 1000px;
            }
            #lms_dean_tnav_pInfo{
                padding-top: 120px;
            }
            /******************************************************************/
            #lms_dean_t,
            #lms_dean_d{
                margin: 0;
                padding: 200px 0;
            }
            #lms_dean_t .bg-content,
            #lms_dean_d .bg-content{
                position: absolute;
                background-color: #333;
                top: 0;
                left: 0;
                right: 0;
                height: 450px;
            }
            #lms_dean_tnav,
            #lms_dean_dnav{
                position: absolute;
                top: -55px;
                width: 100%;
                padding: 0;
                left: 0;
            }
            #lms_dean_tnav div,
            .lms-control-list div{
                display: inline-block;
            }
            #lms_dean_tnav select{
                height: 36px;
            }
            .dropdown.open .dropdown-menu {
                opacity: 1;
                -webkit-transform: scale(1,1);
                transform: scale(1,1);
                width: 600px;
                left: -496px;
            }
            .dropdown>ul{
                position: absolute;
                left: 0;
            }
            .tree-node{
                z-index: 1000;
                position: relative;
            }
            .dropdown>ul>li>ul{
                padding-left: 100px;
                position: relative;
                top:-20px;
                color: #888;
            }
            .dropdown>ul>li:hover{
                cursor: pointer;
            }
            .dropdown>ul>li>ul>li:hover{
                cursor: pointer;
            }
            .text-golden{
                color:goldenrod ;
            }
            .text-golden:hover{
                color:gold ;
            }
            /******************************************************************/
            .img-left{
                position: relative;
                left: -65%;
            }
            .img-right{
                position: relative;
                right:  0;
            }
            #lms_dean_d{
                padding-top: 210px;
            }
            #lms_dean_dbtn .img-left,
            #lms_dean_dbtn .img-right{
                height: 120px;
                min-height: 100%;
            }
            #lms_dean_d .modal-content{
                width: 520px;
                margin: auto;
                margin-top: 210px;
            }
            #lms_dean_d .btn-brand{
                background-color: transparent;
            }
            .small {
                color: grey;
                font-size: 0.8em;
            }
        </style>
    </head>
    <body class="page-default tab-content" id='lms_dean'>

        <!--院长区 主区-->
        <div id='lms_dean_main' class="tab-pane fade in active">

            <!--            
            <div class="content-header ui-content-header">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12 ">
                            <h1 class="content-heading">管理员</h1>
                            <div class="space-block"></div>
                        </div>
                    </div>
                </div>
            </div>
            -->

            <header class="header " id="tree-header">
                <nav class="tab-nav tab-nav-gold hidden-xx ui-tab">
                    <ul class="nav nav-list">
                        <li><a class="waves-attach waves-light waves-effect" data-toggle="tab" href="#lms_dean_tnav_class"><span class="text-white">院长按钮</span></a></li>
                        <li  class="active"><a class="waves-attach waves-light waves-effect" data-toggle="tab" href="#lms_dean_tnav_pInfo"><span class="text-white">个人面板</span></a></li>
                        <li class="" style="position:absolute;right: 0;"><a class="waves-attach waves-light waves-effect"  href="<%=path%>/logout"><span class="text-white">退出系统<span class="icon margin-left-sm">exit_to_app</span></span></a></li>
                    </ul>
                </nav>
            </header>

            <div class="container tab-content">
                <div class="row tab-pane fade in active" id="lms_dean_tnav_pInfo">

                    <!-- 角色转换 -->
                    <div class="col-md-12"> 
                        <div class="card">

                            <aside class="card-side pull-left">
                                <sec:authorize access="hasRole('ROLE_ADMIN') or hasRole('ROLE_DEAN')">
                                    <a  href="#" class='fbtn fbtn-lg  btn-golden'>
                                        D<span class="fbtn-text fbtn-text-left">我的角色：院长</span>
                                    </a>
                                </sec:authorize>
                            </aside>
                            <div class="card-main">
                                <div class="card-inner">
                                    <section class="card-heading">院长视角（角色转换）</section>
                                    <section>
                                        <%--<sec:authorize access="hasRole('ROLE_ADMIN') or hasRole('ROLE_DEAN')">
                                            <a  data-toggle="tab" href="#lms_dean_d" class='btn btn-brand  waves-attach  waves-light waves-effect' style="margin:auto;">
                                               【A 管理员】
                                            </a>
                                        </sec:authorize>--%>
                                        <sec:authorize access="hasRole('ROLE_ACDEMIC') or hasRole('ROLE_ADMIN') or hasRole('ROLE_DEAN')">
                                            <a href="<%=path%>/acdemic" class='btn btn-brand'>
                                                【A 教务员】
                                            </a>
                                        </sec:authorize>
                                        <sec:authorize access="hasRole('ROLE_ADMIN')">
                                            <a href="<%=path%>/teacher" class='btn btn-brand'>
                                                【T 教职】
                                            </a>
                                        </sec:authorize>
                                    </section>
                                </div>
                                <div class="card-action">
                                    <div class="card-action-btn" style="margin:6px 16px;">
                                        <a href="http:<%=path%>/../acdemic/teapnda" class="btn btn-flat lms-c-text-light stage-card waves-attach pull-right" style="text-align: right;"> 查看 / 修改 个人信息<span class="icon margin-left-sm">open_in_new</span> </a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>      
                    <!-- 角色转换 END-->                
                </div>

                <div class="row tab-pane fade " id="lms_dean_tnav_class" style="min-height: 500px;">             
                    
                    <!--院长区 功能区-->
                    <div class="bg-content"></div>
                    <div class="container " style="position:relative;">

                        <div class="row width-control stage-box" id="lms_dean_dbtn">
                            <div class="col-md-5 card">
                                <aside class="card-side card-side-img pull-right">
                                    <img alt="alt text" src="<%=path%>/images/dean_end.bmp" class="img-right">
                                </aside>
                                <div class="card-main">
                                    <div class="card-inner">
                                        <p class="card-heading">Great End !</p>
                                        <p class="margin-bottom-lg">
                                            确定这学期结束了么(⊙o⊙)？
                                        </p>
                                    </div>
                                    <div class="card-action">
                                        <div class="card-action-btn pull-left">
                                            <button class="btn btn-flat waves-attach waves-effect" data-toggle="modal" data-target="#modalEndTerm"  >CLICK TO CONTINUE</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-5 col-md-offset-2 card">
                                <aside class="card-side card-side-img pull-left">
                                    <img alt="alt text" src="<%=path%>/images/dean_start.bmp"  class="img-left">
                                </aside>
                                <div class="card-main">
                                    <div class="card-inner">
                                        <p class="card-heading">Good Start !</p>
                                        <p class="margin-bottom-lg">
                                            确定要开始新的学期了么\(≧▽≦)/
                                        </p>
                                    </div>
                                    <div class="card-action">
                                        <div class="card-action-btn pull-left">
                                            <button class="btn btn-flat waves-attach waves-effect" data-toggle="modal" data-target="#modalStartTerm"  >CLICK TO CONTINUE</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="modal fade" id="modalEndTerm" role="dialog" >
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-heading">
                                        <a class="modal-close" data-dismiss="modal">×</a>
                                        <h2 class="modal-title">:-)</h2>
                                    </div>
                                    <div class="modal-inner">
                                        <p class = "test-center h4">您确定要结束本学期了么？<span class="small">做最后一次确认吧</span></p>
                                    </div>
                                    <div class="modal-footer">
                                        <p class="text-right"><button class="btn btn-flat btn-brand waves-attach waves-effect" data-dismiss="modal" type="button">Close</button><button class="btn btn-flat btn-brand waves-attach waves-effect" data-dismiss="modal" type="button" id ="end">OK</button></p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="modal fade" id="modalStartTerm" role="dialog" >
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-heading">
                                        <a class="modal-close" data-dismiss="modal">×</a>
                                        <h2 class="modal-title">:-)</h2>
                                    </div>
                                    <div class="modal-inner">
                                        <p class = "test-center h4">您确定要开始新的学期了么？<span class="small">做最后一次确认吧</span></p>
                                    </div>
                                    <div class="modal-footer">
                                        <p class="text-right"><button class="btn btn-flat  btn-brand waves-attach waves-effect" data-dismiss="modal" type="button">Close</button><button class="btn btn-flat btn-brand waves-attach waves-effect" data-dismiss="modal" type="button" id ="begin">OK</button></p>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <script>
                            $(function () {


                                $("#begin").click(function () {
                                    $.post("<%=path%>/dean/start",
                                            function (data) {

                                                if (data === "1") {
                                                    alert("新学期开始成功")
                                                }
                                                ;
                                                if (data === "0") {
                                                    alert("新学期开始失败")
                                                }
                                                ;
                                            })
                                });
                                $("#end").click(function () {

                                    $.post("<%=path%>/dean/end",
                                            function (data) {
                                                if (data == "1") {
                                                    alert("旧学期结束成功")
                                                }
                                                ;
                                                if (data == "0") {
                                                    alert("旧学期结束失败")
                                                }
                                                ;
                                            }
                                    );
                                });
                            });
                        </script>
                    </div>

                </div>

                <footer class="ui-footer" id="tree-footer">
                    <div class="container">
                        <p >
                            <strong>Copyright © 2015 河南大学软件学院  · 【教务系统】</strong>
                        </p>
                    </div>
                </footer>



            </div>
            <!--院长区 主区 END-->
        </div>
        <!--院长区 END-->   

        <!--返回顶部-->
        <div class="fbtn-container" id="scrollUp">
            <div class="fbtn-inner">
                <a class="fbtn fbtn-lg fbtn-brand waves-attach waves-circle waves-light waves-effect" >T<span class="fbtn-text fbtn-text-left">返回顶部</span></a>
            </div>
        </div>



        <!-- js -->
        <script src="<%=path%>/js/base.min.js" type="text/javascript"></script>
        <script src="<%=path%>/js/project.min.js" type="text/javascript"></script>
        <script src="<%=path%>/js/configure.js" type="text/javascript"></script>

        <script type="text/javascript">
            var browserVersion = window.navigator.userAgent.toUpperCase();
            var isOpera = false, isFireFox = false, isChrome = false, isSafari = false, isIE = false;
            function reinitIframe(iframeId, minHeight) {
                try {
                    var iframe = document.getElementById(iframeId);
                    var bHeight = 0;
                    if (isChrome == false && isSafari == false)
                        bHeight = iframe.contentWindow.document.body.scrollHeight;
                    var dHeight = 0;
                    if (isFireFox == true)
                        dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
                    else if (isIE == false && isOpera == false)
                        dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
                    else if (isIE == true && !-[1, ] == false) {
                    } //ie9+
                    else
                        bHeight += 3;

                    var height = Math.max(bHeight, dHeight);
                    if (height < minHeight)
                        height = minHeight;
                    iframe.style.height = height + "px";
                } catch (ex) {
                }
            }
            function startInit(iframeId, minHeight) {
                isOpera = browserVersion.indexOf("OPERA") > -1 ? true : false;
                startInit('iframepage', 430);
                //            var ifm= document.getElementById("iframepage");   
                //          isFireFox = browserVersion.indexOf("FIREFOX") > -1 ? true : false;
                isChrome = browserVersion.indexOf("CHROME") > -1 ? true : false;
                isSafari = browserVersion.indexOf("SAFARI") > -1 ? true : false;
                if (!!window.ActiveXObject || "ActiveXObject" in window)
                    isIE = true;
                window.setInterval("reinitIframe('" + iframeId + "'," + minHeight + ")", 100);
            }

            function iFrameHeight() {
                var subWeb = document.frames ? document.frames["iframepage"].document : ifm.contentDocument;
                //            if(ifm != null && subWeb != null) {
                //               ifm.height = subWeb.body.scrollHeight;
                //              // ifm.width = subWeb.body.scrollWidth;
                //            }   
            }


        </script>      
    </body>  
</html>
