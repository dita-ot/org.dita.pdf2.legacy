<?xml version="1.0" encoding="UTF-8"?>
<!--
This file is part of the DITA Open Toolkit project.

Copyright 2016 Jarno Elovirta

See the accompanying LICENSE file for applicable license.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0">

  <xsl:attribute-set name="section" use-attribute-sets="base-font">
    <xsl:attribute name="line-height"><xsl:value-of select="$default-line-height"/></xsl:attribute>
    <xsl:attribute name="space-before">0.6em</xsl:attribute>
  </xsl:attribute-set>
  

  <xsl:attribute-set name="example" use-attribute-sets="base-font common.border">
    <xsl:attribute name="line-height" select="$default-line-height"/>
    <xsl:attribute name="space-before">0.6em</xsl:attribute>
    <xsl:attribute name="start-indent">36pt + from-parent(start-indent)</xsl:attribute>
    <xsl:attribute name="end-indent">36pt</xsl:attribute>
    <xsl:attribute name="padding">5pt</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="common.link">
    <xsl:attribute name="font-style">italic</xsl:attribute>
  </xsl:attribute-set>

</xsl:stylesheet>
