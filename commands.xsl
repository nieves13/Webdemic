<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
                doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" omit-xml-declaration="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>System commands</title>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                <link rel="stylesheet" type="text/css" href="estilos.css" media="screen"/>
                <script type="text/javascript" src="escrip_cd.js"></script>
            </head>
            <body>
                <h2>System commands:</h2>
                <ul>
                    <li>
                        <xsl:for-each select="commands_system/so[name='Microsoft Windows']">
                            <ul>
                                <xsl:for-each select="commands/command">
                                    <li>
                                        <strong>Command: </strong>
                                        <xsl:value-of select="code"/>
                                    </li>
                                    <ul>
                                        <li>
                                            <strong>Description: </strong>
                                            <xsl:value-of select="description"/>
                                        </li>
                                        <xsl:if test="count(parameters)>=1">
                                            <li>
                                                <strong>Parameters: </strong>
                                                <xsl:for-each select="parameters/parameter">

                                                    <ul>
                                                        <li>
                                                            <strong>Param code: </strong>
                                                            <xsl:value-of select="param_code"/>
                                                            <ul>
                                                                <li>
                                                                    <strong>Param description: </strong>
                                                                    <xsl:value-of select="param_description"/>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                        <!--<xsl:for-each select="../../command">!-->

                                                        <!--</xsl:for-each>!-->
                                                    </ul>
                                                    </xsl:for-each>
                                                    <li>
                                                        <strong>Code example: </strong>
                                                        <xsl:value-of select="parameters/example_of_use/code_example"/>
                                                        <img>
                                                            <xsl:attribute name="src">
                                                                <xsl:value-of select="parameters/example_of_use/output"/>
                                                            </xsl:attribute>
                                                        </img>
                                                    </li>
                                            </li>
                                        </xsl:if>
                                    </ul>
                                </xsl:for-each>
                            </ul>
                        </xsl:for-each>
                    </li>

                </ul>


                <!--
              <div>
                <p>
                  Titol: <input type="text" id="titulo"/> Artista: <input type="text" id="artista"/>
                  <input type="button" value="Afig" onclick="afig();"/>
                  <input type="button" value="Elimina" onclick="elimina();"/>
                </p>
                <p>
                  Buscar:<input type="text" id="buscar"/>
                  <input type="button" value="Buscar" onclick="buscar();"/>
                </p>
              </div>
                <table>
                  <tr>
                    <th>Title</th>
                    <th>Artist</th>
                  </tr>
                  <xsl:for-each select="catalog/cd">
                  <tr>
                    <td><xsl:value-of select="title"/></td>
                    <td class="ar"><xsl:value-of select="artist"/></td>
                  </tr>
                  </xsl:for-each>
                </table> !-->
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
