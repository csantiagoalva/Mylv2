<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0"
	xmlns:s="/struts-tags" xmlns:sj="/struts-jquery-tags">
	<jsp:directive.page language="java"
		contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
	<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Modificar Tema</title>
</head>
<body>
	<s:url id="urlCancelar" value="/catalogo-tema.action" includeContext="true" />
	<s:actionerror id="saeTema" theme="jquery" />
	<s:fielderror id="sfeTema" theme="jquery" />

	<s:form action="%{#request.contextPath}/catalogo-tema/%{idTema}.action"
		method="post" theme="simple" acceptcharset="UTF-8" cssStyle="border: 0px;width:90%">
		<center>
			<h1>Modificar Tema</h1>
		</center>
		<s:hidden id="hdnMethod" name="_method" value="put" />
		<table>
			<tr>
				<td><label>Nombre:</label></td>
				<td><s:textfield id="Nombre" name="model.nombre" maxlength="50" /></td>
			</tr>
			<tr>
				<td colspan="2"><label>Descripción:</label></td>
			</tr>
			<tr>
				<td colspan="2"><s:textarea rows="3" cols="70" id="Descripcion"
						name="model.descripcion" maxlength="200" /></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;"><sj:submit
						id="btnAceptar" value="Aceptar" button="true"
						buttonIcon="ui-icon-star" /> <sj:a id="btnCancelar" button="true"
						href="#" onclick="location.href='%{urlCancelar}'">Cancelar</sj:a></td>
			</tr>
		</table>
	</s:form>

</body>
	</html>
</jsp:root>