<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<title>Insert title here</title>
</head>

<body>

<form name="updatePurchase" action="/updatePurchaseView.do?" method="post">

������ ���� ���Ű� �Ǿ����ϴ�.

<table border=1>
	<tr>
		<td>��ǰ��ȣ</td>
		<td>${productVO.getProdNo()}</td>
		<td></td>
	</tr>
	<tr>
		<td>�����ھ��̵�</td>
		<td>${purchaseVO.getBuyer().getUserId()}</td>
		<td></td>
	</tr>
	<tr>
		<td>���Ź��</td>
		<td>
		<c:if test="${purchaseVO.getPaymentOption() eq '1'}">���ݱ���</c:if>
		<c:if test="${purchaseVO.getPaymentOption() eq '2'}">�ſ뱸��</c:if>
	
		</td>
		<td></td>
	</tr>
	<tr>
		<td>�������̸�</td>
		<td>${purchaseVO.getReceiverName()}</td>
		<td></td>
	</tr>
	<tr>
		<td>�����ڿ���ó</td>
		<td>${purchaseVO.getReceiverPhone()}</td>
		<td></td>
	</tr>
	<tr>
		<td>�������ּ�</td>
		<td>${purchaseVO.getDivyAddr()}</td>
		<td></td>
	</tr>
		<tr>
		<td>���ſ�û����</td>
		<td>${purchaseVO.getDivyRequest()}</td>
		<td></td>
	</tr>
	<tr>
		<td>����������</td>
		<td>${purchaseVO.getDivyDate()}</td>
		<td></td>
	</tr>
</table>
</form>

</body>
</html>