<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
	<html>
		<head>
			<title>Productos disponibles</title>
			<link href="./fuentes/default.css" rel="stylesheet" type="text/css" media="all"></link>
			<link href="./fuentes/fonts.css" rel="stylesheet" type="text/css" media="all"></link>
		</head>
		<body>
			<header>
				<div id="header-wrapper">
					<div id="header" class="container">
						<div id="logo">
							<h1><a href="#">ASIA SPACE</a></h1>
						</div>
						<div id="menu">
							<ul>
								<li class="active"><a href="./index.html" accesskey="1" title="">HOME</a></li>
								<li><a href="#" accesskey="4" title="">JAVA</a></li>
								<li><a href="#" accesskey="3" title="">CSS</a></li>
								<li><a href="#" accesskey="2" title="">HTML</a></li>
								<li><a href="XMLIndex.xml" accesskey="5" title="">CATALOGO XML</a></li>
								<li><form method="get" action="https://www.google.com/search">
									<input type="text" name="q" size="15" maxlength="255" value="" />
									<input type="submit" name="" value="Google"/>
									</form>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</header>
			<section class="xslt">
				<table>
					<tr>
						<th><h1>Producto</h1></th>
						<th><h1>Imagen</h1></th>
						<th><h1>Precio</h1></th>
						<th><h1>Categoria</h1></th>
						<th><h1>Tipo</h1></th>
						<th><h1>Descripcion</h1></th>
					</tr>
					<xsl:for-each select="stock/producto">
						<tr>
							<th><h1><xsl:value-of select="nombre"></xsl:value-of></h1></th>
							<th>
								<img>
									<xsl:attribute name="src">
										<xsl:value-of select="imagen"></xsl:value-of>
									</xsl:attribute>
								</img>
							</th>
							<th><xsl:value-of select="precio"></xsl:value-of></th>
							<th><xsl:value-of select="categoria"></xsl:value-of></th>
							<th><xsl:value-of select="tipo"></xsl:value-of></th>
							<th><xsl:value-of select="descripcion"></xsl:value-of></th>
						</tr>
					</xsl:for-each>
				</table>
			</section>
		</body>
	</html>
	</xsl:template>
</xsl:stylesheet>