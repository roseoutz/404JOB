<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

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
							<li class="hdTab">관심 기업 관리</li>
							
						</ul>
					</div>
					<div class="tableList  ">
						<div class="">
							<div class="listSortArea">
								<div class="col col01" style="width:15%;"></div>
								<div class="col col02" style="width:20%;">회사명</div>
								<div class="col col03" style="width:40%;">공고명</div>
								<div class="col col04" style="width:25%;"></div>
							</div>
							<div class="mtuList">
								<ul>
								<s:iterator value="postList" status="stat">
									<!-- [개발] 이력서 작성중 yet 클래스 추가 -->
									<li class="ing">
										<div class="col col01" style="width:15%;">
											<div class="tit">
												<img src="<s:property value="detail_logo"/>" width="80px" height="50px">
											</div>
										</div>
										<div class="col col02" style="width:20%;">
											<div class="tit">
												<a href="postview.action?post_no=<s:property value="post_no"/>" target="_blank"><s:property value="cmember_cname"/></a>
											</div>
										</div>
										<div class="col col03" style="width:40%;">
											<div class="tit">
												<a href="postview.action?post_no=<s:property value="post_no"/>" target="_blank"><s:property value="post_subject"/></a>
											</div>
										</div>
										<div class="col col04" style="width:25%;">
											<div class="btnCell">
												
											</div>
										</div>
									</li>
									</s:iterator>
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
					</div>


					<iframe id="frmFileDownload" style="display: none" title="빈 프레임"></iframe>
			</section>
			<hr />
			<section class="secLnb">
				<h1 class="skip">개인회원 서비스 메뉴</h1>
				<div class="lnbGroup">
					<h2 class="lnbTit">이력서 관리</h2>
					<ul>
						<li><a href="rswrite.action"
							target="_blank">이력서 등록</a></li>
						<li><a href="rslist.action">이력서
								관리</a></li>
					</ul>
				</div>
				<div class="lnbGroup">
					<h2 class="lnbTit">회원정보 관리</h2>
					<ul>
						<li><a href="favcorp.action">관심 기업</a></li>
						<li><a href="geInfo.action">회원정보 수정</a></li>
					</ul>
				</div>
			</section>
		</section>
	</div>