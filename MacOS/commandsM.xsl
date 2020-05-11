<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
                doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" omit-xml-declaration="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>MacOS commands</title>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                <link rel="stylesheet" type="text/css" href="../commands.css" media="screen"/>
                <script type="text/javascript" src="../commands.js"></script>
                <link rel="icon" type="image/png" href="images/icono.jpg" />
            </head>
            <body>
                <div class="Header"><h1>System commands</h1></div>
                <div class="Agrupacion">
                      <p><a href="../Windows/commandsW.xml">Windows</a></p>
                      <p><a href="../Linux/commandsL.xml">Linux</a></p>
                      <p><a href="../MacOS/commandsM.xml">MacOS</a></p>
                      <p><a href="../index.html">Main page</a></p>
              </div>
              <div class="Texto">
                  <input type="text" id="buscar" placeholder="Buscar" name="buscar" onchange="busca();"/>
                  <img onclick="buscar()" src="../images/lens.jpg"/>
                  <xsl:for-each select="commands_system/so[name='MacOS']">
                      <xsl:for-each select="commands/command">
                          <div class="as muestra">
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
              <img style="border:0;width:200px;height:100px"
              src="../images/et.png"
              alt="eTwinning" class="img" />
              </div>
                <div class="Pie">
                    <div class="valid">
                        <p>
                          <a href="http://validator.w3.org/check?uri=referer"><img
                          src="http://www.w3.org/Icons/valid-xhtml11" alt="Valid XHTML 1.1" height="31" width="88" /></a>
                        </p>
                        <p>
                          <a href="http://jigsaw.w3.org/css-validator/check/referer">
                          <img style="border:0;width:88px;height:31px"
                          src="http://jigsaw.w3.org/css-validator/images/vcss-blue"
                          alt="¡CSS Válido!" />
                          </a>
                        </p>
                    </div>
                    <div class="cc">
                      <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
