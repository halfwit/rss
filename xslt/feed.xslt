<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:atom="http://www.w3.org/2005/Atom">
    <xsl:output method="text"/>
    <xsl:template match="/atom:feed">
		<xsl:value-of select="atom:title"/>
		<xsl:text>&#10;</xsl:text>
        <xsl:for-each select="atom:entry">
            <xsl:value-of select="atom:link/@href"/>
            <xsl:text>&#x9;</xsl:text>
            <xsl:value-of select="atom:title"/>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
