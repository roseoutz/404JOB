<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix = "s" uri = "/struts-tags" %>
<s:if test="#session.session_id==null">
<script>
location.replace("main.action");
</script>
</s:if>

<!DOCTYPE html>
<body id="secMtu">
	<div id="wrap">
		<section id="container">
			<h1 class="skip">���ȸ�� ����</h1>
			<section class="content">
				<div class="modal modal-spinner" role="dialog" aria-hidden="true"
					style="display: none;"></div>
				<div class="contWrap ResumeMngCont">
					<div class="innerHd">
						<ul>
							<li class="hdTab">��� ���� �����ϱ�</li>
							
						</ul>
					</div>
					<form method="post" action="" name="">
					<h2 class="skip">��� ����</h2>
					<div class="hopeWorking">
						<h3 class="header">�����</h3>
						<div class="summary">
							<input type="text" name="" placeholder="������� �Է��ϼ���." id="lb_inq2" class="mtcIpt3" style="height:25px;"></div>
						</div>
					</div>
					<div class="tableList  ">
						<div class="">
							<div class="listSortArea">
								<div class="col col01"><h3>���� ����</h3></div>
								
							</div>
							<div class="mtuList">
								<ul>
									<!-- [����] �̷¼� �ۼ��� yet Ŭ���� �߰� -->
									<li class="ing">
										<div class="col col01">
												<div class="tbRow">
												<div class="tbCell tbTh">
													<label for="lb_inq_2">����ڹ�ȣ <em>(�ʼ�)</em></label>
												</div>
											</div>
										</div>
										<div class="col col02">
										<div class="tbCell">
													<input type="text" name="title" id="lb_inq_2" class="mtcIpt4" />
												</div>
										</div>
										<div class="col col03">
												<div class="tbRow">
												<div class="tbCell tbTh">
													<label for="lb_inq_2">������� <em>(�ʼ�)</em></label>
												</div>
											</div>
										</div>
										<div class="col col04">
												<div class="tbCell">
													<div class="mtcSltBx listLenSel">
														<select name="" id="lb_view_1" title="���� ���� ����" style="width:100px;">
															<option value="-1">------</option>
															<option value="0">IT�����ͳ�</option>
															<option value="1">�濵���繫</option>
															<option value="2">�̵��</option>
															<option value="3">������Ư����</option>
															<option value="4">�����������</option>
															<option value="5">�������ߡ�����</option>
															<option value="6">�Ǽ�</option>
															<option value="7">�����á�����ȫ��</option>
															<option value="8">���ꡤ����</option>
															<option value="9">�Ƿ�</option>
															<option value="10">����������</option>
															<option value="11">������</option>
															<option value="12">����</option>
															<option value="13">����</option>
														</select>
													</div>
												</div>
											<!-- checkbox -->
										</div>
										
									</li>
									<li class="ing">
										<div class="col col01">
												<div class="tbRow">
												<div class="tbCell tbTh">
													<label for="lb_inq_2">�����ǥ</label>
												</div>
											</div>
										</div>
										<div class="col col02">
												<div class="tbCell">
													<input type="text" name="title" id="lb_inq_2" class="mtcIpt4" />
												</div>
											<!-- checkbox -->
										</div>
										<div class="col col03">
												<div class="tbRow">
												<div class="tbCell tbTh">
													<label for="lb_inq_2">������ <em>(xxxx-xx-xx)</em></label>
												</div>
											</div>
										</div>
										<div class="col col04">
												<div class="tbCell">
													<input type="text" name="title" id="lb_inq_2" class="mtcIpt4" />
												</div>
											<!-- checkbox -->
										</div>
										
									</li>
									<li class="ing">
										
										<div class="col col1">
											<div class="tbCell tbTh">
												<label for="lb_inq_4">�ں��� <em>(�ʼ�)</em></label>
											</div>
										</div>
										<div class="col col2">
											<input type="text" name="title" id="lb_inq_2" class="mtcIpt4" />
										</div>
										<div class="col col03">
											<div class="tbCell tbTh">
												<label for="lb_inq_4">����� <em>(�ʼ�)</em></label>
											</div>										</div>
										<div class="col col04">
											<input type="text" id="lb_inq_5" name="emailDomain" class="mtcIpt2" title="���ּ�" size="40">
										</div>
									</li>
									<li class="ing">
										<div class="col col01">
											<div class="tbCell tbTh">
												<label for="lb_inq_2">�ּ� <em>(�ʼ�)</em></label>
											</div>
										</div>
										<div class="col col02">
											<div class="tbCell">
												<div class="mtcSltBx listLenSel">
													<select name=""id="lb_view_2" title="���� ��/�� ����" style="width:100px;">
														<option value="-1">��/��</option>
														<option value="0">����</option>
														<option value="1">���</option>
														<option value="2">��õ</option>
														<option value="3">����</option>
														<option value="4">����</option>
														<option value="5">�泲</option>
														<option value="6">���</option>
														<option value="7">����</option>
														<option value="8">����</option>
														<option value="9">����</option>
														<option value="10">�뱸</option>
														<option value="11">���</option>
														<option value="12">�泲</option>
														<option value="13">�λ�</option>
														<option value="14">���</option>
														<option value="15">����</option>
														<option value="5">����</option>
													</select>
											</div>
											</div>	
										</div>
										<div class="col col3">
											<div class="tbCell tbTh">
												<label for="lb_inq_2">�� �ּ�</label>
											</div>
										</div>
										<div class="col col4">
											<div class="tbCell">
												<input type="text" name="title" id="lb_inq_2" class="mtcIpt3" />
											</div>
										</div>
									</li>
									
									<li class="ing">
										
										<div class="col col01">
											<div class="tbCell tbTh">
												<label for="lb_inq_2">Ȩ������ <em>(�ʼ�)</em></label>
											</div>
										</div>
										<div class="col col02">
										<div class="tbCell">
												<input type="text" name="title" id="lb_inq_2" class="mtcIpt3" />
											</div>
										</div>
										<div class="col col03"></div>
										<div class="col col04"></div>
									</li>
									<li class="ing">
										<div class="col col01">
											<div class="button">
												<button type="submit" class="btn" style="border:1px solid #000;">���� �ۼ�</button>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<button type="button" class="btn" style="border:1px solid #000;">������ �ۼ�</button>											
											</div>
										</div>
									</li>
								</ul>
								</form>
							</div>
						</div>

						<div class="linkMng"></div>
						<!-- TIP -->
						
						
						<div id="devResumeEmail" name="devResumeEmail"
							style="position: absolute; top: 100px; left: 70px; z-index: 9999; display: none;">
							
					</div>



			</section>
			<hr />
			<section class="secLnb">
						<h1 class="skip">����ȸ�� ���� �޴�</h1>
						<div class="lnbGroup">
							<h2 class="lnbTit">���� �� ������ ����</h2>
							<ul>
								<li><a href="corppost.action"
									target="_blank">���� ���</a></li>
								<li><a href="corppostlist.action">��� ����
										����</a></li>
								<li><a href="corpresumelist.action">������
										����</a></li>
							</ul>
						</div>
						<hr/>
						<div class="lnbGroup">
							<h2 class="lnbTit">�������</h2>
							<ul>
								<li><a href="corphrsearch.action"
									target="_blank">���� �˻�</a></li>
								<li><a href="corphrfav.action"
									target="_blank">���� ����</a></li>
							</ul>
						</div>
						<hr/>
						<div class="lnbGroup">
							<h2 class="lnbTit">ȸ������ ����</h2>
							<ul>
								<li><a href="corpinfo.action">������� ����</a></li>
								<li><a href="#">ȸ������ ����</a></li>
								<li><a href="#">ȸ��Ż��</a></li>
							</ul>
						</div>
					</section>
		</section>
	</div>
</body>