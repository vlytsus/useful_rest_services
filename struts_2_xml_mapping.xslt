<?xml version="1.0" encoding="UTF-8"?>
 <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema">
	<xsl:output version="1.0" encoding="utf-8" omit-xml-declaration="no" indent="no" media-type="text/html"/>
	<xsl:template match="/struts">
		<html>
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
			<head>
				<style>
					body { font-family: Arial; font-size: 14} 					
					a { text-decoration: none}
					i { font-family: verdana}
					td { font-size: 12 } 
					li { font-size: 12 }						
			    </style>
			</head>
			<body>
				<h1>
					struts.xml
				</h1>
				<br/>
				<h2>Constants</h2>
				<table border="1">
					<tbody>
						<tr bgcolor="navy">
							<td>
								<span style="color:white">name</span>
							</td>
							<td>
								<span style="color:white">value</span>
							</td>
						</tr>						
						<xsl:for-each select="constant">
						  <tr>	
							<td valign="top">
								<b><xsl:value-of select="@name"/></b>
							</td>
							<td>
								<xsl:value-of select="@value"/>
							</td>						
						  </tr>
						</xsl:for-each>
					</tbody>
				</table>
				<br/>				
				<h2>action-mappings</h2>
				<table border="1">
					<tbody>
						<tr bgcolor="navy">
							<td>
								<span style="color:white">name</span>
							</td>
							<td>
								<span style="color:white">class</span>
							</td>
						</tr>
						<xsl:for-each select="action">
						  <tr>	
							<td valign="top">
								<b><xsl:value-of select="@name"/></b>
							</td>
							<td valign="top">
								<b><xsl:value-of select="@class"/></b>
							</td>
						  </tr>
						</xsl:for-each>
					</tbody>
				</table>
			</body>
		</html>
	</xsl:template>
	
</xsl:stylesheet>
