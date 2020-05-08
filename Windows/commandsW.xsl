<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
                doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" omit-xml-declaration="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>System commands</title>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                <link rel="stylesheet" type="text/css" href="commands.css" media="screen"/>
                <script type="text/javascript" src="commands.js"></script>
            </head>
            <body>
                <h2>System commands:</h2>
                <input type="text" id="buscar" name="buscar" value="Buscar" onchange="busca();"/>
                <xsl:for-each select="commands_system/so[name='Microsoft Windows']">
                    <xsl:for-each select="commands/command">
                        <div class="muestra">
                            <ul>
                                <li>
                                    <p>
                                        <strong class="command">
                                            <xsl:value-of select="code"/>
                                        </strong>
                                    </p>
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
                                                </ul>
                                            </xsl:for-each>
                                            <li>
                                                <strong>Code example: </strong>
                                                <xsl:value-of select="parameters/example_of_use/code_example"/>
                                            </li>
                                            <img>
                                                <xsl:attribute name="src">
                                                    <xsl:value-of select="parameters/example_of_use/output"/>
                                                </xsl:attribute>
                                            </img>

                                        </li>
                                    </xsl:if>
                                </ul>
                            </ul>
                        </div>
                    </xsl:for-each>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
