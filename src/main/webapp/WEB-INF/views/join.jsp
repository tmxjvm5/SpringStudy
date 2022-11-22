<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
<title>Insert title here</title>

<script>
        $(function(){
            $('#check_btn').click(function(){
                var check_val = $('#check_input').val();
                var data = {
                    "b_no": [check_val] // 사업자번호 "xxxxxxx" 로 조회 시,
                };
                
                $.ajax({
                  url: "https://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey=WTuu0W1dJ4sq7hoRYcDCgKcHRQUaf6UajpAF8xtP%2Fv8PGrKCBEEhgvR5kauONv8s9PxPVjClHgy2mjAzNxB%2Fyw%3D%3D",  // serviceKey 값을 xxxxxx에 입력
                  type: "POST",
                  data: JSON.stringify(data), // json 을 string으로 변환하여 전송
                  dataType: "JSON",
                  contentType: "application/json",
                  accept: "application/json",
                  success: function(result) {
                      alert(result.data[0].tax_type);
                  },
                  error: function(result) {
                      alert(result.responseText); //responseText의 에러메세지 확인
                  }
                });
            });            
        });
        function joinform_check() {
        	  //변수에 담아주기
        	  var memId = document.getElementById("memId");
        	  var memPwd = document.getElementById("memPwd");
        	  var memName = document.getElementById("memName");
        	  

        	  if (memId.value == "") { //해당 입력값이 없을 경우 같은말: if(!uid.value)
        	    alert("아이디를 입력하세요.");
        	    memId.focus(); //focus(): 커서가 깜빡이는 현상, blur(): 커서가 사라지는 현상
        	    return false; //return: 반환하다 return false:  아무것도 반환하지 말아라 아래 코드부터 아무것도 진행하지 말것
        	  };

        	  if (memPwd.value == "") {
        	    alert("비밀번호를 입력하세요.");
        	    memPwd.focus();
        	    return false;
        	  };

        	  

        	 

        	  

        	  if (memName.value == "") {
        	    alert("이름을 입력하세요.");
        	    memName.focus();
        	    return false;
        	  };

        	  

        	  

        	  //입력 값 전송
        	  document.join_form.submit(); //유효성 검사의 포인트   
        	}
    
        </script>
</head>
<body>
  <form action="join.do" method="post" name="join_form">
    <table>
      <tr>
        <td>아이디</td>
        <td>
          <input type="text" name="memId" id="memId">
        </td>
      </tr>
      <tr>
        <td>비밀번호</td>
        <td>
          <input type="password" name="memPwd" id="memPwd">
        </td>
      </tr>
      <tr>
        <td>이름</td>
        <td>
          <input type="text" name="memName" id="memName">
        </td>
      </tr>
      <tr>
        <td>사업자등록번호</td>
        <td>
          <input id="check_input">
          <button type="button" id="check_btn">확인</button>
        </td>
      </tr>
    </table>
    <button type="button" onclick="joinform_check();">가입</button>
    <button type="reset">취소</button>
  </form>
</body>
</html>