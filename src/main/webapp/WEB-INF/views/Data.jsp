<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Product details</title>
		<style>
			body { background-color:lightblue;}
			div  { text-align:center;
			      }
			table  { text-align:center; 
			         font-size:150%;  
			         border-collapse: collapse; 
			         width: 100%;
			         border: 1px solid black;
			        }
			th, td { border: 1px solid black;
			         margin: 0; 
			         width:0%;
			         height: 50px;
                     vertical-align: center;
			        }
			input{font-size:100%; 
			      align:right
			     }
		</style>
	</head>
	<body>
		<div>
			<h1>E-COMMERCE PRODUCT DATA</h1>
		</div>
			<table>
				<tr >
					<th >ID</th>
					<th>CODE</th>
					<th>NAME</th>
					<th>COST</th>
					<th>GST</th>
					<th>NOTE</th>
					<th colspan=2>OPERATIONS</th>
				</tr>
				<c:forEach items="${list}" var="ob">&nbsp;&nbsp;
				<tr style="colour:black;">
					<td><c:out value="${ob.id}"/> </td>
					<td><c:out value="${ob.code}"/> </td>
					<td><c:out value="${ob.name}"/> </td>
					<td><c:out value="${ob.cost}"/> </td>
					<td><c:out value="${ob.gst}"/> </td>
					<td><c:out value="${ob.note}"/> </td>
					<td>
					<a href="delete?id=${ob.id}"><input type="button" value="DELETE"></a>&nbsp;&nbsp;&nbsp;
					<a href="edit?id=${ob.id}"><input type="button" value="EDIT"></a>
					</td>
				</tr>
				</c:forEach>
			</table>
			<div>
				<h3>Add new product</h3>
				<a href="reg"><input type=button value="CREATE"></a>
			</div>
	</body>
</html>