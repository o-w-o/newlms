<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    //将项目的根取出来，页面中不再使用相对路径
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":"
            + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>注册 | 教师</title>
        <link href="<%=path%>/css/base.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%=path%>/css/project.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%=path%>/css/lms.css" rel="stylesheet" type="text/css" />
        <style media="screen">html{height:100%}body{min-height: 100%;overflow: scroll;}</style>
    </head>
    <body  class="hidden-x stage-image" id="lms_tch_reg"  style="background-image:url(<%=path%>/images/bg-for-role.jpg)">
        <div class="container ">
            <div class="row">
                <div class="col-md-3 stage-box">
                    <div class="pull-left">

                        <a href="<%=path%>/login">
                            <span><i class="fbtn waves-attach waves-circle waves-effect icon">arrow_back</i>  返回登陆界面 </span> 
                        </a>
                    </div>
                </div>

                <div class="col-md-6 ">
                    <div class="card login-form">
                        <form class="form-horizontal tab-content width-control stage-side " method="post" name="form_login" action="teacher_register_message" >
                            <div class="" id="account-title">
                                <h1 class="page-header">
                                    注册
                                </h1>
                            </div>
                            <div  class="tab-pane fade in active" id="login-start">
                                <div>

                                    <!-- 工号 -->
                                    <div class="form-group form-group-label">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <label class="floating-label" for="tn">工号：</label>
                                                <input type="text" id="tn" name="tn" class="form-control" placeholder="请输入您的工号 " maxlength="16" onblur="verifyText('tn', 'tnMsg');">
                                            </div>
                                        </div>
                                        <span id="tnMsg" class="text-error"></span>   
                                    </div> 

                                    <!-- 姓名 -->
                                    <div class="form-group form-group-label">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <label class="floating-label" for="name">姓名：</label>
                                                <input type="text" id="name" name="name" class="form-control" placeholder="请输入您的姓名" maxlength="16" onblur="verifyText('name', 'nameMsg');" onfocus="initMessage('nameMsg');" />
                                            </div>
                                        </div>
                                        <span id="nameMsg" class="text-error"></span>
                                    </div>
                                    <!--<br>-->

                                    <!-- 身份证号 -->
                                    <div class="form-group form-group-label">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <label class="floating-label" for="ID">身份证号：</label>
                                                <input type="text" id="ID" name="ID" class="form-control" placeholder="请再次输入您的身份证号" onblur="verifyText('ID', 'IDMsg');" >
                                            </div>
                                        </div>
                                        <span id="IDMsg" class="text-error"></span>
                                    </div>

                                    <!--性别-->
                                    <div class="form-group form-group-label">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <label class="floating-label" for="xingbie">性别：</label>
                                                <select class="form-control" required="required" name="sex" >                                       
                                                    <option value="女" type='hide'>女</option>
                                                    <option value="男" type='hide' selected="">男</option>                                     
                                                </select></div>
                                        </div>
                                    </div>
                                    <span class="text-error"></span>
                                    <!--<br>-->

                                    <!-- 职称 -->
                                    <div class="form-group form-group-label">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <label class="floating-label" for="Vname">职务：</label>
                                                <select class="form-control" required="required" name="Vname" >
                                                    <option value="教师" type='hide'>教师</option>
                                                    <option value="教务员" type='hide'>教务员</option>
                                                    <option value="院长" type='hide'>院长</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <!--<br>-->
                                    <!-- 院系 -->
                                    <div class="form-group form-group-label">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <label class="floating-label" for="institute">院系：</label>
                                                <select class="form-control" name="institute" id="szxy">
                                                    <option value="软件学院">
                                                        软件学院
                                                    </option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <span class="text-error"></span>
                                    <!--<br>-->

                                    <!-- 手机号码 -->
                                    <div class="form-group form-group-label">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <label class="floating-label" for="tel">手机：</label>
                                                <input type="text" id="tel" name="tel" class="form-control" placeholder="请输入您常用的手机号码" me="pn" onblur="verifyText('tel', 'telMsg');" >
                                            </div>
                                        </div>
                                        <span id="telMsg" class="text-error"></span>
                                    </div>
                                    <!--<br>-->

                                    <!-- QQ -->
                                    <div class="form-group form-group-label">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <label class="floating-label" for="qq">扣扣：</label>
                                                <input type="text" id="qq" name="qq" class="form-control" placeholder="请输入您的QQ号" me="qq" onblur="verifyText('qq', 'qqMsg');">
                                            </div>
                                        </div>
                                        <span id="qqMsg" class="text-error"></span>
                                    </div>
                                    <!--<br>-->

                                    <!-- 密码 -->
                                    <div class="form-group form-group-label">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <label class="floating-label" for="password_plain">密码：</label>
                                                <input type="password" name="password_plain" id="passwFrist" class="form-control" placeholder="请输入密码" me="psw" onblur="verifyText('passwFrist', 'passwFristMsg');
                                                       " onfocus="initMessage('passwFristMsg');">
                                                <input type="hidden" name="password_md5"> 
                                            </div>
                                        </div>
                                        <span id="passwFristMsg" class="text-error"></span>
                                    </div>

                                    <!--下一步按钮-->
                                    <div class="box-small"></div>
                                    <div class="form-group">
                                        <a id="fornext" onclick="isVaildOfInfo()" data-toggle="tab" href="#"><div class="btn btn-brand btn-block">下一步</div></a>
                                    </div>
                                    <div class="stage-box"></div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="login-next">

                                <!-- 工号 -->
                                <div class="form-group form-group-label">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <label class="floating-label" for="tnCheck">工号：</label>
                                            <input type="text" id="tnCheck" class="form-control" name="tnCheck" placeholder="请再次输入您的工号 " maxlength="16" onblur="verifyText('tnCheck', 'tnCheckMsg');">
                                        </div>
                                    </div>
                                    <span id="tnCheckMsg" class="text-error"></span>
                                </div>

                                <!-- 姓名 -->
                                <div class="form-group form-group-label">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <label class="floating-label" for="nameCheck">姓名：</label>
                                            <input type="text" id="nameCheck" class="form-control" name="nameCheck" placeholder="请再次输入您的姓名" width="180px" height="30px" size="25" maxlength="16" onblur="verifyText('nameCheck', 'nameCheckMsg');">
                                        </div>
                                    </div>
                                    <span id="nameCheckMsg" class="text-error"></span>
                                </div>
                                <!--<br>-->

                                <!-- 手机号码 -->
                                <div class="form-group form-group-label">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <label class="floating-label" for="IDCheck">身份证号：</label>
                                            <input type="text" id="IDCheck" class="form-control" name="IDCheck" placeholder="请再次输入您的身份证号" me="pn" onblur="verifyText('IDCheck', 'IDCheckMsg');">
                                        </div>
                                    </div>
                                    <span id="IDCheckMsg" class="text-error"></span>
                                </div>

                                <!-- 密码 -->
                                <div class="form-group form-group-label">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <label class="floating-label" for="passwLast">密码：</label>
                                            <input type="password" id="passwLast" class="form-control" name="passwLast" placeholder="请再次输入您的密码" me="psw" onblur="verifyText('passwLast', 'passwLastMsg');">
                                        </div>
                                    </div>
                                    <span id="passwLastMsg" class="text-error"></span>
                                </div>

                                <!-- 验证码 -->
                                <div class="form-group form-group-label">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <label class="floating-label" for="ccd">验证码：</label>

                                            <input id="ccd" name="ccd" class="form-control ui-widget-content easyui-validatebox" type="text" maxlength="4"  
                                                   data-options="required:true,validType:'chk_code',missingMessage:'请输入验证码',tipPosition:'left' "
                                                   title="验证码区分不大小写，看不清楚请单击图片"  onblur="verifyText('ccd', 'ccdMsg');">
                                            <span class="pull-right"  style="position: relative;bottom: 25px; z-index: 1000; cursor:pointer;"> <img id="ccdImage" style="border:0" title="看不清楚请单击图片" onclick="updateCcdImage()" ></span>
                                            
                                        </div>
                                    </div>
                                    <span id="ccdMsg" class="text-error"></span>
                                </div>



                                <div class="box-small"></div>
                                <div class="form-group">

                                    <div onclick="submitInfo()" type="submit" class="btn btn-brand-accent btn-block">注册</div>
                                    <br />
                                    <a href="#login-start" data-toggle="tab"><div class="btn btn-brand btn-block">上一步</div></a>
                                </div>
                                <div class="stage-box"></div>         


                            </div>
                        </form>
                    </div>
                    
                </div>
                        
                <div class="col-md-3 stage-box">

                    <div class="pull-right">
                        <a href="role">
                            <span><i class="fbtn waves-attach waves-circle waves-effect icon">arrow_forward</i> 重新选择角色 </span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <script src="<%=path%>/js/jquery.min.js"></script> 
        <script src="<%=path%>/js/base.min.js"></script>
        <script src="<%=path%>/js/project.min.js"></script>
        <script  src="<%=path%>/js/md5.js"></script>                            
        <script>
        function getRootPath() {
            return '<%=path%>';
        }
        
        function isEqualOfInfo() {
            if(verifyText('tnCheck', 'tnCheckMsg')&&verifyText('nameCheck', 'nameCheckMsg')&&verifyText('IDCheck', 'IDCheckMsg')&&verifyText('passwLast', 'passwLastMsg')){
                return true;
            }else
                return false;
        }
        
        function isVaildOfInfo(){
            var status = false;
            if(verifyText('tn', 'tnMsg')&&verifyText('name', 'nameMsg')&&verifyText('tel', 'telMsg')&&verifyText('qq', 'qqMsg')&&verifyText('passwFrist', 'passwFristMsg')){
                status = true;
            }else
                status = false;
            
            if (status === true) {
                $('#fornext').attr("href", "#login-next");
            } else {
                $('#fornext').attr("href", "#");
                alert("请填写完成并且检查无误后再行下一步");
            }

        }
        
        function submitInfo() {

            if (isEqualOfInfo()&&verifyText('ccd', 'ccdMsg')) {
                document.form_login.password_md5.value = hex_md5(document.getElementById('passwLast').value);
                var jssz = document.getElementById("tn").value;
                $.ajax({
                    type: "get", //提交方式
                    url: "cjxh", //提交的页面，方法名
                    data: {jssz: jssz}, //参数，如果没有，可以为null
                    success: function (data) {
                        if (parseInt(data) === 1) {
                            if (window.confirm("你是否要注册? 注册后带着你的注册信息找教务员!!!")) {
                                document.form_login.submit();
                            }
                        } else {
                            document.form_login.submit();
                        }
                    },
                    error: function () {
                        alert("error!！");
                    }
                });

            } else {
                alert("请填写完成并且检查无误后再行提交");
            }

        }

        </script>
        <script src="<%=path%>/js/api.common.js"></script>
        <script>
            CommonAPI.setDS.Institute();
            CommonAPI.setHS.Institute('szxy');
            updateCcdImage();
        </script>
    </body>
</html>
