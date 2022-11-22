<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
<form action="boardUpdate.do" method="POST">
         <input type="hidden" name="idx" value="${vo.idx}"/>
         <table>
           <tr>
             <td>제목</td>
             <td><input type="text" name="title" value="${vo.title}"/></td>
           </tr>
           <tr>
             <td>내용</td>
             <td><textarea rows="10" name="contents">${vo.contents}</textarea></td>
           </tr>
           <tr>
             <td colspan="2" align="center">
          
                <button type="submit">수정</button>
                <button type="reset">취소</button>
                <button type="button" onclick="location.href='boardList.do'">리스트</button>
             </td>
           </tr>
         </table>
      </form>
</body>
</html>