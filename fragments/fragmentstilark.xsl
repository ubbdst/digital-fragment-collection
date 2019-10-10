<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE xsl:stylesheet [ 
<!ENTITY home_sti "http://gandalf.aksis.uib.no/mpf/" >
<!ENTITY grafikk_sti "&home_sti;grafikk/" >
<!ENTITY aksis_sti "http://www.aksis.uib.no" >
<!ENTITY nbsp " " >

]>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <!--* Output and whitespace details *-->
    <xsl:output method="html" encoding="us-ascii" indent="no" doctype-public="-//W3C//DTD HTML
        4.0//EN"/>
    <xsl:param name="QPI"/>
    <xsl:param name="CONTENT_TYPE"/>
    <xsl:param name="DOCUMENT_FILENAME"/>
    <xsl:param name="DOCUMENT_NAME"/>
    <xsl:param name="DOCUMENT_PATH"/>
    <xsl:param name="DOCUMENT_ROOT"/>
    <xsl:param name="DOCUMENT_URL"/>
    <xsl:param name="HOME_PATH"/>
    <xsl:param name="HTTP_ACCEPT_CHARSET"/>
    <xsl:param name="HTTP_ACCEPT_ENCODING"/>
    <xsl:param name="HTTP_ACCEPT_LANGUAGE"/>
    <xsl:param name="HTTP_COOKIE"/>
    <xsl:param name="HTTP_REFERER"/>
    <xsl:param name="HTTP_USER_AGENT"/>
    <xsl:param name="LANG"/>
    <xsl:param name="NOW"/>
    <xsl:param name="NOW_UTC"/>
    <xsl:param name="PAGEMENU_URL"/>
    <xsl:param name="PATH_INFO"/>
    <xsl:param name="PROJECT_DOCUMENT_NAME"/>
    <xsl:param name="REMOTE_ADDR"/>
    <xsl:param name="REMOTE_USER"/>
    <xsl:param name="REQUEST_METHOD"/>
    <xsl:param name="REQUEST_URI"/>
    <xsl:param name="SERVER_NAME"/>
    <xsl:param name="SERVER_PORT"/>
    <xsl:param name="SERVER_SOFTWARE"/>
    <xsl:param name="STYLESHEET_FILENAME"/>
    <xsl:param name="STYLESHEET_NAME"/>
    <xsl:param name="TODAY"/>
    <xsl:param name="TODAY_UTC"/>
    <xsl:param name="param.id"/>
    <xsl:param name="param.name"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Fragment</title>
                <link rel="stylesheet" type="text/css" href="&home_sti;page.css"/>
            	  <link rel="shortcut icon" href="http://gandalf.uib.no/favicon.ico" type="image/vnd.microsoft.icon" />
            </head>
            <body topmargin="20" leftmargin="20" marginheight="10" marginwidth="0"
                onResize="resizeVindu();">
                <table class="headbar" width="700">
                    <tr>
                        <td rowspan="3" valign="top">
                                <img src="&grafikk_sti;fragments_logo_web.gif" width="200"/>
                        </td>
                        <td valign="top" align="right">
                               <xsl:call-template name="do_mainmenu"/>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" align="right" >
                            <span class="mainheadline">MEDIEVAL PARCHMENT FRAGMENTS </span><br/>
                            <span class="mainheadline">AT BERGEN UNIVERSITY LIBRARY</span></td>
                    </tr>
                    <tr>
                        <td align="right" >
                            <span class="participants">
                                    Participants: 
                                <a href="http://www.ub.uib.no/">Bergen University Library</a> | 
                                <a href="http://www.uib.no/cms/">CMS - Center for Medieval Studies</a> |
                                <a href="http://www.aksis.uib.no/">Aksis</a> | 
                                <a href="http://www.menota.org">Menota</a>
                            </span>
                        </td>
                    </tr>
                </table>
                <table border="0" cellspacing="10" cellpadding="10" width="700">
                    <xsl:call-template name="do_mainbody"/>
                </table>
                <!--<table>
                <tr name="footer2">
                    <td colspan="2">
                        <div align="left" class="barBottom">
                            <img src="&grafikk_sti;footer.jpg" width="700"/>
                        </div>
                    </td>
                </tr>
                </table>-->
            </body>
        </html>
    </xsl:template>
    <xsl:template match="front">
        <tr>
            <td colspan="2" class="mainbar" valign="top" width="100%">
                <div class="front">
                    <xsl:apply-templates/>
                </div>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="back">
        <tr>
            <td colspan="2" class="mainbar" valign="top" width="100%">
                <div class="back">
                    <xsl:apply-templates/>
                </div>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="titleStmt | publicationStmt | revisionDesc | sourceDesc | profileDesc |
        editionStmt | fileDesc">
        <!-- kortslutter -->
    </xsl:template>
    <xsl:template match="div[@type='fragmentlist']">
        <!-- kortslutter -->
    </xsl:template>
    <xsl:template match="msContents">
        <div class="head2">Manuscript Content</div>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="msIdentifier">
        <div class="head2">Manuscript Identification</div>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="author">
        <div>
            <b>Author: </b>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <xsl:template match="repository">
        <div>
            <b>Repository: </b>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <xsl:template match="publicationStmt">
        <div>
            <b>Publication: </b>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <xsl:template match="availability">
        <div>
            <b>Availability: </b>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <xsl:template match="sourceDesc">
        <div>
            <b>Source description: </b>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <xsl:template match="encodingDesc">
        <div>
            <b>Encoding description: </b>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <xsl:template match="settlement">
        <div>
            <b>Settlement: </b>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <xsl:template match="idno">
        <div>
            <b>Signature: </b>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <xsl:template match="altName">
        <div>
            <b>Alternative name: </b>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <xsl:template match="history">
        <div class="head3">History</div>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="origin">
        <div class="head3">Origin</div>
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
        <xsl:element name="div">
        <xsl:apply-templates/>
        </xsl:element>
        <xsl:element name="br"/>
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
            <xsl:apply-templates/>
            <div class="signatur">
                <xsl:call-template name="do-signatur"/>
            </div>
        </td>
    </xsl:template>
    <xsl:template match="head" mode="toc">
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="head">
        <xsl:element name="div">
            <xsl:attribute name="class">head3</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="div/div/div//head">
        <xsl:element name="div">
            <xsl:attribute name="class">head4</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="body/div/head">
        <xsl:element name="div">
            <xsl:attribute name="class">head2</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="listBibl">
        <xsl:call-template name="do-list-head"/>
        <xsl:element name="ul">
            <xsl:attribute name="type">disk</xsl:attribute>
            <xsl:apply-templates select="bibl"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="bibl">
        <xsl:element name="li">
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
            <xsl:attribute name="type">disk</xsl:attribute>
            <xsl:apply-templates select="item"/>
        </xsl:element>
    </xsl:template>
    
     <xsl:template match="table">
        <xsl:call-template name="do-list-head"/>
        <xsl:element name="table">
          
          <xsl:apply-templates/>
        </xsl:element>
     </xsl:template>
    
	<xsl:template match="list[@type='fragmentliste']">
		<xsl:call-template name="do-list-head"/>
		<xsl:element name="table">
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	
    <xsl:template match="row[@roll = 'lable']">
        <xsl:element name="tr">
            <xsl:attribute name="class">headRad</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="row[position() mod 2 = 0]">
         <xsl:element name="tr">
              <xsl:attribute name="class">oddRad</xsl:attribute>
              <xsl:apply-templates/>
         </xsl:element>
    </xsl:template>
    
    <xsl:template match="row[position() mod 2 = 1]">
        <xsl:element name="tr">
            <xsl:attribute name="class">jamnRad</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
 
    
    <xsl:template match="cell">
        <xsl:element name="td">
            <xsl:apply-templates/>
        </xsl:element>
        <xsl:text/>
    </xsl:template>
	
	
	<xsl:template match="list[attribute::type='fragmentliste']/item">
		<xsl:variable name="fragment"><xsl:value-of select="child::xref/attribute::url"/></xsl:variable>
	   
		<xsl:element name="tr">
		    <xsl:element name="td">
				<xsl:value-of select="$fragment"/>
			</xsl:element>
			<xsl:element name="td">
				<xsl:value-of
				    select="document($fragment)//msHeading/title"/>
			</xsl:element>
			<xsl:element name="td">
			    <xsl:value-of select="document($fragment)//idno"/>
			</xsl:element>
			<xsl:element name="td">
			    <xsl:value-of
					select="document($fragment)//note[attribute::type='schlagzeile']"/>
			</xsl:element>
		</xsl:element>
	</xsl:template>
    
    <xsl:template match="foreign">
        <xsl:element name="i">
                <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
	
<!--<xsl:template match="cell/xref">
		<xsl:value-of select="@url"/>
		<xsl:apply-templates select="document(@url)"/>
	</xsl:template>-->
	
    <xsl:template match="cell/label">
        <div class="head3"><xsl:apply-templates/></div>
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
    <xsl:template match="xref | figure">
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
 
    <xsl:template match="figure[attribute::rend='tumbnail']">
            <xsl:element name="img">
                    <xsl:attribute name="src">
                        <xsl:value-of select="@url"/>
                    </xsl:attribute>
                    <xsl:attribute name="width">70</xsl:attribute>
            </xsl:element>
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="figDesc">
        <span class="figDesc">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="lb">
            <xsl:element name="br"></xsl:element>
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
            <!--<xsl:call-template name="vanilladivtoc"/>-->
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
    <!-- 2005.02.22 tmb: Handle the main part of the page, this may change from det various stylesheets, and 
    should be overrided by the stylesheets to handle transcriptions etc. -->
    
    
    <xsl:template name="do_mainmenu">
        <span class="mainmenu">
            <a href="&home_sti;">HOME</a> | 
            <a href="&home_sti;listing.page">LIST</a> |
            <a href="&home_sti;about_fragments.page">PROJECT</a> | 
            <a href="&home_sti;people_fragments.page">PEOPLE</a> | 
            <a href="&home_sti;news_fragments.page">NEWS</a> | 
            <a href="http://gandalf.aksis.uib.no/cgi-bin/mpf/xiki/edit.cgi?page={$PROJECT_DOCUMENT_NAME}"
                >(EDIT)</a></span>
    </xsl:template>
    <xsl:template name="do_fragmentlist">
        <xsl:if test="//div[@type='fragmentlist']">
            <table width="200" border="0" cellspacing="0" cellpadding="4" class="main">
                <tr>
                    <td>
                        <xsl:apply-templates select="//div[@type='fragmentlist']/list"/>
                    </td>
                </tr>
            </table>
        </xsl:if>
    </xsl:template>
    <xsl:template name="do-signatur">
        <!--<xsl:element name="i">
            <xsl:choose>
                <xsl:when test="/TEI.2/@lang='en'"> Author of this text is <xsl:value-of
                        select="//author"/>. Last changed <xsl:value-of
                        select="//revisionDesc/change/date"/> by <xsl:value-of
                        select="//revisionDesc/change/respStmt/name"/>
                </xsl:when>
                <xsl:otherwise> Skrevet av <xsl:value-of select="//author"/>. Sist oppdatert
                        <xsl:value-of select="//revisionDesc/change/date"/> av <xsl:value-of
                        select="//revisionDesc/change/respStmt/name"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:element>-->
        <!--        <p>QPI = <xsl:value-of select="$QPI"/><br/>
            CONTENT_TYPE= <xsl:value-of select="$CONTENT_TYPE"/><br/>
            DOCUMENT_FILENAME= <xsl:value-of select="$DOCUMENT_FILENAME"/><br/>
            DOCUMENT_NAME= <xsl:value-of select="$DOCUMENT_NAME"/><br/>
            DOCUMENT_PATH= <xsl:value-of select="$DOCUMENT_PATH"/><br/>
            DOCUMENT_ROOT= <xsl:value-of select="$DOCUMENT_ROOT"/><br/>
            DOCUMENT_URL= <xsl:value-of select="$DOCUMENT_URL"/><br/>
            HOME_PATH= <xsl:value-of select="$HOME_PATH"/><br/>
            HTTP_ACCEPT_CHARSET= <xsl:value-of select="$HTTP_ACCEPT_CHARSET"/><br/>
            HTTP_ACCEPT_ENCODING= <xsl:value-of select="$HTTP_ACCEPT_ENCODING"/><br/>
            HTTP_ACCEPT_LANGUAGE= <xsl:value-of select="$HTTP_ACCEPT_LANGUAGE"/><br/>
            HTTP_COOKIE= <xsl:value-of select="$HTTP_COOKIE"/><br/>
            HTTP_REFERER= <xsl:value-of select="$HTTP_REFERER"/><br/>
            HTTP_USER_AGENT= <xsl:value-of select="$HTTP_USER_AGENT"/><br/>
            LANG= <xsl:value-of select="$LANG"/><br/>
            NOW= <xsl:value-of select="$NOW"/><br/>
            NOW_UTC= <xsl:value-of select="$NOW_UTC"/><br/>
            PAGEMENU_URL= <xsl:value-of select="$PAGEMENU_URL"/><br/>
            PATH_INFO= <xsl:value-of select="$PATH_INFO"/><br/>
            PROJECT_DOCUMENT_NAME= <xsl:value-of select="$PROJECT_DOCUMENT_NAME"/><br/>
            REMOTE_ADDR= <xsl:value-of select="$REMOTE_ADDR"/><br/>
            REMOTE_USER= <xsl:value-of select="$REMOTE_USER"/><br/>
            REQUEST_METHOD= <xsl:value-of select="$REQUEST_METHOD"/><br/>
            REQUEST_URI= <xsl:value-of select="$REQUEST_URI"/><br/>
            SERVER_NAME= <xsl:value-of select="$SERVER_NAME"/><br/>
            SERVER_PORT= <xsl:value-of select="$SERVER_PORT"/><br/>
            SERVER_SOFTWARE= <xsl:value-of select="$SERVER_SOFTWARE"/><br/>
            STYLESHEET_FILENAME= <xsl:value-of select="$STYLESHEET_FILENAME"/><br/>
            STYLESHEET_NAME= <xsl:value-of select="$STYLESHEET_NAME"/><br/>
            TODAY= <xsl:value-of select="$TODAY"/><br/>
            TODAY_UTC= <xsl:value-of select="$TODAY_UTC"/><br/>
            param.id= <xsl:value-of select="$param.id"/><br/>
            param.name= <xsl:value-of select="$param.name"/><br/>
        </p>-->
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
