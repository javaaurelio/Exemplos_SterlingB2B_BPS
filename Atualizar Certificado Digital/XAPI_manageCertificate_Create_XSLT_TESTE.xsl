<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="1.0">
 <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
         <xsl:param name="nomeCert"/>
 

  <xsl:template match="/">	
  
		<Certificate Cryptography="KeyCert" Operation="Create" Type="CACert">
		<xsl:attribute name="Name"><xsl:value-of select="$nomeCert"/></xsl:attribute>
			  <xsl:apply-templates />
		</Certificate>
 
  </xsl:template>

  <xsl:template match="CER">       
    <xsl:copy>
         <xsl:copy-of select="@*|b/@*" />
         <xsl:attribute name="CertName"><xsl:value-of select="$nomeCert"/></xsl:attribute>
        <xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text><xsl:value-of select="."/><xsl:text disable-output-escaping="yes">]]&gt; 
       </xsl:text>
    </xsl:copy>
</xsl:template>




</xsl:stylesheet>