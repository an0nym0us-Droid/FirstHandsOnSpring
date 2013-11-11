<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>
.CSSTableGenerator {
	margin:0px;padding:0px;
	width:100%;
	border:1px solid #000000;
	
	-moz-border-radius-bottomleft:8px;
	-webkit-border-bottom-left-radius:8px;
	border-bottom-left-radius:8px;
	
	-moz-border-radius-bottomright:8px;
	-webkit-border-bottom-right-radius:8px;
	border-bottom-right-radius:8px;
	
	-moz-border-radius-topright:8px;
	-webkit-border-top-right-radius:8px;
	border-top-right-radius:8px;
	
	-moz-border-radius-topleft:8px;
	-webkit-border-top-left-radius:8px;
	border-top-left-radius:8px;
}.CSSTableGenerator table{
	width:100%;
	height:100%;
	margin:0px;padding:0px;
}.CSSTableGenerator tr:hover{
	cursor:default;
}
}.CSSTableGenerator tr:last-child td:last-child {
	-moz-border-radius-bottomright:8px;
	-webkit-border-bottom-right-radius:8px;
	border-bottom-right-radius:8px;
}
.CSSTableGenerator table tr:first-child td:first-child {
	-moz-border-radius-topleft:8px;
	-webkit-border-top-left-radius:8px;
	border-top-left-radius:8px;
}
.CSSTableGenerator table tr:first-child td:last-child {
	-moz-border-radius-topright:8px;
	-webkit-border-top-right-radius:8px;
	border-top-right-radius:8px;
}.CSSTableGenerator tr:last-child td:first-child{
	-moz-border-radius-bottomleft:8px;
	-webkit-border-bottom-left-radius:8px;
	border-bottom-left-radius:8px;
}.CSSTableGenerator tr:hover td{
	background-color:#cccc99;
}
.CSSTableGenerator td{
	vertical-align:middle;
	
	background-color:#cccccc;

	border:1px solid #000000;
	border-width:0px 1px 1px 0px;
	text-align:center;
	padding:7px;
	font-size:15px;
	font-family:Arial;
	font-weight:normal;
	color:#000000;
}.CSSTableGenerator tr:last-child td{
	border-width:0px 1px 0px 0px;
}.CSSTableGenerator tr td:last-child{
	border-width:0px 0px 1px 0px;
	text-align:left;
}.CSSTableGenerator tr:last-child td:last-child{
	border-width:0px 0px 0px 0px;
}
.CSSTableGenerator tr:first-child td{
		background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );
	background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");	background: -o-linear-gradient(top,#003366,003f7f);

	background-color:#003366;
	border:0px solid #000000;
	text-align:center;
	border-width:0px 0px 1px 1px;
	font-size:17px;
	font-family:Arial;
	font-weight:bold;
	color:#ffffff;
}
.CSSTableGenerator tr:first-child:hover td{
	background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );
	background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");	background: -o-linear-gradient(top,#003366,003f7f);

	background-color:#003366;
}
.CSSTableGenerator tr:first-child td:first-child{
	border-width:0px 0px 1px 0px;
}
.CSSTableGenerator tr:first-child td:last-child{
	border-width:0px 0px 1px 1px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FirstHandsOnSpring</title>
</head>
<body>
	<div style="display:block;float:left;margin-top:3px">
 	Select Category : 
 	</div>
	<form action="a.html" method="POST">
		<select  onchange="this.form.submit()" name="myselect" id="myselid" style="margin-left:10px">
			<c:forEach var="p" items="${categories}">
				<c:choose>
					<c:when test="${p.categoryId==selId}">
					<option selected="selected" value="${p.categoryId}">${p.categoryName}</option>
					</c:when>	
					<c:otherwise>
					<option value="${p.categoryId}">${p.categoryName}</option>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</select>
	</form>
	
		<h1>${selName}</h1>
		<!-- ------------------------------------------- -->
		    <c:set var="count" value="1" scope="page" />
				<div class="CSSTableGenerator" >
	                <table >
	                		<tr>
		                        <td>
		                            Sno.
		                        </td>
		                        <td>
		                            Product Name
		                        </td>
		                    </tr>
	                	<c:forEach var="z" items="${products}">
		                    <tr title="Product Id : ${z.productId}">
		                        <td>
		                            ${count}
		                        </td>
		                        <td >
		                            ${z.productName}
		                        </td>
		                    </tr>
		                    <c:set var="count" value="${count + 1}" scope="page"/>
	                    </c:forEach>
	                </table>
	            </div>

</body>
</html>