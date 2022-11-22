<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
         <tr>
           <td>제목</td>
           <td>${vo.title}</td>
         </tr>
         <tr>
           <td>내용</td>           
           <td>${vo.contents}</td>
         </tr>
         <tr>
           <td>작성자</td>
           <td>${vo.writer}</td>
         </tr>
         <tr>
           <td>작성일</td>
           <td>${vo.indate}</td>
         </tr>
         <tr>
           <td colspan="2" align="center">
              <c:if test="${mvo.memId eq vo.writer}">
              <button onclick="location.href='boardUpdateForm.do/'+${vo.idx}">수정</button>
              <button onclick="location.href='boardDelete.do/'+${vo.idx}">삭제</button>
              </c:if>
              <button onclick="location.href='boardList.do'">리스트</button>
           </td>
         </tr>
       </table>
</body>
</html>