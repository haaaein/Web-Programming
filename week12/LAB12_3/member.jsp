<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="login" class="labhw12.LoginBean" scope="session"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>회원 가입</title>
    <style>
        table, tr, th {
            border-collapse: collapse;
            border: 1px solid black;
        }

        th {
            background-color: rgb(228, 226, 226);
            text-align: center;
            font-weight: bold;
        }

        td {
            padding-left: 10;
            padding-top: 0;
            padding-top: 0;
        }

        input.imageAlign {
            vertical-align: middle;
            width: 70px;
            height: 30px;
        }
        
    </style>
</head>
<body>
    <table align="center">
    	<tr>
 			<td>
        	<input type=image src="./images/eclass_top.png" width="100%" height="300px">
        	</td>
        </tr>
    </table>
    <form name="login" action="LAB12_3.jsp" method="post"> 
    <table width="500" height="500" align="center" name="login">
        
            <tr>
                <th colspan="2" height="40">회원가입</th>
            </tr>
            <tr>
                <th>아이디</th>
                <td>
                    <input type="text" name="id">
                    <input type="image" src="./images/check.png" class="imageAlign">
                </td>
            </tr>
            <tr>
                <th>패스워드</th>
                <td>
                    <input type="password" name="pw">
                </td>
            </tr>
            <tr>
                <th>성별</th>
                <td>
                    <input type="radio" name="gender" value="0"> 남
                    <input type="radio" name="gender" value="1" checked> 여
                </td>
            </tr>
            <tr>
                <th>국적</th>
                <td>
                    <input type="text" name=nation value="대한민국" size="30">
                    <input type="button" value="국적변경">
                </td>
            </tr>
            <tr>
                <th>휴대폰</th>
                <td>
                    <select name=phone1>
                        <option value=0 selected>010</option>
                        <option value=1>080</option>
                        <option value=2>070</option>
                        <option value=3>02</option>
                    </select>
                    - <input type="text" name=phone2 maxlength="4" size="6">
                    - <input type="text" name=phone3 maxlength="4" size="6">
                </td>
            </tr>
            <tr>
                <th>이메일</th>
                <td>
                    <input type="text" name="email" size="40">               
                </td>
            </tr>
            <tr>
                <th>생일</th>
                <td>
                    <input type="date" name="birth" value="연도-월-일">
                </td>
            </tr>
            <tr>
                <th>관심분야</th>
                <td>
                    <input type="checkbox" name=hobby value=0>뉴스
                    <input type="checkbox" name=hobby value=1 checked>맛집
                    <input type="checkbox" name=hobby value=2>책
                    <input type="checkbox" name=hobby value=3>영화
                    <input type="checkbox" name=hobby value=4>여행
                </td>
            </tr>
            <tr>
                <th>가입인사</th>
                <td>
                    <textarea rows="3" cols="50" placeholder="회원들에게 간단한 가입인사를 남겨주세요."></textarea>
                </td>
            </tr>
            <tr>
                <th>증명사진</th>
                <td>
                    <input type="file" value="파일 선택">
                </td>
            </tr>
            <tr>
                <th colspan="2">
                    <input type="submit" value="가입하기">
                    <input type="reset" value="다시작성">
                </th>
            </tr>
        

    </table>
    </form>
</body>
</html>