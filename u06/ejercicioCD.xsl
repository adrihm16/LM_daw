<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Mi coleccion de CDs</h1>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th style="text-align:left">Titulo</th>
                        <th style="text-align:left">Artista</th>
                        <th style="text-align:left">País</th>
                        <th style="text-align:left">Década</th>
                    </tr>
                    <xsl:for-each select="catalog/cd">
                        <tr>
                            <td>
                                <xsl:value-of select="title"/>
                            </td>
                            <td>
                                <xsl:value-of select="artist"/>
                            </td>
                            <td>
                                <xsl:value-of select="artist/@country"/>
                            </td>
                            <xsl:choose>
                                <xsl:choose>
                                    <xsl:when test="number(@year) >= 1960 and 1970 > number(@year)  ">
                                        <td>60's</td>
                                    </xsl:when>
                                    <xsl:when test="number(@year) >= 1970 and 1980 > number(@year)">
                                        <td>70's</td>
                                    </xsl:when>
                                    <xsl:when test="number(@year) >= 1980 and  1990 > number(@year)">
                                        <td>80's</td>
                                    </xsl:when>
                                    <xsl:when test="number(@year) >= 1990 and 2000 > number(@year) ">
                                        <td>90's</td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td>¿?</td>
                                    </xsl:otherwise>
                                </xsl:choose>

                            </xsl:choose>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>