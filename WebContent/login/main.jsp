<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>�ϴ��</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script>
function openConfirmId(){
	var url="findIdPassword.action";
	open(url,"confirm","toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300,height=430");
}
function test(){
	alert("�α����� �ʿ��� �����Դϴ�.");
	location.href="loginForm.action";
}
</script>
<link rel="stylesheet" href="/common/style.css" type="text/css">
</head>
<body>

<s:if test="#session.session_admin==2">

<br>

<table align="center" width="834" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td align="center" width="834" height="100"><img src="/ildang1/common/images/ad.jpg" border="0"></td>
	</tr>
</table>

<br>
<br>

<table align="center" width="834" border="0" cellspacing="0" cellpadding="0">
	
	<tr height="25">
		<td bgcolor="1E90FF" align="left" colspan="1" width="10"></td>
		<td align="left" colspan="3"><strong>&nbsp;&nbsp;ȸ�� ����</strong></td>
	</tr>
	
</table>
	
<br>
<br>
  
<table align="center" width="834" border="0" cellspacing="0" cellpadding="0">
		
		<tr>
			<td align="center"><input type="image" src="/ildang1/common/images2/adminPMemberList.png" onclick="window:location='adminPMemberList.action'"/></td>
			<td align="center"><input type="image" src="/ildang1/common/images2/adminCMemberList.png" onclick="window:location='adminCMemberList.action'"/></td>
		</tr>

</table>

<br>
<br>

<table align="center" width="834" border="0" cellspacing="0" cellpadding="0">
	
	<tr height="25">
		<td bgcolor="1E90FF" align="left" colspan="1" width="10"></td>
		<td align="left" colspan="3"><strong>&nbsp;&nbsp;�Խ��� ����</strong></td>
	</tr>
	
</table>

<br>
<br>
  
<table align="center" width="834" border="0" cellspacing="0" cellpadding="0">
		
		<tr>
			<td align="center"><input type="image" src="/ildang1/common/images2/adminCAList.png" onclick="window:location='adminCAList.action'"/></td>
			<td align="center"><input type="image" src="/ildang1/common/images2/adminPAList.png" onclick="window:location='adminPAList.action'"/></td>
		</tr>
		
		<tr height="20">
			<td></td>
		</tr>
		
		<tr>
			<td align="center"><input type="image" src="/ildang1/common/images2/adminWAList.png" onclick="window:location='adminWAList.action'"/></td>
			<td align="center"><input type="image" src="/ildang1/common/images2/adminFList.png" onclick="window:location='adminFList.action'"/></td>
		</tr>

		<tr height="20">
			<td></td>
		</tr>
		
</table>

<br>
<br>

<table align="center" width="834" border="0" cellspacing="0" cellpadding="0">
	
	<tr height="25">
		<td bgcolor="1E90FF" align="left" colspan="1" width="10"></td>
		<td align="left" colspan="3"><strong>&nbsp;&nbsp;������</strong></td>
	</tr>
	
</table>

<br>
<br>

<table align="center" width="834" border="0" cellspacing="0" cellpadding="0">
		
		<tr>
			<td align="center"><input type="image" src="/ildang1/common/images2/nList.png" onclick="window:location='nList.action'"/></td>
			<td align="center"><input type="image" src="/ildang1/common/images2/qList.png" onclick="window:location='qList.action'"/></td>
		</tr>
		
		<tr height="20">
			<td></td>
		</tr>
		
		<tr>
			<td align="center"><input type="image" src="/ildang1/common/images2/faqListAction.png" onclick="window:location='faqListAction.action'"/></td>
			<td align="center"></td>
		</tr>
</table>

<br>
<br>

</s:if>



<s:else>
<br>
<table align="center" border="0" cellspacing="0" cellpadding="0" width="1000">
	
	<tr align="center" height="1" bgcolor="#005ecd">
		<td></td>
	</tr>
	
	<tr>
		<td align="center" width="834" height="100"><img src="/ildang1/common/images/ad.jpg" border="0"></td>
		<td align="center" width="166" height="100">
		
			<table align="center" border="0" cellspacing="0" cellpadding="0">
			
				
				<s:if test="#session.session_id==null">
				<form action="login.action" method="post" onsubmit="return back();">
					<tr align="center" border="0" cellspacing="0" cellpadding="0">
						<td width="166"><input type="text" name="id" maxlength="20" value="���̵�"/></td>
					</tr>
					<tr align="center" border="0" cellspacing="0" cellpadding="0">
						<td width="166"><input type="password" name="password" maxlength="20" value="��й�ȣ"/></td>
					</tr>
					<tr align="center" border="0" cellspacing="0" cellpadding="0">
						<td width="166"><input type="button" class="topb2" onclick="openConfirmId();" value="ID/PW ã��"/><input type="button" class="topb2" onclick="window:location='joinWrite.action'" value="ȸ������"/></td>
					</tr>
					<tr align="center" border="0" cellspacing="0" cellpadding="0">
						<td height="7"></td>
					</tr>
					<tr align="center" border="0" cellspacing="0" cellpadding="0">
						<td width="166"><input type="submit" name="confirm_id" value="�α���" onclick="history.go(-1);" class="login1"/></td>
					</tr>
				</form>
				</s:if>
				
				<s:else>
					<tr align="center" height="1" bgcolor="#005ecd">
						<td></td>
					</tr>
					<tr height="18" bgcolor="#dbecfc">
						<td></td>
					</tr>
					<tr align="center" border="0" cellspacing="0" cellpadding="0" bgcolor="#dbecfc">
						<td width="146"><font size="2"><strong>${session.session_id }��</strong></font></td>
					</tr>
					<tr height="18" bgcolor="#dbecfc">
						<td></td>
					</tr>
					<tr align="center" border="0" cellspacing="0" cellpadding="0" bgcolor="#dbecfc">
						<td width="166"><input type="button" value="�α� �ƿ�" class="login1" onclick="window:location='logout.action'"/></td>
					</tr>
					<tr height="18" bgcolor="#dbecfc">
						<td></td>
					</tr>
					<tr align="center" height="1" bgcolor="#005ecd">
						<td></td>
					</tr>
				</s:else>
				
	
			</table>
			
		</td>
	</tr>
	
	<tr align="center" height="1" bgcolor="#005ecd">
		<td></td>
	</tr>
	
</table>

<br>

<!-- ���� ���� -->

<table align="center" border="0" cellspacing="0" cellpadding="0" width="1000">

<s:iterator value="nlist" status="stat">
		<s:url id="viewURL" action="nView">
			<s:param name="N_no">
				<s:property value="N_no" />
			</s:param>
			<s:param name="currentPage">
				<s:property value="currentPage" />
			</s:param>
		</s:url>
	
		<tr bgcolor="#dbecfc" align="center" height="30">
			<td align="center">
 				<font color="blue" size="2">[��������] <s:a href="%{viewURL}"><s:property value="N_sub" /></s:a> [<s:property value="N_wdate" />]</font>
 			</td>
		</tr>

	</s:iterator>

	<s:if test="List.size() <= 0">
		<tr height="40">
			<td colspan="2" align="center">��ϵ� ���������� �����ϴ�</td>
		</tr>
		<tr bgcolor="#9aafc9">
        		<td height="1" colspan="2"></td>
      	</tr>
	</s:if>

</table>

<!-- �������� -->

<br>

<table>
	
	<tr>
		<td align="center" width="485"><!-- �ǽð� �Խ��� -->
		
		<table width="485" border="0" cellspacing="0" cellpadding="0">
  		
      	   
  		<tr height="25">
			<td bgcolor="1E90FF" align="left" colspan="1" width="10"></td>
			<td align="left" colspan="3"><a href="waListAction.action" style="color: #000000; text-decoration: none;"><strong>&nbsp;&nbsp;�ǽð� �η� �Խ���</strong></a></td>
		</tr>
		
  		<tr>
  			<td height="20"></td>
  		</tr>
  		
  	</table>


	<table align="center" width="485" border="0" cellspacing="0" cellpadding="0">
	     
      	  <tr bgcolor="#005ecd">
        	<td height="1" colspan="2"></td>
      	   </tr>
      	   
      	  <!-- ����Ʈ�߿� �ϳ��� ������ ��� ���� ��ȣ�� ������ �������� �����ִ� �� -->
      	  <!-- iterator : ���� ���� ���̴� �͵��� ������� �����ϸ鼭 ��ü�� �˻��ϴ� ó���� �����ϱ� ���� ���� -->
	      <s:iterator value="walist" status="stat">
			<!-- http://localhost:8080/WaBoard/waViewAction.action?no=2&currentPage=1 -->
			<!-- ���� �����ִ� ���� ��ȣ�� ���������� �־��ִ� �� -->
			<s:url id="viewURL" action="waViewAction" >
				<s:param name="wa_no">
					<s:property value="wa_no" />
				</s:param>
				<s:param name="currentPage">
					<s:property value="currentPage" />
				</s:param>
			</s:url>
			
     	      <tr bgcolor="#FFFFFF"  align="center" height="40">
        		<td width="410" align="left">
        		<s:if test="#session.session_id == null">
        		&nbsp;<s:a href="javascript:test();"><s:property value="wa_sub"/></s:a></td>
        		</s:if>
        		 <s:else>
        		 &nbsp;<s:a href="%{viewURL}"><s:property value="wa_sub" /></s:a></td>
        		 </s:else>
        		<td width="75" align="center"><s:property value="wa_wdate" /></td>
      	      </tr>
      	      <tr bgcolor="#9aafc9">
        		<td height="1" colspan="2"></td>
      	      </tr>
      
	      </s:iterator>
			
	      <s:if test="walist.size() <= 0">
				
	      <tr bgcolor="#FFFFFF"  align="center">
		<td colspan="2">��ϵ� �Խù��� �����ϴ�.</td>
                  </tr>						
	      <tr bgcolor="#9aafc9">
        		<td height="1" colspan="2"></td>
      	      </tr>
    		
	      </s:if>
			
	    
	</table>
		
		
		
		
		<!-- �ǽð� �Խ��� --></td>
		
		<td align="center" width="30"></td>
		
		<td align="center" width="485"><!-- ��� �Խ��� -->
		
		
		
		
		<table width="485" border="0" cellspacing="0" cellpadding="0">
  		
      	   
  		<tr height="25">
			<td bgcolor="1E90FF" align="left" colspan="1" width="10"></td>
			<td align="left" colspan="3"><a href="cList.action" style="color: #000000; text-decoration: none;"><strong>&nbsp;&nbsp;��� ���� �Խ���</strong></a></td>
		</tr>
  		<tr>
  			<td height="20"></td>
  		</tr>
  	</table>
  	
  
	<table align="center" width="485" border="0" cellspacing="0" cellpadding="0">
		
      	   <tr bgcolor="#005ecd">
        	<td height="1" colspan="2"></td>
      	   </tr>

	      <s:iterator value="list" status="stat">

		<s:url id="viewURL" action="cView" >
			<s:param name="cb_No">
				<s:property value="cb_No" />
			</s:param>
			<s:param name="currentPage">
				<s:property value="currentPage" />
			</s:param>
		</s:url>
			
     	      <tr bgcolor="#FFFFFF"  align="center" height="40">
        		
        		<td align="left" width="410">
        		<s:if test="#session.session_id == null">
        		&nbsp;<s:a href="javascript:test();"><s:property value="cb_Sub"/></s:a></td>
        		</s:if>
        		 <s:else>
        		 &nbsp;<s:a href="%{viewURL}">
        			<s:property value="cb_Sub" /></s:a></td>
        			</s:else>
        		
        		<td align="center" width="75"><s:property value="cb_Wdate" /></td>
      	      </tr>
      	      
      	      <tr bgcolor="#9aafc9">
        		<td height="1" colspan="2"></td>
      	      </tr>
      
	      </s:iterator>
			
	      <s:if test="list.size() <= 0">
				
	      <tr bgcolor="#FFFFFF"  align="center">
			<td colspan="2">��ϵ� �Խù��� �����ϴ�.</td>
                  </tr>						
	      <tr bgcolor="#9aafc9">
        		<td height="1" colspan="2"></td>
      	      </tr>
    		
	      </s:if>
			
	   
    	
    	     
	</table>
		
		
		
		
		
		<!-- ��� �Խ��� --></td>
	</tr>
	<tr>
	
	<td align="center" height="30"></td>
	</tr>
	<tr>
		<td align="center" width="485"><!-- ���� �Խ��� -->
		
		
		<table width="485" border="0" cellspacing="0" cellpadding="0">
  		
      	   
  		<tr height="25">
			<td bgcolor="1E90FF" align="left" colspan="1" width="10"></td>
			<td align="left" colspan="3"><a href="p_List.action" style="color: #000000; text-decoration: none;"><strong>&nbsp;&nbsp;���� ���� �Խ���</strong></a></td>
		</tr>
  		<tr>
  			<td height="20"></td>
  		</tr>
  	</table>
  	
  
	<table width="485" border="0" cellspacing="0" cellpadding="0">
      	   
      	   <tr bgcolor="#005ecd">
        	<td height="1" colspan="2"></td>
      	   </tr>

	      <s:iterator value="plist" status="stat">

		<s:url id="viewURL" action="p_View" >
			<s:param name="pb_No">
				<s:property value="pb_No" />
			</s:param>
			<s:param name="currentPage">
				<s:property value="currentPage" />
			</s:param>
		</s:url>
			
     	      <tr bgcolor="#FFFFFF"  align="center" height="40">
        		<td align="left" width="410">
        		<s:if test="#session.session_id == null">
        		&nbsp;<s:a href="javascript:test();"><s:property value="pb_Sub"/></s:a></td>
        		</s:if>
        		 <s:else>
        		 &nbsp;<s:a href="%{viewURL}">
        			<s:property value="pb_Sub" /></s:a></td>
        			</s:else>
        		<td align="center" width="75"><s:property value="pb_Wdate" /></td>
      	      </tr>
      	      <tr bgcolor="#9aafc9">
        		<td height="1" colspan="2"></td>
      	      </tr>
      
	      </s:iterator>
			
	      <s:if test="plist.size() <= 0">
				
	      <tr bgcolor="#FFFFFF"  align="center">
			<td colspan="2">��ϵ� �Խù��� �����ϴ�.</td>
                  </tr>						
	      <tr bgcolor="#9aafc9">
        		<td height="1" colspan="2"></td>
      	      </tr>
    		
	      </s:if>
			
	      
    
	</table>
		
		
		
		
		<!-- ���� �Խ��� --></td>
		<td align="center" width="30">
		<td align="center" width="485"><!-- ���� �Խ��� -->
		
		
		
		
		
		
		
		<table width="485" border="0" cellspacing="0" cellpadding="0">
  		
      	   
  		<tr height="25">
			<td bgcolor="1E90FF" align="left" colspan="1" width="10"></td>
			<td align="left" colspan="3"><a href="fList.action" style="color: #000000; text-decoration: none;"><strong>&nbsp;&nbsp;���� �Խ���</strong></a></td>
		</tr>
  		<tr>
  			<td height="20"></td>
  		</tr>
  	</table>
  	
  
	<table width="485" border="0" cellspacing="0" cellpadding="0">
      	   
      	   <tr bgcolor="#005ecd">
        	<td height="1" colspan="2"></td>
      	   </tr>

	      <s:iterator value="flist" status="stat">

		<s:url id="viewURL" action="fView" >
			<s:param name="f_no">
				<s:property value="f_no" />
			</s:param>
			<s:param name="currentPage">
				<s:property value="currentPage" />
			</s:param>
		</s:url>
			
     	      <tr bgcolor="#FFFFFF"  align="center" height="40">
        		<td align="left" width="410">
        		<s:if test="#session.session_id == null">
        		&nbsp;<s:a href="javascript:test();"><s:property value="f_sub"/></s:a></td>
        		</s:if>
        		 <s:else>
        		 &nbsp;<s:a href="%{viewURL}">
        			<s:property value="f_sub" /></s:a></td>
        			</s:else>
        		<td align="center" width="75"><s:property value="f_wdate" /></td>
      	      </tr>
      	      <tr bgcolor="#9aafc9">
        		<td height="1" colspan="2"></td>
      	      </tr>
      
	      </s:iterator>
			
	      <s:if test="flist.size() <= 0">
				
	      <tr bgcolor="#FFFFFF"  align="center">
			<td colspan="2">��ϵ� �Խù��� �����ϴ�.</td>
                  </tr>						
	      <tr bgcolor="#9aafc9">
        		<td height="1" colspan="2"></td>
      	      </tr>
    		
	      </s:if>
			
	      
    
	</table>
		
		
		
		
		
		
		
		
		
		
		<!-- ���� �Խ��� --></td>
	</tr>
</table>
</s:else>
<br>
<br>
</body>
</html>