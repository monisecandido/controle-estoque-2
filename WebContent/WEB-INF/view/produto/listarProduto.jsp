
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="../menu.jsp"/>
<jsp:useBean id="dao" class="br.com.ifpe.estoque.dao.ProdutoDao" />
<title>Insert title here</title>
</head>
<body>
	<ul>
  	<c:forEach var="produto" items="${dao.listar()}">
		<li> 
		${produto.codigo} | <fmt:formatDate value="${produto.garantia}" pattern="dd/MM/yyyy"/> |
		${produto.precoCusto} | ${produto.precoVenda}
		
		<c:choose>
			<c:when test="${not empty produto.imagem}">
				${produto.imagem}
			</c:when>
			<c:otherwise>
				Esse produto não possui uma imagem.
			</c:otherwise>
		</c:choose>
		</li>
	</c:forEach>
	</ul>
	
</body>
</html>
