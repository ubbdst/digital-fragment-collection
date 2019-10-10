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
    <xsl:output method="html" encoding="us-ascii" indent="no" doctype-public="-//W3C//DTD HTML
        4.0//EN"/>
    <xsl:template name="do_mainbody">
        <td valign="top" colspan="2" class="main">
            <table border="0" cellspacing="10" cellpadding="10">
                <tr>
                    <td>
                        <xsl:apply-templates select="//sourceDesc"/>
                        <xsl:apply-templates select="//msIdentifier"/>
                        <xsl:apply-templates select="//body"/>
                        
                        <xsl:apply-templates select="//msContents"/>
                        <xsl:apply-templates select="//physDesc"/>
                        <xsl:apply-templates select="//history"/>
                        <xsl:apply-templates select="//additional"/>
                        <xsl:call-template name="do_author"/>
                </td>
                </tr>
            </table>
        </td>
        <td width="200" valign="top">
            <xsl:call-template name="do_list_of_facsimiles"/>
                <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
        </td>
    </xsl:template>
    
    <xsl:template match="sourceDesc">
        <div class="head1">
            <xsl:value-of select="//msHeading/title"/>
        </div>
        <xsl:value-of select="//msHeading/note"/>
    </xsl:template>
    <xsl:template match="body">
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="//msHeading/title">
        <!-- Kortslutter foreløpig -->
    </xsl:template>
    <xsl:template match="//physDesc">
        <div class="head2">Physical Description</div>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="//history">
        <div class="head2">History</div>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="msContents">
        <div class="head2">Manuscript Content</div>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="msIdentifier">
        <br/>
        <br/>
        <div class="head4">Manuscript Identification</div>
        <xsl:apply-templates/>
        <br/>
    </xsl:template>
    <xsl:template match="repository">
        <div>
            <span class="head4">Repository: </span>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <xsl:template match="settlement">
        <!-- Går til jord -->
    </xsl:template>
    <xsl:template match="idno">
        <div>
            <span class="head4">Signature: </span>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <xsl:template match="altName">
        <div>
            <span class="head4">Alternative name<xsl:if test="@type"> (<xsl:value-of select="@type"
                    />)</xsl:if>: </span>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <xsl:template match="history">
        <div class="head2">History</div>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="origin">
        <span class="head3">Origin: </span>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="provenance">
        <span class="head3">Provenance: </span>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="acquisition">
        <span class="head3">Acquisition: </span>
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
    
    <xsl:template match="list">
        <xsl:choose>
            <xsl:when test="attribute::type='facsimiles'">
                <!-- Kortslutter -->
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template name="do_author">
        <div class="signatur">
            <xsl:text>Manuscript description revised and extended by </xsl:text>
            <xsl:value-of select="//titleStmt/author"/>.
            <xsl:text>Published </xsl:text>
            <xsl:value-of select="//publicationStmt/date"/>.
        </div>
    </xsl:template>
    <xsl:template name="do_list_of_facsimiles">
        <table width="200" border="0" cellspacing="0" cellpadding="4">
                <xsl:for-each select="//list[attribute::type='facsimiles']/item">
                <tr>
                    <td>
                        <xsl:apply-templates/>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
  
    <xsl:template match="figure">
        <xsl:if test="not(attribute::rend='musical notation')">
                            <xsl:value-of select="."/>
                            <br/>
                            <xsl:element name="a">
                                <xsl:attribute name="href">
                                    <xsl:value-of select="@url"/>
                                </xsl:attribute>
                                <xsl:attribute name="target">
                                    <xsl:value-of select="."/>
                                </xsl:attribute>
                                <xsl:element name="img">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="@url"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="width">190</xsl:attribute>
                                </xsl:element>
                            </xsl:element>
                </xsl:if>
    </xsl:template>
</xsl:stylesheet>
