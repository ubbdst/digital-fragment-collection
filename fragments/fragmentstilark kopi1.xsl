<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE xsl:stylesheet [ 
<!ENTITY home_sti "http://breuer.intermedia.uib.no/mpf/" >
<!ENTITY grafikk_sti "&home_sti;grafikk/" >
<!ENTITY aksis_sti "http://www.aksis.uib.no" >
<!ENTITY nbsp " " >

]>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <!--* Output and whitespace details *-->
    <xsl:output method="html" encoding="us-ascii" indent="no" doctype-public="-//W3C//DTD HTML 4.0//EN"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:value-of select="/teiHeader/title"/>
                </title>
                <!--link rel="stylesheet" type="text/css" href="http://xml.intermedia.uib.no/2003/Document/basic.css"/-->
                <!--link rel="stylesheet" type="text/css" href="http://www.intermedia.uib.no/css/common.css"/-->
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
                                    <td colspan="2" class="main">
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
    <xsl:template match="front|back">
        <tr>
            <td colspan="2" class="mainbar" valign="top" width="100%">
                <div class="box">
                    <xsl:apply-templates/>
                </div>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="titleStmt | publicationStmt | revisionDesc">
        <!-- kortslutter -->
    </xsl:template>
    <xsl:template match="msContents">
        <h2 class="headline2">Manuscript Content</h2>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="msIdentifier">
        <h2 class="headline2">Manuscript Identification</h2>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="repository">
        <div><b>Repository: </b> 
        <xsl:apply-templates/></div>
    </xsl:template>
    <xsl:template match="settlement">
        <div><b>Settlement: </b><xsl:apply-templates/></div>
    </xsl:template>
    <xsl:template match="idno">
        <div><b>Signature: </b><xsl:apply-templates/></div>
    </xsl:template>
    <xsl:template match="altName">
        <div><b>Alternative name: </b><xsl:apply-templates/></div>
       
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
            <xsl:when test="attribute::type='privat'">
                <!-- Kortslutter -->
            </xsl:when>
            <xsl:otherwise> [<xsl:apply-templates/>] </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="//p">
        <xsl:apply-templates/>
        <BR/>
        <BR/>
    </xsl:template>
    <xsl:template match="hi">
        <xsl:choose>
            <xsl:when test="@rend='bold'">
                <b>
                    <xsl:apply-templates/>
                </b>
            </xsl:when>
            <xsl:when test="@rend='italic'">
                <i>
                    <xsl:apply-templates/>
                </i>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="body">
         <td>
            <div class="box">
                <xsl:apply-templates/>
                <xsl:call-template name="do-signatur"/>
            </div>
        </td>
    </xsl:template>
    <xsl:template match="head" mode="toc">
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="head">
        <h3>
            <xsl:element name="a">
                <xsl:attribute name="name">
                    <xsl:value-of select="generate-id(..)"/>
                </xsl:attribute>
                <xsl:apply-templates/>
            </xsl:element>
        </h3>
    </xsl:template>
    <xsl:template match="div/div/div//head">
        <h4>
            <xsl:element name="a">
                <xsl:attribute name="name">
                    <xsl:value-of select="generate-id(..)"/>
                </xsl:attribute>
                <xsl:apply-templates/>
            </xsl:element>
        </h4>
    </xsl:template>
    <xsl:template match="body/div/head">
        <h1>
            <xsl:element name="a">
                <xsl:attribute name="name">
                    <xsl:value-of select="generate-id(..)"/>
                </xsl:attribute>
                <xsl:apply-templates/>
            </xsl:element>
        </h1>
    </xsl:template>
    <xsl:template match="bibl">
        <h3 class="headline1">Bibliography</h3>
        <xsl:element name="ul">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="bibl/title">
        <xsl:element name="li">Title: <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="bibl/author">
        <xsl:element name="li">Author: <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="bibl/publisher">
        <xsl:element name="li">Publisher: <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="bibl/date">
        <xsl:element name="li">year: <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="bibl/pubPlace">
        <xsl:element name="li">Place: <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="bibl/kw">
        <xsl:element name="li">Keywords: <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="bibl/idno">
        <xsl:element name="li">
            <xsl:if test="@type">
                <xsl:value-of select="@type"/>: </xsl:if>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="biblScope">
        <xsl:element name="li">
            <xsl:if test="@type">
                <xsl:value-of select="@type"/>: </xsl:if>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="item">
        <xsl:element name="li">
            <xsl:apply-templates/>
        </xsl:element>
        <xsl:text/>
    </xsl:template>
    <xsl:template match="list">
        <xsl:call-template name="do-list-head"/>
        <xsl:element name="ul">
            <xsl:attribute name="type">a</xsl:attribute>
            <xsl:apply-templates select="item"/>
        </xsl:element>
    </xsl:template>
    <xsl:template name="do-list-head">
        <xsl:if test="head">
            <xsl:element name="p">
                <xsl:element name="b">
                    <xsl:apply-templates select="head"/>
                </xsl:element>
            </xsl:element>
        </xsl:if>
    </xsl:template>
    <xsl:template match="head" mode="list-head">
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="xref">
        <xsl:element name="a">
            <xsl:attribute name="href">
                <xsl:choose>
                    <xsl:when test="@url">
                        <xsl:value-of select="@url"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="."/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="lg">
        <xsl:element name="ul">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="l">
        <xsl:element name="li">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="eg | code">
        <xsl:element name="pre">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template name="do-toc">
        <xsl:if test="//div">
            <xsl:element name="a">
                <xsl:attribute name="name">toc</xsl:attribute>
            </xsl:element>
            <xsl:call-template name="vanilladivtoc"/>
        </xsl:if>
    </xsl:template>
    <xsl:template name="do-news">
        <!--<xsl:element name="a">
                <xsl:attribute name="name">news</xsl:attribute>
            </xsl:element>-->
        <xsl:for-each select="//div[@type='news']">
            <xsl:element name="a">
                <xsl:attribute name="href">#<xsl:value-of select="generate-id(.)"/>
                </xsl:attribute>
                <xsl:apply-templates select="head" mode="toc"/>
            </xsl:element>
            <xsl:if test="./div">
                <xsl:for-each select="./div">
                    <xsl:element name="p">
                        <xsl:element name="a">
                            <xsl:attribute name="href">#<xsl:value-of select="generate-id(.)"/>
                            </xsl:attribute>
                            <xsl:apply-templates select="head" mode="toc"/>
                        </xsl:element>
                        <!-- Vi går ikke dypere ned i stukturen i nyhetslisten -->
                    </xsl:element>
                </xsl:for-each>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
    <xsl:template name="do-links">
        <xsl:if test="//div1 | //div">
            <xsl:element name="a">
                <xsl:attribute name="name">links</xsl:attribute>
            </xsl:element>
            <xsl:for-each select="//div[@type='links']">
                <xsl:if test=".//xref">
                    <xsl:for-each select=".//xref">
                        <xsl:element name="p">
                            <xsl:element name="a">
                                <xsl:attribute name="href">
                                    <xsl:apply-templates select="@url"/>
                                </xsl:attribute>
                                <xsl:value-of select="."/>
                            </xsl:element>
                        </xsl:element>
                    </xsl:for-each>
                </xsl:if>
            </xsl:for-each>
        </xsl:if>
    </xsl:template>
    <xsl:template name="vanilladivtoc">
        <xsl:for-each select="//body/div[not(@type='news')]">
            <xsl:element name="p">
                <xsl:element name="a">
                    <xsl:attribute name="href">#<xsl:value-of select="generate-id(.)"/>
                    </xsl:attribute>
                    <xsl:apply-templates select="head" mode="toc"/>
                </xsl:element>
            </xsl:element>
            <xsl:if test="./div">
                <xsl:for-each select="./div">
                    <xsl:element name="p">
                        <xsl:element name="a">
                            <xsl:attribute name="href">#<xsl:value-of select="generate-id(.)"/>
                            </xsl:attribute>
                            <xsl:apply-templates select="head" mode="toc"/>
                        </xsl:element>
                        <!-- Vi går ikke dypere ned i stukturen i innholdfortegnelsen -->
                        <!--xsl:if test="./div">
                                        <xsl:element name="ul">
                                            <xsl:for-each select="./div">
                                                <xsl:element name="li">
                                                  <xsl:element name="a">
                                                  <xsl:attribute name="href">#<xsl:value-of select="generate-id(.)"/>
                                                  </xsl:attribute>
                                                  <xsl:apply-templates select="head" mode="toc"/>
                                                  </xsl:element>
                                                </xsl:element>
                                            </xsl:for-each>
                                        </xsl:element>
                                    </xsl:if -->
                    </xsl:element>
                </xsl:for-each>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
    <xsl:template name="do_mainmenu">
        <table width="150" border="0" cellspacing="0" cellpadding="4" bgcolor="#35190D">
            <tr>
                <td class="liste">
                    <img src="&grafikk_sti;piler.gif" width="16" height="14"/>
                    <a href="&home_sti;">home</a>
                </td>
            </tr>
            <tr>
                <td class="liste">
                    <img src="&grafikk_sti;piler.gif" width="16" height="14"/>
                    <a href="&home_sti;about_mpf.page">project</a>
                </td>
            </tr>
            <tr>
                <td class="liste">
                    <img src="&grafikk_sti;piler.gif" width="16" height="14"/>
                    <a href="&home_sti;fragments.page">fragment list</a>
                </td>
            </tr>
            <tr>
                <td class="liste">
                    <img src="&grafikk_sti;piler.gif" width="16" height="14"/>
                    <a href="&home_sti;people_mpf.page">people</a>
                </td>
            </tr>
            <tr>
                <td class="liste">
                    <img src="&grafikk_sti;piler.gif" width="16" height="14"/>
                    <a href="&home_sti;news_mpf.page">news</a>
                </td>
            </tr>
            <tr>
                <td class="liste">
                    <img src="&grafikk_sti;piler.gif" width="16" height="14"/>
                    <a href="/xiki/edit.cgi?page={$DOCUMENT_NAME}">(edit)</a>
                </td>
            </tr>            
        </table>
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
    <xsl:template name="do-signatur">
        <xsl:element name="i">
            <xsl:choose>
                <xsl:when test="/TEI.2/@lang='en'">
                    Author of this text is <xsl:value-of select="//author"/>.
                    Last changed <xsl:value-of select="//revisionDesc/change/date"/> 
                    by <xsl:value-of select="//revisionDesc/change/respStmt/name"/>
                </xsl:when>
                <xsl:otherwise>
                    Skrevet av <xsl:value-of select="//author"/>.
                    Sist oppdatert <xsl:value-of select="//revisionDesc/change/date"/>
                    av <xsl:value-of select="//revisionDesc/change/respStmt/name"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:element>
    </xsl:template>
    <xsl:template name="do-language-alternativ">
        <xsl:if test="//xref/@type='lang_alternativ'">
            <xsl:element name="a">
                <xsl:attribute name="href">
                    <xsl:value-of select="//xref[@type='lang_alternativ']/@url"/>
                </xsl:attribute>
                <xsl:value-of select="//xref[@type='lang_alternativ']"/>
            </xsl:element>
        </xsl:if>
    </xsl:template>
    <xsl:template name="do_partners"/>
</xsl:stylesheet>
