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
							<span class="mbr dotum"> <a href="joingen.action"
								class="devHref devClick" data-click-value="55"><strong>회원가입</strong></a><span
								class="idBx"><a
									href="http://127.0.0.1:8080/testwebb//Login/Search/Search_Id.asp"
									class="devHref devClick" data-click-value="56">ID</a></span><span
								class="pwBx"><a
									href="http://127.0.0.1:8080/testwebb//Login/Search/Search_Pwd.asp"
									class="devHref devClick" data-click-value="56">PW 찾기</a></span>
							</span>

						</div>

					</div>
				</s:if>
				<s:else>
					<div class="loginWrap">
						<h3>
							<s:property value="#session.session_id" />
							님 환영합니다.
						</h3>

					</div>
				</s:else>
				<!-- 로그인 전 // -->
				<div class="quickMenuWrap">
					
				</div>
			</div>
			<s:if test="#session.session_type=='corp'">
						<div class="pointMain">
			<!-- 여기가 post 메인 -->



			<div class="grand_banner_wrap" style="width: 810px;">
				<h3 class="header"></h3>
				<ul class="list list_banner_5xn list_plus"
					style="width: 810px; float: left;">
					
						<s:iterator value="post2" status="stat">
							<li class="itemTopBg" style="width: 270px;">
								<div class="company">
									<span class="name"> <span class="logo" > <img
											src=<s:property value="detail_logo"/> width="270" height="100"
											onerror="this.src='//img.jobkorea.co.kr/Images/Logo/86/l/o/logo_none_86.gif';">
											
									</span>
											<a class="coLink" href="postview.action?post_no=<s:property value='post_no'/>"
							 target="_blank" title="기업정보 이동">
										 <s:property value="cmember_cname" /></a>
									</span>
								</div>

								<div class="description">
								
									<span><s:property value="post_subject" /></span>
								</div>
								<div class="extra">
									<button type="button" class="btn btnSm_1"
									onclick = "location.href ='postview.action?post_no=<s:property value='post_no'/>'"
									
							 target="_blank" title="기업정보 이동">
										즉시지원</button>
								</div>

							</li>
						</s:iterator>
						
					

				</ul>
			</div>

		</div>
		</div>
	</div>
	
	
		<div class="grand_banner_wrap">
			<h3 class="header">현재 채용중인 기업</h3>

			<ul class="list list_banner_3xn">


				<s:iterator value="post" status="stat">
					<li class="itemTopBg">
						<div class="company">
							<span class="name"> <span class="logo"> <img
									src=<s:property value="detail_logo"/> width="86" height="34"
									alt="메리츠화재"
									onerror="this.src='//img.jobkorea.co.kr/Images/Logo/86/l/o/logo_none_86.gif';">
							<%-- <a class="coLink" href="postview.action?post_no=<s:property value='post_no'/>"
							 target="_blank" title="기업정보 이동"> --%>
							
							</a>
							</span>
						</div>

						<div class="description">
						<a><b><s:property value="cmember_cname"/></b><br>
							<span><s:property value="post_career" /></span> <span><s:property
									value="post_edu" /></span> <span><s:property value="post_loc" /></span>
							<span><s:property value="post_em_type" /></span>
						</div>

					</li>
				</s:iterator>







			</ul>

		</div>

<%-- 	<div class="grand_banner_wrap">
		<h3 class="header">내가 등록한 공고</h3>
		<ul class="list list_banner_3xn">
			<li class="itemTopBg">
				<div class="company">
					<span class="name"> <a
						href="http://www.jobkorea.co.kr/Recruit/Booth_GI_Read/27111194?Oem_Code=C1"
						onclick="Job_DB_window(this.href,1000,500);SpaceClick(27111194,6);adobeDtmOptClick('JH', 'Gold');return false;"
						target="_blank"><span class="logo"><img
								src="//img11.jobkorea.kr/Images/Logo/86/s/h/sh4000_86.gif?20181221110510"
								width="86" height="34" alt="수현㈜"
								onerror="this.src='//img.jobkorea.co.kr/Images/Logo/86/l/o/logo_none_86.gif';"></span>수현㈜</a>
					</span>
					<button type="button" class="btn devFavorClasssh4000 btnReg_1"
						onclick="doFavor('sh4000');SpaceClick(27111194,6);;"
						title="관심기업 등록">관심기업 등록</button>
				</div>
				<div class="description">
					<a
						href="http://www.jobkorea.co.kr/Recruit/Booth_GI_Read/27111194?Oem_Code=C1"
						onclick="Job_DB_window(this.href,1000,500);SpaceClick(27111194,6);adobeDtmOptClick('JH', 'Gold');return false;"
						target="_blank">마케팅 / 매칭매니저 부문 담당자 채용
						<div class="dday">~12/31</div>
					</a>
				</div>
				<div class="extra">
					<button type="button" class="btn devScrap31278959 btnScrap_1"
						onclick="doScrap(31278959);SpaceClick(27111194,6);"
						title="채용정보 스크랩">
						<span>채용정보 스크랩</span>
					</button>
				</div>
			</li>
			<li class="itemTopBg">
				<div class="company">
					<span class="name"> <a
						href="http://www.jobkorea.co.kr/Recruit/Booth_GI_Read/27146171?Oem_Code=C1"
						onclick="Job_DB_window(this.href,1000,500);SpaceClick(27146171,6);adobeDtmOptClick('JH', 'Gold');return false;"
						target="_blank"><span class="logo"><img
								src="//img11.jobkorea.kr/Images/Logo/86/m/e/meritzcc_86.gif?20181221110510"
								width="86" height="34" alt="메리츠화재"
								onerror="this.src='//img.jobkorea.co.kr/Images/Logo/86/l/o/logo_none_86.gif';"></span>메리츠화재</a>
					</span>
					<button type="button" class="btn devFavorClassmeritzcc btnReg_1"
						onclick="doFavor('meritzcc');SpaceClick(27146171,6);;"
						title="관심기업 등록">관심기업 등록</button>
				</div>
				<div class="description">
					<a
						href="http://www.jobkorea.co.kr/Recruit/Booth_GI_Read/27146171?Oem_Code=C1"
						onclick="Job_DB_window(this.href,1000,500);SpaceClick(27146171,6);adobeDtmOptClick('JH', 'Gold');return false;"
						target="_blank">[부천/부산] 대표번호 인바운드 상담직원 채용
						<div class="dday">~12/28</div>
					</a>
				</div>
				<div class="extra">
					<button type="button" class="btn devScrap31310172 btnScrap_1"
						onclick="doScrap(31310172);SpaceClick(27146171,6);"
						title="채용정보 스크랩">
						<span>채용정보 스크랩</span>
					</button>
				</div>
			</li>
			<li class="itemTopBg">
				<div class="company">
					<span class="name"> <a
						href="http://www.jobkorea.co.kr/Recruit/Booth_GI_Read/27074620?Oem_Code=C1"
						onclick="Job_DB_window(this.href,1000,500);SpaceClick(27074620,6);adobeDtmOptClick('JH', 'Gold');return false;"
						target="_blank"><span class="logo"><img
								src="//img11.jobkorea.kr/Images/Logo/86/j/o/joycredit_86.gif?20181221110510"
								width="86" height="34" alt="㈜조이크레디트대부금융"
								onerror="this.src='//img.jobkorea.co.kr/Images/Logo/86/l/o/logo_none_86.gif';"></span>㈜조이크레디트대부금융</a>
					</span>
					<button type="button" class="btn devFavorClassjoycredit btnReg_1"
						onclick="doFavor('joycredit');SpaceClick(27074620,6);;"
						title="관심기업 등록">관심기업 등록</button>
				</div>
				<div class="description">
					<a
						href="http://www.jobkorea.co.kr/Recruit/Booth_GI_Read/27074620?Oem_Code=C1"
						onclick="Job_DB_window(this.href,1000,500);SpaceClick(27074620,6);adobeDtmOptClick('JH', 'Gold');return false;"
						target="_blank">(주)조이크레디트 각 부문별 신입 및 경력사원 모집
						<div class="dday">~12/23</div>
					</a>
				</div>
				<div class="extra">
					<button type="button" class="btn devScrap31246462 btnScrap_1"
						onclick="doScrap(31246462);SpaceClick(27074620,6);"
						title="채용정보 스크랩">
						<span>채용정보 스크랩</span>
					</button>
				</div>
			</li>

			<li class="">
				<div class="company">
					<span class="name"> <a
						href="http://www.jobkorea.co.kr/Recruit/Booth_GI_Read/26832040?Oem_Code=C1"
						onclick="Job_DB_window(this.href,1000,500);SpaceClick(26832040,6);adobeDtmOptClick('JH', 'Gold');return false;"
						target="_blank"><span class="logo"><img
								src="//img11.jobkorea.kr/Images/Logo/86/y/n/ynigroup_86.gif?20181221110510"
								width="86" height="34" alt="㈜와이앤아이"
								onerror="this.src='//img.jobkorea.co.kr/Images/Logo/86/l/o/logo_none_86.gif';"></span>㈜와이앤아이</a>
					</span>
					<button type="button" class="btn devFavorClassynigroup btnReg_1"
						onclick="doFavor('ynigroup');SpaceClick(26832040,6);;"
						title="관심기업 등록">관심기업 등록</button>
				</div>
				<div class="description">
					<a
						href="http://www.jobkorea.co.kr/Recruit/Booth_GI_Read/26832040?Oem_Code=C1"
						onclick="Job_DB_window(this.href,1000,500);SpaceClick(26832040,6);adobeDtmOptClick('JH', 'Gold');return false;"
						target="_blank"><span class="ls_1">와이앤아이그룹 부동산 영업(판매)
							매니저 및 채용 신입/경력직 모집</span>
						<div class="dday">~01/12</div></a>
				</div>
				<div class="extra">
					<button type="button" class="btn devScrap31030401 btnScrap_1"
						onclick="doScrap(31030401);SpaceClick(26832040,6);"
						title="채용정보 스크랩">
						<span>채용정보 스크랩</span>
					</button>
				</div>
			</li>
			<li class="">
				<div class="company">
					<span class="name"> <a
						href="http://www.jobkorea.co.kr/Recruit/Booth_GI_Read/27132357?Oem_Code=C1"
						onclick="Job_DB_window(this.href,1000,500);SpaceClick(27132357,6);adobeDtmOptClick('JH', 'Gold');return false;"
						target="_blank"><span class="logo"><img
								src="//img11.jobkorea.kr/Images/Logo/86/v/i/visol119_86.gif?20181221110510"
								width="86" height="34" alt="㈜비솔"
								onerror="this.src='//img.jobkorea.co.kr/Images/Logo/86/l/o/logo_none_86.gif';"></span>㈜비솔</a>
					</span>
					<button type="button" class="btn devFavorClassvisol119 btnReg_1"
						onclick="doFavor('visol119');SpaceClick(27132357,6);;"
						title="관심기업 등록">관심기업 등록</button>
				</div>
				<div class="description">
					<a
						href="http://www.jobkorea.co.kr/Recruit/Booth_GI_Read/27132357?Oem_Code=C1"
						onclick="Job_DB_window(this.href,1000,500);SpaceClick(27132357,6);adobeDtmOptClick('JH', 'Gold');return false;"
						target="_blank">2018년 각 부문별<br>신입/경력사원 모집
						<div class="dday">~12/23</div></a>
				</div>
				<div class="extra">
					<button type="button" class="btn devScrap31297838 btnScrap_1"
						onclick="doScrap(31297838);SpaceClick(27132357,6);"
						title="채용정보 스크랩">
						<span>채용정보 스크랩</span>
					</button>
				</div>
			</li>
			<li class="">
				<div class="company">
					<span class="name"> <a
						href="http://www.jobkorea.co.kr/Recruit/Booth_GI_Read/27194976?Oem_Code=C1"
						onclick="Job_DB_window(this.href,1000,500);SpaceClick(27194976,6);adobeDtmOptClick('JH', 'Gold');return false;"
						target="_blank"><span class="logo"><img
								src="//img11.jobkorea.kr/Images/Logo/86/i/o/ioi1234_86.gif?20181221110510"
								width="86" height="34" alt="㈜트라이코코리아"
								onerror="this.src='//img.jobkorea.co.kr/Images/Logo/86/l/o/logo_none_86.gif';"></span>㈜트라이코코리아</a>
					</span>
					<button type="button" class="btn devFavorClassioi1234 btnReg_1"
						onclick="doFavor('ioi1234');SpaceClick(27194976,6);;"
						title="관심기업 등록">관심기업 등록</button>
				</div>
				<div class="description">
					<a
						href="http://www.jobkorea.co.kr/Recruit/Booth_GI_Read/27194976?Oem_Code=C1"
						onclick="Job_DB_window(this.href,1000,500);SpaceClick(27194976,6);adobeDtmOptClick('JH', 'Gold');return false;"
						target="_blank">외국계기업 회계세무 서비스 실무스탭 및 Reviewer(과/차장급) 모집
						<div class="dday">~01/15</div>
					</a>
				</div>
				<div class="extra">
					<button type="button" class="btn devScrap31353543 btnScrap_1"
						onclick="doScrap(31353543);SpaceClick(27194976,6);"
						title="채용정보 스크랩">
						<span>채용정보 스크랩</span>
					</button>
				</div>
			</li>

		</ul>
	</div> --%>
	</s:if>
	<s:else>
		<div class="pointMain">
			<!-- 여기가 post 메인 -->



			<div class="grand_banner_wrap" style="width: 810px;">
				<h3 class="header"></h3>
				<ul class="list list_banner_5xn list_plus"
					style="width: 810px; float: left;">
					
						<s:iterator value="post2" status="stat">
							<li class="itemTopBg" style="width: 270px;">
								<div class="company">
									<span class="name"> <span class="logo"> <img
											src=<s:property value="detail_logo"/> width="86" height="34"
											alt="메리츠화재"
											onerror="this.src='//img.jobkorea.co.kr/Images/Logo/86/l/o/logo_none_86.gif';">
											
									</span>
										<!-- <button type="button"
											class="btn devFavorClassmigung0365 btnReg_1"
											onclick="doFavor('migung0365');SpaceClick(27073301,4);;"
											title="관심기업 등록">관심기업 등록</button>  -->
											<a class="coLink" href="postview.action?post_no=<s:property value='post_no'/>"
							 target="_blank" title="기업정보 이동">
										 <s:property value="cmember_cname" /></a>
									</span>
								</div>

								<div class="description">
								
									<span><s:property value="post_subject" /></span>
								</div>
								<div class="extra">
									<button type="button" class="btn btnSm_1"
									onclick = "location.href ='postview.action?post_no=<s:property value='post_no'/>'"
									
							 target="_blank" title="기업정보 이동">
										즉시지원</button>
								</div>

							</li>
						</s:iterator>
						
					

				</ul>
			</div>

		</div>

		<script>
			(function() {
				// carousel 배너
				var banner_1 = new uit.carousel('#carousel_1', {
					animation : false,
					hoverAnimationBtn : true,
					random : true
				});
				var banner_2 = new uit.carousel('#carousel_2', {
					random : false
				});
			})()
		</script>
		</div>
		</div>
		<!-- 여기가 현재 채용중인 기업 그냥 6개만 나오게 하면 됩니다 -->

		<script>
			function addURL(idName) {
				var url = window.location.search; // URI전체
				var uadd = document.getElementById(idName).value; //click 인자값								
				var str = url.substring(url.lastIndexOf('=') + 1); // uri = 값
				if (!url.includes('category') && !url.includes('keyword')) {
					url += ("?keyword=" + uadd);
					window.location.href = "top100.action"
							+ decodeURIComponent(url);
				} else if (url.includes('category') && !url.includes('keyword')) {
					url += ("&keyword=" + uadd);
					window.location.href = "top100.action"
							+ decodeURIComponent(url);
				} else {
					uadd = encodeURI(uadd);
					url = url.replace(str, uadd);
					window.location.href = "top100.action"
							+ decodeURIComponent(url);
				}
			}
		</script>
		<script>
			$(function() {
				var sBtn = $("ul > li"); //  ul > li 이를 sBtn으로 칭한다. (클릭이벤트는 li에 적용 된다.)
				sBtn.find("button").click(function() { // sBtn에 속해 있는  button 찾아 클릭 하면.
					sBtn.removeClass("active"); // sBtn 속에 (active) 클래스를 삭제 한다.
					$(this).parent().addClass("active"); // 클릭한 a에 (active)클래스를 넣는다.
				})
			})
		</script>



		<div class="grand_banner_wrap">
			<h3 class="header">현재 채용중인 기업</h3>

			<ul class="list list_banner_3xn">


				<s:iterator value="post" status="stat">
					<li class="itemTopBg">
						<div class="company">
							<span class="name"> <span class="logo"> <img
									src=<s:property value="detail_logo"/> width="86" height="34"
									alt="메리츠화재"
									onerror="this.src='//img.jobkorea.co.kr/Images/Logo/86/l/o/logo_none_86.gif';">
							<%-- <a class="coLink" href="postview.action?post_no=<s:property value='post_no'/>"
							 target="_blank" title="기업정보 이동"> --%>
							
							</a>
							</span>
						</div>

						<div class="description">
						<a><b><s:property value="cmember_cname"/></b><br>
							<span><s:property value="post_career" /></span> <span><s:property
									value="post_edu" /></span> <span><s:property value="post_loc" /></span>
							<span><s:property value="post_em_type" /></span>
						</div>

					</li>
				</s:iterator>







			</ul>

		</div>
		<hr />
	</s:else>

	<hr>

</body>