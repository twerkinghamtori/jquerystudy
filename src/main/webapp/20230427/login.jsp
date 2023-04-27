<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<sql:setDataSource var="con" driver="org.mariadb.jdbc.Driver" url="jdbc:mariadb://localhost:3306/gdudb" user="gdu" password="1234" />
<sql:query var="rs" dataSource="${con}"> <%-- rs : select 구문 결과 데이터(ResultSet) --%>
	select * from member where id=? and pass=?
	<sql:param>${param.id }</sql:param> <%-- 순서대로 ?에 들어감 --%>
	<sql:param>${param.pass }</sql:param>
</sql:query>

<c:if test="${! empty rs.rows }"> <%-- rs.rows 1개의 행(레코드) --%>
	<h1>반갑습니다. ${rs.rows[0].name }님</h1>
</c:if>
<c:if test="${empty rs.rows }">
	<h1><font color="red">아이디 또는 비밀번호를 확인하세요.</font></h1>
</c:if>
