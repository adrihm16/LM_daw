<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Peliculas con puntuación mayor a 4 puntos</h1>
                        <table border="1">
                            <tr bgcolor="#9acd32">
                                <th style="text-align:left">Titulo</th>
                                <th style="text-align:left">Puntuación</th>
                            </tr>
                            <xsl:for-each select="movies/movie">
                                <xsl:if test="@review>4">
                                <tr>
                                    <td>
                                        <xsl:value-of select="title"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="@review"/>
                                    </td>
                                </tr>
                                </xsl:if>
                            </xsl:for-each>
                        </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>