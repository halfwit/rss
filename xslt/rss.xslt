<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    <xsl:template match="/rss">
		<xsl:value-of select="title"/>
        <xsl:for-each select="channel/item">
            <xsl:choose>
                <xsl:when test="guid/@isPermaLink = 'true'">
                    <xsl:value-of select="guid"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="link"/>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text>&#x9;</xsl:text>
            <xsl:value-of select="title"/>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
