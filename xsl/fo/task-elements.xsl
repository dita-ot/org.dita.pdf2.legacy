<?xml version="1.0" encoding="UTF-8"?>
<!--
This file is part of the DITA Open Toolkit project.

Copyright 2016 Jarno Elovirta

See the accompanying LICENSE file for applicable license.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  xmlns:dita2xslfo="http://dita-ot.sourceforge.net/ns/200910/dita2xslfo"
  exclude-result-prefixes="dita2xslfo" version="2.0">

  <xsl:template match="*[contains(@class, ' task/steps ')]">
    <xsl:choose>
      <xsl:when test="$GENERATE-TASK-LABELS = 'YES'">
        <fo:block>
          <xsl:apply-templates select="." mode="dita2xslfo:task-heading">
            <xsl:with-param name="use-label">
              <xsl:apply-templates select="." mode="dita2xslfo:retrieve-task-heading">
                <xsl:with-param name="pdf2-string">Task Steps</xsl:with-param>
                <xsl:with-param name="common-string">task_procedure</xsl:with-param>
              </xsl:apply-templates>
            </xsl:with-param>
          </xsl:apply-templates>
          <fo:list-block xsl:use-attribute-sets="steps">
            <xsl:call-template name="commonattributes"/>
            <xsl:apply-templates/>
          </fo:list-block>
        </fo:block>
      </xsl:when>
      <xsl:otherwise>
        <fo:list-block xsl:use-attribute-sets="steps">
          <xsl:call-template name="commonattributes"/>
          <xsl:apply-templates/>
        </fo:list-block>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="*[contains(@class, ' task/steps-unordered ')]">
    <xsl:choose>
      <xsl:when test="$GENERATE-TASK-LABELS = 'YES'">
        <fo:block>
          <xsl:apply-templates select="." mode="dita2xslfo:task-heading">
            <xsl:with-param name="use-label">
              <!--<xsl:call-template name="getVariable">
                <xsl:with-param name="id" select="'#steps-unordered-label'"/>
              </xsl:call-template>-->
              <xsl:apply-templates select="." mode="dita2xslfo:retrieve-task-heading">
                <xsl:with-param name="pdf2-string">#steps-unordered-label</xsl:with-param>
                <xsl:with-param name="common-string">task_procedure_unordered</xsl:with-param>
              </xsl:apply-templates>
            </xsl:with-param>
          </xsl:apply-templates>
          <fo:list-block xsl:use-attribute-sets="steps-unordered">
            <xsl:call-template name="commonattributes"/>
            <xsl:apply-templates/>
          </fo:list-block>
        </fo:block>
      </xsl:when>
      <xsl:otherwise>
        <fo:list-block xsl:use-attribute-sets="steps-unordered">
          <xsl:call-template name="commonattributes"/>
          <xsl:apply-templates/>
        </fo:list-block>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
