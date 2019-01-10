<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
	<div id="wrap">
		<section id="container">
			<h1 class="tpl_hd_1" style="width: 960px; margin: auto;">
				<span class="blind">
					<s:property value="post_subject"/>
				</span> 채용정보
			</h1>
			<section class="secReadSummary" style="width: 960px; margin: auto;">
				<h2 class="hd_2 blind">요약정보</h2>
				<div class="readSumWrap clear">
					<article class="artReadJobSum">
						<div class="sumTit">
							<h3 class="hd_3">
								<span class="coName"> 기업명 <strong><s:property value="%{resultClass.cmember_cname}"/></strong> </span> 
								<s:property value="%{resultClass.post_subject}"/>
							</h3>
						</div>
						<div class="tbRow clear">
							<div class="tbCol ">
								<h4 class="hd_4">지원자격</h4>
								<dl class="tbList">
									<dt>경력</dt>
									<dd>
										<strong class="col_1">
											<s:property value="%{resultClass.post_career}"/>
										</strong> 
									</dd>
									<dt>학력</dt>
									<dd>
										<strong class="col_1">
											<s:property value="%{resultClass.post_edu}"/>
										</strong> 
									</dd>
								</dl>
							</div>
							<div class="tbCol ">
								<h4 class="hd_4">근무조건</h4>
								<dl class="tbList">
									<dt>고용형태</dt>
									<dd>
										<ul class="addList">
											<li>
												<strong class="col_1">
													<s:property value="%{resultClass.post_em_type}"/>
												</strong> 
											</li>
										</ul>
									</dd>
									<dt>급여</dt>
									<dd>
										<s:property value="%{resultClass.post_pay}"/>
									</dd>
									<dt>지역</dt>
									<dd><s:property value="%{resultClass.post_loc}"/></dd>
									<dt>시간</dt>
									<dd>
										<!-- 
										주<span class="tahoma">5</span>일 (월~금)
										 -->
										<s:property value="%{resultClass.post_time}"/>
									</dd>
								</dl>
							</div>
							
							<div class="tbCol tbCoInfo">
						<h4 class="hd_4">기업정보</h4>

						<div class="tbLogo">
							<div class="logo">
								<p>
										<a href="<s:property value="%{resultClass.detail_url}"/>" target="_blank" title="새창"><img src="<s:property value="%{resultClass.detail_logo}"/>" id="cologo" name="cologo" onload="go_logo_size(this, 200, 80);" width="200" height="80"></a>
								</p>
							</div>
						</div>

                    <dl class="tbList">

                                <dt>산업(업종)</dt>
                                <dd>
                                    <s:property value="%{resultClass.detail_dept}"/>
                                </dd>
                                <dt>사원수</dt>
                                <dd>
                                    <span class="tahoma"><s:property value="%{resultClass.detail_em_num}"/></span>명
                                </dd>
                                <dt>기업형태</dt>
                                <dd>
                                    <s:property value="%{resultClass.cmember_type}"/>
                                </dd>
                                <dt>홈페이지</dt>
                                <dd>

                                    <span class="tahoma"><a class="devCoHomepageLink" href="<s:property value="%{resultClass.detail_url}"/>" onclick="javascript:go_HomePageTrace('http://www.amotech.co.kr','31424229');return false;"><s:property value="%{resultClass.detail_url}"/></a></span>
                                </dd>

                    </dl>
						<p class="coBtn">
							<button type="button" class="girBtn girBtn_2 girBtnFav  devFavor5dkahxpr" onclick="javascript:location.href='favcorpadd.action?post_no=<s:property value="%{resultClass.post_no}"/>&cmember_cname=<s:property value="%{resultClass.cmember_cname}"/>'"><span><strong class="tahoma devFavorCnt"></strong>관심기업</span></button>
                        </p>				</div>
							
						</div>
					</article>
				</div>
				<p class="sumBtn">
					<button type="button"
						class="tplBtn tplBtn_1 tplBtnBlue devHomePageApplyBtn"
						onclick="return nowApply(<s:property value="resultClass.cmember_cname"/>, <s:property value = "resultClass.post_no"/>);"
						 id="devApplyBtn">
						<span>즉시 지원</span>
					</button>
					<button type="button"
						class="tplBtn tplBtn_1 tplBtnBlue devHomePageApplyBtn"
						onclick="javascript:window.location='<s:property value="%{resultClass.detail_url}"/>';"
						 id="devApplyBtn">
						<span>홈페이지 지원</span>
					</button>
				</p>
				
			</section>
			<section class="secReadSummary" style="width: 960px; margin: auto;">
				<div>
					<article class="artReadJobSum">
						<div class="sumTit">
							<h3 class="hd_3" style="width:920px;"><s:property value="%{resultClass.post_content}"/></h3>
						</div>
					</article>
				</div>
			</section>
						<section class="secReadSummary" style="width: 960px; margin: auto;">
			
						<div style="margin:auto;">
			<table style="width:960px;">
			
				<tr height="20">
					<td bgcolor="#d2d2d2" align="center" colspan="3" align="left" height="30">
						<font size="3">기 업 리 뷰</font>
					</td>
				</tr>
				<s:iterator value="review" status="stat">
					<tr>
						<td height="30" width="200" align="center" bgcolor="#e9e9e9">
							<div class="star">
								<c:forEach  var="i" begin="1" end="${review_star }">
									<c:if test="${ i%2!=0}">
										<span class="star1 on"></span>
									</c:if>
									<c:if test="${ i%2==0}">
										<span class="star2 on"></span>
									</c:if>
								</c:forEach>
							</div>
							<font size="2">
							<span id="writer"><s:property value="review_writer"/></span>
							</font>
							
						</td>
						<td height="30" width="630" align="left" bgcolor="#ffffff">
							<font size="2">
								&nbsp;&nbsp;<s:property value="review_content" />
							</font>
						</td>
						<td height="30" width="140" align="center" bgcolor="#ffffff">
							<font size="2">
								<s:property value="review_date" />
							</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<s:if test="#session.session_id == review_writer">

								<!-- 코멘트 삭제 --> 
								<a href="javascript:open_win_noresizable('reviewCheckForm.action?member_id=<s:property value="#session.session_id"/>&review_post_no=<s:property value="post_no"/>&review_no=<s:property value="review_no"/>')">
									리뷰 삭제
								</a>
						</s:if>
						</td>
						
					</tr>
					<tr bgcolor="#9aafc9">
						<td height="1" colspan="3"></td>
					</tr>
				</s:iterator>
				<s:if test="review.size() <= 0">
					<tr>
						<td align="center" colspan="3" height="30">댓글 없음</td>
					</tr>
					<tr bgcolor="#9aafc9">
						<td height="1" colspan="3"></td>
					</tr>
				</s:if>
			</table>
			<br>
			<table>
				<tr>
					<td colspan="2" height="10">
						<!-- 댓글 쓰기 -->
						<form action="reviewWrite.action" method="post" name="write" onsubmit="return validation();">
							<table style="width:960px;align:center;cellspacing:0;cellpadding:0;">
								<tr>

									<td align="center" width="150"  style="font-size:15px;"><span></span>: <b>${session.session_id}</b><br>
									<div class="starRev">
									  <span class="starR1 on" id="1"></span>
									  <span class="starR2" id="2"></span>
									  <span class="starR1" id="3"></span>
									  <span class="starR2" id="4"></span>
									  <span class="starR1" id="5"></span>
									  <span class="starR2" id="6"></span>
									  <span class="starR1" id="7"></span>
									  <span class="starR2" id="8"></span>
									  <span class="starR1" id="9"></span>
									  <span class="starR2" id="10"></span>
									  <input type="hidden" id="stars" value="1" name="review_star"/>
									</div>
									</td>
									<s:hidden name="review_writer" value="%{#session['session_id']}" />
									<s:hidden name="currentPage" value="%{currentPage}" />
									<s:hidden name="review_post_no" value="%{post_no}"/>
									<td align="center" width="650">
										<s:textarea wrap="hard" name="review_content" theme="simple" value="" cols="90" rows="4"/>
									</td>
									<s:if test="#session.session_id!=null">
									<td align="center">
										<button type="submit" style="margin:auto; text-align:center; height:60%; width:50%;"
										class="tplBtn tplBtn_1 tplBtnBlue devHomePageApplyBtn">
										<span>리뷰 작성</span></button>
									</td>
									</s:if>
								</tr>
							</table>
						</form>
					</td>
				</tr>
				<tr><td height="10"></td></tr>
				<tr bgcolor="#9aafc9">
					<td height="1" colspan="2"></td>
				</tr>
				<tr>
					<td align="center" colspan="2" height="30"></td>
				</tr>
				<tr>
				</tr>
			</table>
			</div>
			</section>
		</section>
	</div>
<style>
textarea {
resize:none;
}
.starR1{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat -52px 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.starR2{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.starR1.on{background-position:0 0;}
.starR2.on{background-position:-15px 0;}

.star1{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat -52px 0;
    background-size: auto 100%;
    width: 8px;
    height: 16px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.star2{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
    background-size: auto 100%;
    width: 8px;
    height: 16px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.star1.on{background-position:0 0;}
.star2.on{background-position:-8px 0;}

p button:hover, p botton:focus {
	color:#fff;
	border:1px solid #f84;
	background-color:#f84;
}
</style>
<script>
	function nowApply(cname, post_no){
		if(confirm('지원하시겠습니까?') == true){
			location.href='applysubmit.action?cname='+cname+'&post_no='+post_no;
			
		}else{
			return;
		}
	}
</script>
<script>
function open_win_noresizable(url, name) {
	var oWin = window.open(url, name, "scrollbars=no,status=no, resizable=no, width=300, height=150");	
}
</script>
<script>
$('.starRev span').click(function(){
	  $(this).parent().children('span').removeClass('on');
	  $(this).addClass('on').prevAll('span').addClass('on');
	  var id_check = $(this).attr("id");
		$('#stars').val(id_check);
	  return false;
	});
</script>
<script>
window.onload = function() {
var writer = document.getElementById('writer').innerHTML;
var writerArray = writer.split('');
var result='';
for(var i=0; i<2;i++){
	result+= writerArray[i];
}
for(var i=0; i<(writer.length - 2);i++){
	result+='*';
}
document.getElementById('writer').innerHTML = result;
}
</script>
