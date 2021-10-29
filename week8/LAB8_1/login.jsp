<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>이클래스 로그인</title>
    <style>
        table {
            border: none;
        }

        form {
            height: 300px;
            width: 800px;
        }

        input[type=text], input[type=password] {
            background-color: #f8f07c;
        }

        tr, td, th {
            height: 20px;
            padding-top: 0%;
            padding-bottom: 0%;
        }
    </style>
</head>
<body>
	<div align=center>
    <table>
        <img src=images/eclass_top.png width=100% height=300px>
    </table>
    <h2>로그인</h3>
    <hr>
   <table>
       <form name=frm1 method=post action=result.jsp>
           <tr>
               <td rowspan=5><img src=images/eclass_login.png height=200px width=400px></td>
               <th colspan=2>회원님의 아이디와 비밀번호를 정확히 입력하세요.</th>
           </tr>
           <tr>
               <td>
               </td>
                <td align=left>
                    <select name=type>
                        <option value="학부생" selected>학부생</option>
                        <option value="대학원생">대학원생</option>
                        <option value="교직원">교직원</option>
                    </select>
                </td>
           </tr>
          <tr>
               <th align=left>아이디</th>
               <td><input type=text name=strID size=20></td>
          </tr>
           <tr>
                <th align=left>비밀번호</th>
                <td><input type=password name=strPwd size=20></td>
           </tr>
           <tr>
                <td colspan=2>
                    <input type=submit value="로그인">
                    <input type=submit value="가입하기" onclick="document.location='member2.html'">
                </td>
           </tr> 
       </form>
       
   </table>
   </div>
</body>
</html>