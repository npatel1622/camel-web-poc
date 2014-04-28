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
			<xsl:copy-of select="person/state" />
			<xsl:choose>
				<xsl:when test="person/state = 'IL'">
					<xsl:element name="processed">true</xsl:element>
				</xsl:when>
				<xsl:otherwise>
					<xsl:element name="processed">false</xsl:element>
				</xsl:otherwise>

			</xsl:choose>
		</person>
	</xsl:template>
</xsl:stylesheet>
						