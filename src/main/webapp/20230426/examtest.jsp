<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int[] nums = new int[10];
	for(int i=0; i<nums.length; i++) {
		nums[i] = (int)(Math.random()*100);
	}
%>
<% for(int n : nums) { %>
	<%=n %>,
<% } %>