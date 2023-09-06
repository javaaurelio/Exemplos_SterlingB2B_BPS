<?xml version="1.0"?>
<xsl:transform exclude-result-prefixes="xsl" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">    
		<Certificate Cryptography="KeyCert" Name="CertificadoRecebido" Operation="Parse" Type="CACert"><CER></CER>
			<ParseCER><xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text><xsl:value-of select="root"/><xsl:text disable-output-escaping="yes">]]&gt;</xsl:text></ParseCER>	
		</Certificate>
    </xsl:template>
</xsl:transform>