<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
          
            <body>
                <h1>Peliculas</h1>
                <table border="1">
                    <tr bgcolor="#B4EFFF">
                        <th style="text-align:left">Titulo</th>
                        <th style="text-align:left">director</th>
                        <th style="text-align:left">Año</th>
                        <th style="text-align:left">Review</th>
                    </tr>
                    <xsl:for-each select="movies/movie">
                        <xsl:choose>
                            <xsl:when test="@rating='R'">
                                 <tr style="border-color: red; border-width: 6px;">
                            <td>
                                <xsl:value-of select="title"/>
                            </td>
                            <td>
                                <xsl:value-of select="director"/>
                            </td>
                            <td>
                                <xsl:value-of select="@year"/>
                            </td>
                            <td>
                                <xsl:value-of select="@review"/>
                            </td>
                        </tr>
                            </xsl:when>
                            <xsl:otherwise>
                                 <tr style="border-color: red; border-width: 6px;">
                            <td>
                                <xsl:value-of select="title"/>
                            </td>
                            <td>
                                <xsl:value-of select="director"/>
                            </td>
                            <td>
                                <xsl:value-of select="@year"/>
                            </td>
                            <td>
                                <xsl:value-of select="@review"/>
                            </td>
                        </tr>
                            </xsl:otherwise>
                        </xsl:choose>
                       
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>