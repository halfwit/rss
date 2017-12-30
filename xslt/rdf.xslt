<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:rss="http://purl.org/rss/1.0/"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
    <xsl:output method="text"/>
    <xsl:template match="/rdf:RDF">
        <xsl:for-each select="rss:item">
            <xsl:value-of select="rss:link"/>
            <xsl:text>&#x9;</xsl:text>
            <xsl:value-of select="rss:title"/>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
