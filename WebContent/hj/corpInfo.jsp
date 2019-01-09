<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix = "s" uri = "/struts-tags" %>

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
							<li class="hdTab">���� �Է��ϱ�</li>
							
						</ul>
					</div>
					<form method="post" action="postWriteAction.action">
					<h2 class="skip">�����Է�</h2>
					<div class="hopeWorking">
						<h3 class="header">���� ����</h3>
						<div class="summary">
							<input type="text" name="post_subject" placeholder="���� ������ �Է��ϼ���." id="lb_inq2" class="mtcIpt3" style="height:25px;"></div>
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
													<label for="lb_inq_2">��� <em>(�ʼ�)</em></label>
												</div>
											</div>
										</div>
										<div class="col col02">
										<div class="tbCell">
													<div class="mtcSltBx listLenSel">
														 <select
															name="post_career" id="lb_view_1" title="���� ���� ����" style="width:100px;">
															<option value="-1">��� ����</option>
															<option value="0">����</option>
															<option value="1">����</option>
															<option value="3">1~3��</option>
															<option value="6">4~6��</option>
															<option value="9">7~9��</option>
															<option value="15">10~15��</option>
															<option value="16">16�� �̻�</option>
														</select>
													</div>
												</div>
											<!-- checkbox -->
										</div>
										<div class="col col03">
												<div class="tbRow">
												<div class="tbCell tbTh">
													<label for="lb_inq_2">�з� <em>(�ʼ�)</em></label>
												</div>
											</div>
										</div>
										<div class="col col04">
												<div class="tbCell">
													<div class="mtcSltBx listLenSel">
														<select name="post_edu" id="lb_view_1" title="���� ���� ����" style="width:100px;">
															<option value="-1" selected="selected">�з� ����</option>
															<option value="����">����</option>
															<option value="����">����</option>
															<option value="�ʴ���">�ʴ���</option>
															<option value="����">����</option>
															<option value="����">����</option>
															<option value="�ڻ�">�ڻ�</option>
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
													<label for="lb_inq_2">�������</label>
												</div>
											</div>
										</div>
										<div class="col col02">
												<div class="tbCell">
													<input type="text" name="post_prefer" id="lb_inq_2" class="mtcIpt4" />
												</div>
											<!-- checkbox -->
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
														<select name="post_em_type" id="lb_view_1" title="���� ���� ����" style="width:100px;">
															<option value="-1">�������</option>
															<option value="������">������</option>
															<option value="�����">�����</option>
															<option value="����">����</option>
															<option value="�İ���">�İ���</option>
															<option value="��������">��������</option>
														</select>
													</div>
												</div>
											<!-- checkbox -->
										</div>
										
									</li>
									<li class="ing">
										
										<div class="col col1">
											<div class="tbCell tbTh">
												<label for="lb_inq_4">���� <em>(�ʼ�)</em></label>
											</div>
										</div>
										<div class="col col2">
											<div class="mtcSltBx listLenSel">
													<select name="post_loc"id="lb_view_2" title="���� ��/�� ����" style="width:100px;">
														<option value="-1">��/��</option>
														<option value="����">����</option>
														<option value="���">���</option>
														<option value="��õ">��õ</option>
														<option value="����">����</option>
														<option value="����">����</option>
														<option value="�泲">�泲</option>
														<option value="���">���</option>
														<option value="����">����</option>
														<option value="����">����</option>
														<option value="����">����</option>
														<option value="�뱸">�뱸</option>
														<option value="���">���</option>
														<option value="�泲">�泲</option>
														<option value="�λ�">�λ�</option>
														<option value="���">���</option>
														<option value="����">����</option>
														<option value="����">����</option>
													</select>
											</div>
										
										</div>
									</li>
									<li class="ing">
										<div class="col col01">
											<div class="tbCell tbTh">
												<label for="lb_inq_2">�޿� <em>(�ʼ�)</em></label>
											</div>
										</div>
										<div class="col col02">
											<div class="tbCell">
												<input type="text" name="post_pay" id="lb_inq_2" class="mtcIpt3" />
											</div>	
										</div>
										<div class="col col3">
											<div class="tbCell tbTh">
												<label for="lb_inq_2">�ٹ� �ð�</label>
											</div>
										</div>
										<div class="col col4">
											<div class="tbCell">
												<input type="text" name="post_time" id="lb_inq_2" class="mtcIpt3" />
											</div>
										</div>
									</li>
									<li class="ing">
										<div class="col col01">
											<div class="tbCell tbTh">
												<label for="lb_inq_2">�� ���� <em>(�ʼ�)</em></label>
											</div>
										</div>
									</li>
									<li class="ing">
										<div class="col col01">
											<div class="tbCell">
												<textarea name="post_content" id="lb_inq_2" placeholder="������ �Է��ϼ���." class="txArea"
												style="width:800px; height:50px;"
												></textarea>
											</div>
										</div>
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