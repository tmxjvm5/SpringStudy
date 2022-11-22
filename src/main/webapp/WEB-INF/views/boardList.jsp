<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
  integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js"
  integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
  integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="./css/my.css">
<script type="text/javascript">
	function alt(){
		if(${mvo.memId==null}){
			console.log('비로그인');
			alert("로그인후 글쓰기가 가능합니다");
			
		}else{
			location.href="boardForm.do";
		}
	}
</script>

</head>

<body>
  <header class="p-3 text-bg-dark">
    <div class="container">
      <!-- <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
       <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap">
            <use xlink:href="#bootstrap"></use></svg>
        </a> -->
      <c:if test="${empty mvo}">
        <div class="text-end">
          <button type="button" onclick="location.href='login.do'" class="btn btn-outline-light me-2">로그인</button>
          <button type="button" onclick="location.href='join.do'" class="btn btn-warning">회원가입</button>
        </div>
      </c:if>
      <c:if test="${!empty mvo}">
        <form action="logout.do">
          <div>
            <label>${mvo.memName}님 방문을 환영합니다.</label>
          </div>
          <button type="submit">로그아웃</button>
        </form>
      </c:if>
    </div>
    <!-- </div>  -->
  </header>

  <h2 class="center">Board</h2>
    <table>
      <tr>
        <td>번호</td>
        <td>제목</td>
        <td>내용</td>
        <td>조회수</td>
        <td>작성자</td>
        <td>작성일자</td>
      </tr>
      <c:forEach var="vo" items="${list}">
        <tr>
          <td>${vo.idx}</td>
          <td>
            <a href="boardView.do?idx=${vo.idx}">${vo.title}</a>
          </td>
          <td>${vo.contents}</td>
          <td>${vo.count}</td>
          <td>${vo.writer}</td>
          <td>${vo.indate}</td>
        </tr>
      </c:forEach>
      <tr>
        <td>
          <button type="button" onclick="alt()">글쓰기</button>
        </td>
      </tr>
    </table>
</body>
</html>