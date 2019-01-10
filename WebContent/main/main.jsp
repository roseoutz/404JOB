<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<body class="byWd byNm" style="">
	<a name="top"></a>
	<p id="accessibility">
		<a href="#point">메뉴 건너뛰기</a>
	</p>
	<hr>

	<div id="point">
		<div class="pointWrap">
			<div class="pointSide">

				<!-- 로그인 영역 시작-->
				<h2 class="blind">로그인 영역</h2>
				<!-- // 비로그인 또는 기업회원 로그인 -->
				<s:if test="#session.session_id == null">
					<div class="loginWrap">
						<h3 class="blind">회원 로그인</h3>
						<form action="login.action" method="post">
							<ul class="memberType clear">
								<li style="width: 130px;"><input type="text" name="id"
									placeholder="Insert ID" style="height: 22px;"> <br>
									<input type="password" name="pwd" placeholder="Insert PW"
									style="height: 22px;"></li>
								<li style="width: 90px;">
									<button type="submit" class="btn btn1" value="로그인"></button>
								</li>
							</ul>
						</form>
						<div class="mbrLinks clear">
            <span class="mbr dotum">
                <a href="joingen.action" class="devHref devClick" data-click-value="55"><strong>회원가입</strong></a>
                <span class="idBx"><a href="./findUserInfo/findId.jsp" class="devHref devClick" data-click-value="56">ID</a></span>
           	  <span class="pwBx"><a href="./findUserInfo/findPwd.jsp" class="devHref devClick" data-click-value="56">PW 찾기</a></span>
            </span>
            
        </div>

					</div>
				</s:if>
				<s:else>
					<div class="loginWrap">
						<div class="mbrLinks clear">
            <span class="mbr dotum">
            
                <a href="resumeView.action" class="devHref devClick" ><strong>내 이력서 보기</strong></a><br>
                <a href="mypage.action" class="devHref devClick" ><strong>지원한 공채 보기</strong></a><br>
                <a href="favcorp.action" class="devHref devClick" ><strong>관심 기업 보기</strong></a><br>
                <a href="geInfo.action" class="devHref devClick" ><strong>회원정보 수정</strong></a><br>
            </span>
            
        </div>

					</div>
				</s:else>
				<!-- 로그인 전 // -->
				<div class="quickMenuWrap">
					
				</div>
			</div>
						<div class="pointMain">
			<!-- 여기가 post 메인 -->



			<div class="grand_banner_wrap" style="width: 810px;">
				<h3 class="header"></h3>
				<ul class="list list_banner_5xn list_plus"
					style="width: 810px; float: left;">
					
						<s:iterator value="post2" status="stat">
							<li class="itemTopBg" style="width: 270px; height:120px;">
								<div class="company">
									<span class="name"> 
									<span class="logo" style="width: 268px;"> 
									<img src=<s:property value="detail_logo"/> width="100" height="50"
											onerror="this.src='//localhost:8080/404JOB/image/noimage.png';">
								</span>
											<a class="coLink" href="postview.action?post_no=<s:property value='post_no'/>"
							 target="_blank" title="기업정보 이동">
										 <s:property value="cmember_cname" /></a>
									</span>
								</div>

								<div class="description">
								
									<span><s:property value="post_subject" /></span>
								</div>
							</li>
						</s:iterator>
						
					

				</ul>
			</div>

		</div>
		</div>
	</div>
	

		<!-- 여기가 현재 채용중인 기업 그냥 6개만 나오게 하면 됩니다 -->

		<div class="grand_banner_wrap">
			<h3 class="header">현재 채용중인 기업</h3>

			<ul class="list list_banner_3xn">


				<s:iterator value="post" status="stat">
					<li class="itemTopBg">
						<div class="company">
							<span class="name"> <span class="logo"> <img
									src=<s:property value="detail_logo"/> width="86" height="34"
									alt="메리츠화재"
									onerror="this.src='//localhost:8080/404JOB/image/noimage.png';">
							</span>
							</span>
						</div>

						<div class="description">
						<b><s:property value="cmember_cname"/></b><br>
							<span><s:property value="post_career" /></span> <span><s:property
									value="post_edu" /></span> <span><s:property value="post_loc" /></span>
							<span><s:property value="post_em_type" /></span>
						</div>
						
					</li>
				</s:iterator>







			</ul>

		</div>
		<hr />

	<hr>

</body>