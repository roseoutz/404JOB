<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>

<body id="" class="top100Main"><!--// top100Main 추가 -->
	<!--// top100Main 추가 -->
	<div id="wrap">
		<a name="top"></a>
		<div id="container">



			<div id="content">


				<form id="form1" method="get" action="/Top100/"
					accept-charset="utf-8">
					<!--// TOP 100 -->
					<div class="topHdWrap">
						<h2 class="top_hd_2">기업 & 공고검색</h2>
					</div>


					<div class="topContent" id="divTop100">

						<!--// 직무별 탭 메뉴 -->
						<!--상단 TAP 구성 시작-->
						
						<!--상단 TAP 구성 끝-->

						<div id="devTypeTab_1" class="topListWrap" style="display: block;">

							<!--필터-->
						<script>
						function addURL(idName) {
							var url = window.location.search; // URI전체
							var uadd = document.getElementById(idName).value; //click 인자값								
							var str = url.substring(url.lastIndexOf('=')+1); // uri = 값
							if(!url.includes('category') && !url.includes('keyword')){
								url+=("?keyword="+uadd);
								window.location.href="top100.action"+decodeURIComponent(url);
							} else if(url.includes('category') && !url.includes('keyword')){
								url+=("&keyword="+uadd);
								window.location.href="top100.action"+decodeURIComponent(url);
							} else {
								uadd = encodeURI(uadd);		
								url = url.replace(str,uadd);
								window.location.href="top100.action"+decodeURIComponent(url);
								}
							}
			
						</script>
						<script>
						 $(function(){
							  var sBtn = $("ul > li");    //  ul > li 이를 sBtn으로 칭한다. (클릭이벤트는 li에 적용 된다.)
							  sBtn.find("button").click(function(){   // sBtn에 속해 있는  button 찾아 클릭 하면.
							   sBtn.removeClass("active");     // sBtn 속에 (active) 클래스를 삭제 한다.
							   $(this).parent().addClass("active"); // 클릭한 a에 (active)클래스를 넣는다.
							  })
							 })
						</script>





							<!--// 직무 분류 탭 메뉴 -->
							


							<div class="rankListWrap">

								<!--DataList 신입리스트-->
								<div class="rankListArea devSarterTab" style="display: block">

									<h4 class="blind">신입 TOP 리스트</h4>


									<ol class="rankList">
								<s:iterator value="post" status="stat">

										<li>
											<div class="rank">
												<span class="num"><s:property value="rownum"/></span> <em class="icnNew"><span
													class="blind">NEW</span>NEW</em>
											</div>
											<div class="co">
												<div class="coTit">
													<!--기업명-->
													<a class="coLink" href="/Company/1624710" target="_blank"
														title="기업정보 이동"><b><s:property value="cmember_cname"/></b></a>
													<!-- 관심기업 : 클릭했을경우 tplBtnFavOff 클래스 삭제. tplBtnFavOn 추가 -->
													<button type="button" title="관심기업"
														class="tplBtnTy tplBtnFavOff devFavor"
														onclick="javascript:location.href='favcorpadd.action?post_no=<s:property value="post_no"/>&cmember_cname=<s:property value="cmember_cname"/>'">
														<span class="blind">관심기업</span>
													</button>
												</div>

												<div class="coDesc">
													<div class="coLyArea">

														<!--우수기업 강소기업,우수중소,히든챔피언, 고용창출100대우수기업-->
													</div>
												</div>
											</div>

											<div class="info">
												<div class="tit">
													<!--신입공채 페이지 호출방식변경-->
													<a href="postview.action?post_no=<s:property value='post_no'/>"
														class="link" target="_blank"><span><s:property value="post_subject"/></span></a>
												</div>
												<div class="sTit">
													<span></span>
												</div>
												<div class="sDsc">

													<span><s:property value="post_career"/></span><span><s:property value="post_edu"/></span>  <span><s:property value="post_loc"/></span> <span><s:property value="post_em_type"/></span>
												</div>
											</div>
											<s:if test="detail_url!=null">
											<div class="side">
												<span class="btn app"><button type="button" style="border:1px solid #ffffff;"														class="tplBtn tplBtn_1 tplBtnBlue devApplyHomepage" 
														class="tplBtn tplBtn_1 tplBtnBlue devApplyHomepage" 
														onclick="javascript:window.location='<s:property value="detail_url"/>';">
														<span>홈페이지 지원</span>
													</button></span>
												<!--마감일-->
											</div>
											</s:if>
											<div class="side">
												<span class="btn app"><button type="button" style="border:1px solid #ffffff;"
														class="tplBtn tplBtn_1 tplBtnBlue devApplyHomepage" 
														onclick="">
														<span>즉시 지원</span>
													</button></span>
												<!--마감일-->
											</div>
										</li>
								</s:iterator>

									</ol>
								</div>

								</div>

							</div>
						</div>

					</div>


					<!--sideContent 시작-->

					<!-- TOP 100 //-->
				</form>
			</div>




		</div>
