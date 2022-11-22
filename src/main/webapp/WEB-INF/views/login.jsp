<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div>
    <c:if test="${empty mvo}">
      <form action="login.do" method="post">
        <div>
          <label for="memId">ID:</label>
          <input type="text" name="memId">
        </div>
        <div>
          <label for="memPwd">PW:</label>
          <input type="password" name="memPwd">
        </div>
        <button type="button">회원가입</button>
        <button type="submit">로그인</button>
      </form>
    </c:if>
  </div>
</body>
</html>