<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js"
	integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk"
	crossorigin="anonymous"></script>

<script type="text/javascript">
	function writeCheck(){
		 if(document.getElementById("title").value==""){
			        alert("제목을 입력하세요");
			        return;
			    }
			    if(document.getElementById("contents").value==""){
			        alert("내용을 입력하세요");
			        return;
			    }
		writeForm.submit();
	}
</script>
</head>
<body>
	<form name="writeForm" action="boardWrite.do" method="post">
		<table>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title" id="title"></td>
			</tr>
			<tr>
				<td>글쓴이</td>
				<td><input type="text" name="writer" value="${mvo.memId}"
					readonly></td>
			</tr>
			<tr>
				<td>글내용</td>
				<td><textarea name="contents" id="contents" rows="10" cols="20"></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="글쓰기" onclick="writeCheck()"></td>
				<td colspan="2"><input type="reset" value="취소"></td>
			</tr>
		</table>
	</form>
</body>
</html>