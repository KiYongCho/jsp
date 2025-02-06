<%@ page contentType="text/html; charset=UTF-8"%>

		<div id="login">
			<%
				if (session.getAttribute("sid") == null) {
			%>
	            <form action="loginProc.jsp" method="post">
	            	<p>
	            		아이디 <input type="text" name="mid">&nbsp;
	            		비밀번호 <input type="password" name="mpass">&nbsp;
	            		<input type="submit" value="로그인">
	            	</p>
	            </form>
            <%
				} else {
            %>
            	<p>
            		<%=session.getAttribute("sid")%>(<%=session.getAttribute("sname")%>)님
            		&nbsp;로그인 중!&nbsp;&nbsp;
            		<button onclick="location.href='logout.jsp';">로그아웃</button>
            	</p>
            <%
				}
            %>
		</div>
        <div id="mainbanner">
            <p id="mainbk">
                <a href="#"><img src="img/bk.png"></a>
            </p>
        </div>
        <div id="content-wrap">
            <aside>
                <h1>메뉴1</h1>
                <ul>
                    <li><a href="#menu1" class="active">메뉴1</a></li>
                    <li><a href="#menu2">메뉴2</a></li>
                    <li><a href="#menu3">메뉴3</a></li>
                    <li><a href="#menu4">메뉴4</a></li>
                </ul>
            </aside>
            <section>
                <article id="menu1">
                    <h1>menu1</h1>
                    <p>메뉴 1의 컨텐츠입니다.메뉴 1의 컨텐츠입니다.메뉴 1의 컨텐츠입니다.메뉴 1의 컨텐츠입니다.메뉴 1의 컨텐츠입니다.메뉴 1의 컨텐츠입니다.메뉴 1의 컨텐츠입니다.메뉴 1의 컨텐츠입니다.메뉴 1의 컨텐츠입니다.메뉴 1의 컨텐츠입니다.메뉴 1의 컨텐츠입니다.메뉴 1의 컨텐츠입니다.메뉴 1의 컨텐츠입니다.메뉴 1의 컨텐츠입니다.메뉴 1의 컨텐츠입니다.메뉴 1의 컨텐츠입니다.메뉴 1의 컨텐츠입니다.메뉴 1의 컨텐츠입니다.메뉴 1의 컨텐츠입니다.메뉴 1의 컨텐츠입니다.</p>
                </article>
                <article id="menu2">
                    <h1>menu2</h1>
                    <p>메뉴 2의 컨텐츠입니다.메뉴 2의 컨텐츠입니다.메뉴 2의 컨텐츠입니다.메뉴 2의 컨텐츠입니다.메뉴 2의 컨텐츠입니다.메뉴 2의 컨텐츠입니다.메뉴 2의 컨텐츠입니다.메뉴 2의 컨텐츠입니다.메뉴 2의 컨텐츠입니다.메뉴 2의 컨텐츠입니다.메뉴 2의 컨텐츠입니다.메뉴 2의 컨텐츠입니다.메뉴 2의 컨텐츠입니다.메뉴 2의 컨텐츠입니다.메뉴 2의 컨텐츠입니다.메뉴 2의 컨텐츠입니다.메뉴 2의 컨텐츠입니다.메뉴 2의 컨텐츠입니다.메뉴 2의 컨텐츠입니다.메뉴 2의 컨텐츠입니다.</p>
                </article>
                <article id="menu3">
                    <h1>menu3</h1>
                    <p>메뉴 3의 컨텐츠입니다.메뉴 3의 컨텐츠입니다.메뉴 3의 컨텐츠입니다.메뉴 3의 컨텐츠입니다.메뉴 3의 컨텐츠입니다.메뉴 3의 컨텐츠입니다.메뉴 3의 컨텐츠입니다.메뉴 3의 컨텐츠입니다.메뉴 3의 컨텐츠입니다.메뉴 3의 컨텐츠입니다.메뉴 3의 컨텐츠입니다.메뉴 3의 컨텐츠입니다.메뉴 3의 컨텐츠입니다.메뉴 3의 컨텐츠입니다.메뉴 3의 컨텐츠입니다.메뉴 3의 컨텐츠입니다.메뉴 3의 컨텐츠입니다.메뉴 3의 컨텐츠입니다.메뉴 3의 컨텐츠입니다.메뉴 3의 컨텐츠입니다.</p>
                </article>
                <article id="menu4">
                    <h1>menu4</h1>
                    <p>메뉴 4의 컨텐츠입니다.메뉴 4의 컨텐츠입니다.메뉴 4의 컨텐츠입니다.메뉴 4의 컨텐츠입니다.메뉴 4의 컨텐츠입니다.메뉴 4의 컨텐츠입니다.메뉴 4의 컨텐츠입니다.메뉴 4의 컨텐츠입니다.메뉴 4의 컨텐츠입니다.메뉴 4의 컨텐츠입니다.메뉴 4의 컨텐츠입니다.메뉴 4의 컨텐츠입니다.메뉴 4의 컨텐츠입니다.메뉴 4의 컨텐츠입니다.메뉴 4의 컨텐츠입니다.메뉴 4의 컨텐츠입니다.메뉴 4의 컨텐츠입니다.메뉴 4의 컨텐츠입니다.메뉴 4의 컨텐츠입니다.메뉴 4의 컨텐츠입니다.</p>
                </article>
            </section>
        </div>