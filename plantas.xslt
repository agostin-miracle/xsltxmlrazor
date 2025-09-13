<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 	version="1.0">

  <xsl:output method="html"/>


  <xsl:template match="/">
    <html>
      <head>
        <meta charset="UTF-8"/>
        <style>
          body {
          font-family: 'Arial';
          font-size: 11pt;
          text-align: left;
          margin-top: 0px;
          margin-bottom: 0px;
          width: 60%;
          }

          .titulo {
          font-weight:bold;
          font-size: 120%;
          COLOR: black;
          LINE-HEIGHT: 14px;
          FONT-FAMILY:Arial;
          text-align: left;
          margin-left: auto;
          margin-bottom:0px;
          }

          .alinhartexto {
          font-family: Arial;
          line-height: normal;
          letter-spacing: normal;
          text-align: justify;
          text-indent: 20px;
          font-size: 12pt;
          text-justify: inter-word;
          direction: ltr;
          }

        </style>
      </head>

      <body>


        <xsl:for-each select="/plantas/planta">

          <xsl:sort select="@title" data-type="text" order="ascending"/>
          <p class="titulo" style="color:blue;margim-bottom:12px">
            <xsl:value-of select="@title" disable-output-escaping="yes"/>
          </p>

          <table style="text-align:center;border:solid" width="100%">
            <tr>
              <th>Hábito</th>
              <th>Nome Botânico</th>
            </tr>
            <tr>
              <td>
                <xsl:value-of select="habito" disable-output-escaping="yes"/>
              </td>
              <td>
                <xsl:value-of select="cientifico" disable-output-escaping="yes"/>
                <xsl:text>, </xsl:text>
                <xsl:value-of select="familia" disable-output-escaping="yes"/>
              </td>
            </tr>
          </table>

          <xsl:apply-templates/>

        </xsl:for-each>

      </body>
    </html>
  </xsl:template>


  <!-- Omite -->
  <xsl:template match="habito"></xsl:template>
  <!-- Omite -->
  <xsl:template match="cientifico"></xsl:template>
  <!-- Omite -->
  <xsl:template match="familia"></xsl:template>


  <xsl:template match="descricao">
    <p class="alinhartexto">
      <xsl:value-of select="text()" disable-output-escaping="yes"/>
    </p>
  </xsl:template>

  <xsl:template match="imagem">

    <p style="text-align:center;margin-top:14px; margin-bottom:14px">
      <img  alt="" style="border-radius:22px;">
        <xsl:attribute name="width">
          <xsl:value-of select="@width"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="height">
          <xsl:value-of select="@height"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="src">
          <xsl:text>/img/</xsl:text>
          <xsl:value-of select="text()"></xsl:value-of>
        </xsl:attribute>
      </img>
    </p>
  </xsl:template>

  <xsl:template match="nomes">
    <p class="titulo">Nomes comuns</p>
    <ul>
      <!--<xsl:for-each select="pais[util:inlist(@lang,'Kikongo, Kituba, Bakongo, Kakongo, Eʋegbe, Yorùbá, Cabinda, Côkwe, Ganguela, Kioko, Lunyaneka, Umbundu, Kimbundu, Eʋe, Fon, Aja, Aizo, Maxi, Mahi, Kotafon, Gun, Português (BRA)')!=true]">-->
      <xsl:for-each select="pais">
        <xsl:sort select="@lang"/>
        <li style="text-align:left">
          <xsl:choose>
            <xsl:when test="@lang=''">
              <xsl:text>N/A </xsl:text>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="@lang" disable-output-escaping="yes"/>
              <xsl:text>: </xsl:text>
            </xsl:otherwise>
          </xsl:choose>

          <xsl:for-each select="item">
            <xsl:sort select="text()"/>


            <xsl:if test="text()!=''">
              &#160;<xsl:value-of select="text()" disable-output-escaping="yes"/>

              <xsl:if test="@literal">
                <xsl:if test="@literal!=''">
                  <xsl:text>&#160;(lit. </xsl:text>
                  <i>
                    <xsl:value-of select="@literal" disable-output-escaping="yes"/>
                  </i>
                  <xsl:text>)</xsl:text>
                </xsl:if>
              </xsl:if>



              <xsl:if test="position()!=last()">
                <xsl:text>,</xsl:text>
              </xsl:if>
              <xsl:if test="position()=last()">
                <xsl:text>.</xsl:text>
              </xsl:if>
            </xsl:if>
          </xsl:for-each>
        </li>
      </xsl:for-each>
    </ul>
  </xsl:template>
</xsl:stylesheet>


