<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix = "s" uri = "/struts-tags" %>

<!DOCTYPE html>
<body id="secMtu">

	<div id="wrap">
		<section id="container">
			<h1 class="skip">개인회원 서비스</h1>
			<section class="content">
				<div class="modal modal-spinner" role="dialog" aria-hidden="true"
					style="display: none;"></div>
				<div class="contWrap ResumeMngCont">
					<div class="innerHd">
						<ul>
							<li class="hdTab"><a
								href="corppostlist.action">공고 관리</a></li>
							<li class="on"><a
								href="applyList.action">지원자 관리</a></li>
						</ul>
					</div>


					<div class="tableList  ">
						<div class="">
							<div class="listSortArea">
								<div class="col col01">공고 제목</div>
								<div class="col col02">공고 관리</div>
							</div>
							
							
							<div class="mtuList">
								<ul>
								
								<s:if test="postlist.size()<=0">
										<li class="">
											<button type="button" class="lugBtnA lugBtnMore tabSearchListTitle devFaqItem tplBtnMore" id="btn">
												<span
													class="cl3399ff">등록된 게시물이 없습니다.</span>
											</button>
											<!--[개발] tplBtn tplBtnMore => lugBtnA lugBtnMore 클래스명 수정, 클릭 시 tplBtnCls_3 => on 클래스명 수정 -->
											<div class="searchListData" style="display: none;">
												test
											</div>
										</li>
									</s:if>
									<s:else>
									<!-- [개발] 이력서 작성중 yet 클래스 추가 -->
									<s:iterator value="postlist" status="stat">
									<li class="ing">
										<div class="col col01">
											<div class="tit">
												<a href="postview.action?post_no=<s:property value="post_no"/>" target="_blank"><s:property value="post_subject"/></a>
											</div>
											<div class="date"></div>
										</div>
										<div class="col col02">
											<!-- checkbox -->
											<div class="btnCell">
												<button class="btn" type="button" onclick="location.href='corppostdelete.action?post_writer=<s:property value="post_writer"/>&post_no=<s:property value="post_no"/>'">
													<span>삭제</span>
												</button>
											</div>
										</div>
									</li>
<!-- ★ -->								

									</s:iterator>
<!-- ★ -->							</s:else>		
									
<!-- ★ -->									
									
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