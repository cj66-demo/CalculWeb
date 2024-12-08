<%@page import="com.tld.CalculMetier"%>
<% 
double a=0; double b=0; double res=0; 
String action=request.getParameter("action");
if (action!=null){
	a=Double.parseDouble(request.getParameter("a"));
	b=Double.parseDouble(request.getParameter("b")); 
	CalculMetier metier=new CalculMetier(); 
	if(action.equals("somme")){res=metier.somme(a,b);}
	else{ res=metier.produit(a,b);} 
	}
%>	
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="index.jsp" method="post">
		<table>
			<tr>
				<td>A:</td>
				<td><input type="text" name="a" value="<%=a%>" /></td>
				<td>B:</td>
				<td><input type="text" name="b" value="<%=b%>" /></td>
			</tr>
			<tr>
				<td><input type="submit" name="action" value="Somme" /></td>
				<td><input type="submit" name="action" value="Produit" /></td>
			</tr>
			<tr>
				<td>Résultat</td>
				<td><%=res%></td>
			</tr>
		</table>
	</form>
</body>
</html>