<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "s" uri = "/struts-tags" %>

<!DOCTYPE html>
<body id="secMtu">

	<div id="wrap">
		<section id="container">
			<section class="content">
				<div class="modal modal-spinner" role="dialog" aria-hidden="true"
					style="display: none;"></div>
				<div class="contWrap ResumeMngCont">
					
					<div class="innerHd">
						<ul>
							<li class="hdTap"><h2 class="header"><font size="12">관심 인재</font></h2></li>
						</ul>
					</div>
					<div class="tableList  ">
						<div class="">
							<div class="listSortArea">
								<div class="col col01" style="width:120px;">지원자명</div>
								<div class="col col02" style="width:120px;">개인정보</div>
								<div class="col col03" style="width:200px;">이력서</div>
								<div class="col col04" style="width:120px;">학력</div>
								<div class="col col05" style="width:120px;">지역</div>
								<div class="col col06" style="width:120px;">간편처리</div>
							</div>
							<div class="mtuList">
							<s:if test="hrSearchList.isEmpty">
							<ul>
									<!-- [개발] 이력서 작성중 yet 클래스 추가 -->
									<li class="ing">
										<div class="col col01" style="width:100%; text-align:center;">
											<div class="tit">
												등록된 일반 회원이 존재하지 않습니다.
											</div>
											<div class="date"></div>
										</div>
									</li>
								</ul>
							</s:if>
							
								<ul>
									<!-- [개발] 이력서 작성중 yet 클래스 추가 -->
									<s:iterator value="favhrList" status="stat">
									<li class="ing">
										<div class="col col01" style="width:140px;">
											<div class="tit">
												<s:if test="cal<24">
												<em class="badge">신입</em>
												</s:if>
												<s:else>
												<em class="badge">경력</em>
												</s:else>
												<a href="/User/Resume/Write" target="_blank"><s:property value="member_name"/></a>
											</div>
											<div class="date"></div>
										</div>
										<div class="col col02" style="width:137px;">
											<div class="sTit">
												<span><s:property value="resume_birth"/></span> <span><s:property value="resume_sex"/></span> 
											</div>
										</div>
										<div class="col col03" style="width:228px;">
											<div class="tit">
												<a href="" class="link"> <span><s:property value="resume_subject"/></span>
												</a>	
											</div>
										</div>
										<div class="col col04" style="width:136px;">
											<div class="sDesc">
												<span><s:property value="edu_school_type"/></span>
											</div>
										</div>
										<div class="col col05" style="width:136px;">
											<div class="sDesc">
												<span><s:property value="resume_addr"/></span>
											</div>
										</div>
										<div class="col col06" style="width:136px;">
											<!-- checkbox -->
											<div class="btnCell">
												<button class="btn" type="button" onclick="javascript:location.href='corphrdel.action?member_id=<s:property value="member_id"/>&cmember_id=<s:property value="%{#session['session_id']}"/>&fav_h_no=<s:property value="fav_h_no"/>'">
													<span>삭제</span>
												</button>
											</div>
										</div>
									</li>
									</s:iterator>
									<li class="ing">
										<div class="tplPagination">
											<ul>
												<s:property value="pagingHtml" escape="false"/>
											</ul>
										</div>
									</li>
								</ul>
							</div>
						</div>

						<div class="linkMng"></div>
						<!-- TIP -->
						<div id="devResumeEmail" name="devResumeEmail"
							style="position: absolute; top: 100px; left: 70px; z-index: 9999; display: none;">
							<iframe id="devResumeEmailIfrm" name="devResumeEmailIfrm"
								width="593" height="450" marginwidth="0" marginheight="0"
								frameborder="no" scrolling="no" title="이력서 이메일전송 레이어"></iframe>
						</div>
					</div>



					<iframe id="frmFileDownload" style="display: none" title="빈 프레임"></iframe>
			</section>
			<hr />
			<section class="secLnb">
						<h1 class="skip">개인회원 서비스 메뉴</h1>
						<div class="lnbGroup">
							<h2 class="lnbTit">공고 및 지원자 관리</h2>
							<ul>
								<li><a href="corppost.action"
									target="_blank">공고 등록</a></li>
								<li><a href="corppostlist.action">등록 공고
										관리</a></li>
								<li><a href="applyList.action">지원자
										관리</a></li>
							</ul>
						</div>
						<hr/>
						<div class="lnbGroup">
							<h2 class="lnbTit">인재관리</h2>
							<ul>
								<li><a href="corphrsearch.action"
									target="_blank">인재 검색</a></li>
								<li><a href="corphrfav.action"
									target="_blank">관심 인재</a></li>	
							</ul>
						</div>
						<hr/>
						<div class="lnbGroup">
							<h2 class="lnbTit">회원정보 관리</h2>
							<ul>
								<li><a href="corpinfo.action">기업정보 수정</a></li>
								<li><a href="corpInfo.action">회원정보 수정</a></li>
							</ul>
						</div>
					</section>
		</section>
	</div>
										<!--페이징-->
										