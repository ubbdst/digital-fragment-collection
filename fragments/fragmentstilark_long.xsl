<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE xsl:stylesheet [ 
<!ENTITY home_sti "http://breuer.intermedia.uib.no/mpf/" >
<!ENTITY grafikk_sti "&home_sti;grafikk/" >
<!ENTITY aksis_sti "http://www.aksis.uib.no" >
<!ENTITY nbsp " " >

]>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:include href="../hovedstilark.xsl"/>
    <!--* Output and whitespace details *-->
    <xsl:output method="html" encoding="us-ascii" indent="no" doctype-public="-//W3C//DTD HTML 4.0//EN"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:value-of select="/teiHeader/title"/>
                </title>
                <link rel="stylesheet" type="text/css" href="http://breuer.intermedia.uib.no/mpf/page.css"/>
            </head>
            <body topmargin="20" leftmargin="20" marginheight="10" marginwidth="0" class="normal" onResize="resizeVindu();">
                <table border="0" cellpadding="0" cellspacing="0" width="700">
                    <tr>
                        <td colspan="5" class="menubar" align="right" height="573">
                           <p>
                             <img src="&grafikk_sti;mpf_logo_web.gif" width="200"/>
                              <br/>
                           </p>
                            <table cellpadding="0" cellspacing="0" border="0" width="700">
                                <tr>
                                    <td colspan="4" bgcolor="#CD5D2D">
                                        <br/>
                                        <div align="center">
                                            <font face="Verdana, Arial, Helvetica, sans-serif">
                                                <b>
                                                  <font size="2">MEDIEVAL PARCHMENT FRAGMENTS AT
                                                  BERGEN UNIVERSITY LIBRARY</font>
                                                </b>
                                            </font>
                                            <br/>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="100" height="2">
                                        <img src="&grafikk_sti;dekor_hvit.gif" width="200"
                                            height="4" align="top"/>
                                    </td>
                                    <td width="100" height="2">
                                        <img src="&grafikk_sti;dekor_hvit.gif" width="200"
                                            height="4" align="top"/>
                                    </td>
                                    <td width="200" height="2">
                                        <img src="&grafikk_sti;dekor_hvit.gif" width="200"
                                            height="4" align="top"/>
                                    </td>
                                    <td width="200" height="2">
                                        <img src="&grafikk_sti;dekor_hvit.gif" width="200"
                                            height="4" align="top"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" class="menubar">
                                      <xsl:call-template name="do_mainmenu"/>    
                                    </td>
                                    <td valign="top" colspan="2" class="main">
                                        <table width="400" border="0" cellspacing="10"
                                            cellpadding="10" align="center">
                                            <tr>
                                                <xsl:apply-templates/>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="200" valign="top">
                                        <xsl:call-template name="do_facsimiles"/>
                                        <p>&nbsp;</p>
                                        <p>&nbsp;</p>
                                        <p>&nbsp;</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="100">&nbsp;</td>
                                    <td width="200">&nbsp;</td>
                                    <td width="200">&nbsp;</td>
                                    <td width="200">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="4" bgcolor="#CD5D2D" height="36">
                                        <div align="left" class="barBottom">
                                            <p>
                                                <font face="Verdana, Arial, Helvetica, sans-serif" size="2">
                                                  <xsl:if test="//teiHeader[@type='mainpage']">
                                                  <b>Participants</b>
                                                  </xsl:if>
                                                  <xsl:if test="//teiHeader[@type=not('mainpage')]">
                                                  <b>Participants: <a
                                                  href="http://www.ub.uib.no/">Bergen
                                                  University Library</a> | <a
                                                  href="http://www.uib.no/cms/">CMS -
                                                  Center for Medival Studies</a> | <a
                                                  href="http://www.aksis.uib.no/">Aksis
                                                  - Department of Culture, Language
                                                  and Information Technology</a> | <a
                                                  href="http://www.menota.org">MENOTA
                                                  - Medival Nordic Text Archive</a>
                                                  </b>
                                                  </xsl:if>
                                                </font>
                                            </p>
                                        </div>
                                    </td>
                                </tr>
                                <xsl:if test="//teiHeader[@type='mainpage']">
                                    <tr>
                                        <td bgcolor="#ffffff">
                                            <img src="&grafikk_sti;dekor_hvit.gif" width="200" height="4"/>
                                            <br/>
                                            <a href="http://www.uib.no/cms/">
                                                <img src="&grafikk_sti;topp_hoved.jpg" width="200"/>
                                            </a>
                                        </td>
                                        <td bgcolor="#ffffff">
                                            <img src="&grafikk_sti;dekor_hvit.gif" width="200" height="4"/>
                                            <br/>
                                            <a href="http://www.ub.uib.no">
                                                <img src="&grafikk_sti;ub_head485.gif" width="200"/>
                                            </a>
                                        </td>
                                        <td bgcolor="#ffffff">
                                            <img src="&grafikk_sti;dekor_hvit.gif" width="200" height="4"/>
                                            <br/>
                                            <a href="http://www.menota.org">
                                                <img src="&grafikk_sti;Menota-banner.gif" width="200"/>
                                            </a>
                                            <br/>
                                            <img src="&grafikk_sti;dekor_hvit.gif" width="200" height="24"/>
                                        </td>
                                        <td bgcolor="#ffffff">
                                            <img src="&grafikk_sti;dekor_hvit.gif" width="200" height="4"/>
                                            <br/>
                                            <a href="http://www.aksis.uib.no">
                                                <img
                                                  src="&grafikk_sti;aksis-side-1-farge-engelsk.gif" width="200"/>
                                            </a>
                                            <br/>
                                            <img src="&grafikk_sti;dekor_hvit.gif" width="200" height="20"/>
                                        </td>
                                    </tr>
                                </xsl:if>
                            </table>
                        </td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="sourceDesc">
        <h1>
        <xsl:value-of select="//msHeading/title"/>
        </h1>
        <xsl:value-of select="//msHeading/note"/>
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="body">
        <xsl:apply-templates/>
    </xsl:template>
 
    <xsl:template match="//msHeading/title">
        <!-- Kortslutter foreløpig -->
    </xsl:template>

    <xsl:template match="//physDesc">
        <!-- Kortslutter foreløpig -->
    </xsl:template>
    <xsl:template match="//history">
        <!-- Kortslutter foreløpig -->
    </xsl:template>

    <xsl:template match="figure">
        <!-- Går til jord -->
    </xsl:template>

    
    <xsl:template match="msContents">
        <!--<h4 class="headline2">Manuscript Content</h4>
        <xsl:apply-templates/>-->
    </xsl:template>
    
    <xsl:template match="msIdentifier">
        <h4>Manuscript Identification</h4>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="repository">
        <div><b>Repository: </b> 
        <xsl:apply-templates/></div>
    </xsl:template>
    <xsl:template match="settlement">
        <!-- Går til jord -->
    </xsl:template>
    <xsl:template match="idno">
        <div><b>Signature: </b><xsl:apply-templates/></div>
    </xsl:template>
    <xsl:template match="altName">
        <div><b>Alternative name<xsl:if test="@type"> (<xsl:value-of select="@type"/>)</xsl:if>: </b><xsl:apply-templates/></div>
    </xsl:template>
    <xsl:template match="history">
        <h3>History</h3>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="origin">
        <h3>Origin</h3>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="note">
        <xsl:choose>
            <xsl:when test="attribute::type='schlagzeile'">
                <!-- Kortslutter -->
            </xsl:when>
            <xsl:when test="attribute::type='privat'">
                <!-- Kortslutter -->
            </xsl:when>
            <xsl:otherwise> [<xsl:apply-templates/>] </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="do_facsimiles">
        <table width="200" border="0" cellspacing="0" cellpadding="4" bgcolor="#35190D">
          <xsl:for-each select="//figure">
            <tr>
                <td><span style="color:#CD5D2D"><xsl:value-of select="."/></span>
                    <xsl:element name="a">
                        <xsl:attribute name="href">
                            <xsl:value-of select="@url"/>
                        </xsl:attribute>
                              <xsl:attribute name="target"><xsl:value-of select="."/></xsl:attribute>
                        <xsl:choose>
                            <xsl:when test="@n='LOW'">
                            <xsl:element name="img">
                              <xsl:attribute name="src">
                                <xsl:value-of select="@url"/>
                              </xsl:attribute>
                              <xsl:attribute name="width">190</xsl:attribute>
                            </xsl:element></xsl:when>
                            <xsl:otherwise>
                              <xsl:value-of select="."/>                        
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:element>
                </td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>

</xsl:stylesheet>
