<%@ page contentType="text/html; charset=gb2312" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
    <title>starting page</title>
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	<!--
	.STYLE2 {
		font-family: "Courier New", Courier, monospace;
		font-size: 16px;
		font-weight: 600;
	}
	-->
	.login_head{
		padding-top: 50;
		padding-bottom: 50;
	    text-align:center;
		font-family: "Courier New", Courier, monospace;
		font-size: 24px;
		font-weight: 600;
	    background-color: #0077ff; 
	    color:#fff;
	    height:50px;
	    line-height: 50px;
	    margin:0 0 0 0;
	}
	.login_body{
		background-image: url(img/imge02.png);
		background-repeat:no-repeat;
		background-position:100px 20px;
		padding-top: 80;
		background-color: #00bbff;
		margin-top: 0;
		margin-bottom:0;
		padding-bottom:80;
	}
	.login_feet{
		padding-top: 50;
		padding-bottom: 50;
		background-color: #0077ff;
		height:90px;
		position: relative;
	}
	.login_feet div{
		margin:0 0 0 0;
		width:1000px;height:50px;
		position: absolute;
		left:100px;
		top:25px;
	}
	.login_feet div a{
		margin:0 0 0 0;
		width:80px;height:50px;
		display: block;
		text-decoration: none;
		color:#000;
		background-color: #fff;
		text-align:center;
		line-height:50px;
		position: absolute;left:400px;
	}
	</style>
</head>

<body>
<dir class="login_head">
 �û���¼ҳ��
</dir>
<%
    if(request.getAttribute("error") != null){
    %>
       <center style="background-color: #00bbff;">
         <h3> <font color="red" ><%=request.getAttribute("error") %></font></h3>
       </center>
  <%  }
 %>
 <%String info=request.getParameter("info");
 if(info==null)info="";%>
 <font color=red><%=info %></font>
 <dir class="login_body">
 	<form id="form1" name="form1" method="post" action="suess.jsp">
  <table width="337" height="124" border="0" align="center" style="color: White; ">
    <tr>
      <td width="77">�û�����</td>
      <td width="107"><label>
        <input name="username" type="text" id="id" size="20" maxlength="20" />
      </label></td>
    </tr>
    <tr>
      <td>��&nbsp;&nbsp;&nbsp;�룺</td>
      <td><label>
        <input name="password" type="password" id="password" size="20" maxlength="20" />
      </label></td>
    </tr>
    <tr>
      <td><label>
        <input type="submit" name="submit" id="submit" value="��¼" />
      </label></td>
      <td><label>
        <input type="reset" name="reset" id="reset" value="����" />
      </label></td>
    </tr>
  </table>
</form>
 </dir>
<div class="login_feet">
	<!-- <span></span> -->
	<div>
		<div style="width:240px;height: 50px;line-height:50px;text-align:center;color:#fff;position: absolute;top:0px;">��û�˺ţ�����Ҳఴťע�ᡣ</div>
		<a href=register.jsp>ע���û�</a>
	</div>
</div>
  </body>
</html>
