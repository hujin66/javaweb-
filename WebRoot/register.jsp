<%@ page contentType="text/html; charset=gb2312" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>���û�ע��</title>
		<style type="text/css">
			.register_head{
	    		text-align:center;
				font-size: 24px;
				font-weight: 600;
	    		background-color: #0077ff; 
	    		color:#fff;
	    		line-height: 50px;
	    		margin:0 0 0 0;
	    		padding-top:50px;
	    		padding-bottom:50px;
			}
			.register_body{
				padding-top:50px;
	    		padding-bottom:50px;
				background-image: url(img/imge02.png);
				background-repeat:no-repeat;
				background-position:10px 20px;
				background-color: #00bbff;
				margin-top: 0;
				margin-bottom:0;
				color:#ffffff;
				height:300px;
			}
			.register_feet{
				padding-top: 50;
				padding-bottom: 50;
				background-color: #0077ff;
				height:90px;
				position: relative;
			}
		</style>
		<script language="javascript">
		//�ж�������û����������Ƿ�Ϸ�
		function check()
		{
		    var age = document.getElementById("Age")
			if(reg_form.username.value == "")
			{//�ж��û����Ƿ�Ϊ��
				alert("�û�������Ϊ�գ�");
				reg_form.userName.focus();
			}
			else if(reg_form.userPassword.value == "")
			{//�ж������Ƿ�Ϊ��
				alert("�û����벻��Ϊ�գ�");
				reg_form.userPassword.focus();
			}
			else if(reg_form.userPassword.value != reg_form.confirm_UserPassword.value)
			{//�ж���������������Ƿ�һ��
				alert("������������벻һ�£�");
				reg_form.userPassword.focus();				
			}
			else if(age.value<0||age.value>120)
			{
			    alert("���䲻�Ϸ���Ӧ��0-120֮��");
			    age.focus();
			}
			else
			{
				//������תĿ��ҳ��
				reg_form.action="login_conf.jsp";
			}
		}
		</script>
	</head>
	<body>
		<div class="register_head">
			���û�ע��
		</div>
		<div align="center" class="register_body">
		<form name="reg_form" method="post" onSubmit="check()">
		<table width="60%" border="0">
			<tr>
			<td width="30%" align="right">�������û�����</td>
			<td width="30%" align="left"><input type="text" name="username" pattern="^[a-zA-Z0-9_-]{4,16}$" litle="��"></td>
			<td width="40%" align="left">������4-16λ������ĸ���ֻ��»���</td>
			</tr>
			<tr>
			<td width="30%" align="right">���������룺</td>
			<td width="30%" align="left"><input type="password" name="userPassword" pattern="\w{6,24}"></td>
			<td width="40%" align="left">����6-24֮����������ֻ���ĸ</td>
			</tr>
			<tr>
			<td width="30%" align="right">������ȷ�����룺</td>
			<td width="30%" align="left"><input type="password" name="confirm_UserPassword"></td>
			<td width="40%" align="left"></td>
			</tr>
			<tr>
			<td width="30%" align="right">�ֻ����룺</td>
			<td width="30%" align="left"><input type="text" name="mobilephonenumber" pattern="^1[358]\d{9}$"></td>
			<td width="40%" align="left">11λ���֣�13��15��18��ͷ</td>
			</tr>
			<tr>
			<td width="30%" align="right">���䣺</td>
			<td width="30%" align="left"><input type="text" name="age" id="Age"></td>
			<td width="40%" align="left">���ó���0-120��</td>
			</tr>
			<tr>
			<td width="30%" align="right">�ʱࣺ</td>
			<td width="30%" align="left"><input type="text" name="zip" pattern="\d{6}"></td>
			<td width="40%" align="left">6λ�������</td>
			</tr>
			<tr>
			<td width="50%" align="center" colspan="2">
			<br>
			<input type="submit" name="sub" value="ע��">&nbsp;&nbsp;
			<input type="reset" name="res" value="����">
			</td>			
			</tr>
		</table>
		</form>
		</div>
		<div class="register_feet"></div>
	</body>
</html>