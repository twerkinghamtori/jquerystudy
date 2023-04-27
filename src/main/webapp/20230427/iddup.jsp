<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<sql:setDataSource var="con" driver="org.mariadb.jdbc.Driver" url="jdbc:mariadb://localhost:3306/gdudb" user="gdu" password="1234" />
<sql:query var="rs" dataSource="${con}"> 
	select * from member where id=?
	<sql:param>${param.id }</sql:param> 
</sql:query>

<c:if test="${! empty rs.rows}">
	<font color=red size=1>이미 존재하는 아이디 입니다</font><br>
	<script>	
		document.querySelector("#id").value= ""
	</script>	
</c:if>
<c:if test="${empty rs.rows}">
	<font size=1>회원가입이 가능한 아이디 입니다.</font><br>	
</c:if>