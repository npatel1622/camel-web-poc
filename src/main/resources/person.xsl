<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="utf-8" indent="yes" />
	<xsl:template match="/">
		<person>
			<xsl:attribute name="user">
		    	<xsl:value-of select="person/@user" />
		  	</xsl:attribute>
			<xsl:copy-of select="person/firstName" />
			<xsl:copy-of select="person/lastName" />
			<xsl:copy-of select="person/age" />
			<xsl:copy-of select="person/city" />
			<xsl:if
				test="person/city = 'Chicago' or person/city = 'Schaumburg' or person/city = 'Itasca'">
				<xsl:element name="state">IL</xsl:element>
			</xsl:if>
		</person>
	</xsl:template>
</xsl:stylesheet>
						