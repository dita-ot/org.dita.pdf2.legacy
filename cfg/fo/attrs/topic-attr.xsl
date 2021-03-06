<?xml version="1.0" encoding="UTF-8"?>
<!--
This file is part of the DITA Open Toolkit project.

Copyright 2016 Jarno Elovirta

See the accompanying LICENSE file for applicable license.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0">

  <xsl:attribute-set name="topic.title__content">
    <xsl:attribute name="border-left-width">0pt</xsl:attribute>
    <xsl:attribute name="border-right-width">0pt</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="topic.topic.title__content">
    <xsl:attribute name="border-left-width">0pt</xsl:attribute>
    <xsl:attribute name="border-right-width">0pt</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="desc">
    <xsl:attribute name="border-left-width">0pt</xsl:attribute>
    <xsl:attribute name="border-right-width">0pt</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="section" use-attribute-sets="base-font">
    <xsl:attribute name="line-height">
      <xsl:value-of select="$default-line-height"/>
    </xsl:attribute>
    <xsl:attribute name="space-before">0.6em</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="example" use-attribute-sets="base-font common.border">
    <xsl:attribute name="line-height" select="$default-line-height"/>
    <xsl:attribute name="space-before">0.6em</xsl:attribute>
    <xsl:attribute name="start-indent">36pt + from-parent(start-indent)</xsl:attribute>
    <xsl:attribute name="end-indent">36pt</xsl:attribute>
    <xsl:attribute name="padding">5pt</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="lq" use-attribute-sets="common.border">
    <xsl:attribute name="space-before">10pt</xsl:attribute>
    <xsl:attribute name="padding-left">6pt</xsl:attribute>
    <xsl:attribute name="start-indent">92pt</xsl:attribute>
    <xsl:attribute name="end-indent">92pt</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="lq_simple" use-attribute-sets="common.border">
    <xsl:attribute name="space-before">10pt</xsl:attribute>
    <xsl:attribute name="space-after">10pt</xsl:attribute>
    <xsl:attribute name="padding-left">6pt</xsl:attribute>
    <xsl:attribute name="start-indent">92pt</xsl:attribute>
    <xsl:attribute name="end-indent">92pt</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="lq_link">
    <xsl:attribute name="space-after">10pt</xsl:attribute>
    <xsl:attribute name="end-indent">92pt</xsl:attribute>
    <xsl:attribute name="font-weight">bold</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="lq_title" use-attribute-sets="base-font">
    <xsl:attribute name="space-after">10pt</xsl:attribute>
    <xsl:attribute name="end-indent">92pt</xsl:attribute>
    <xsl:attribute name="font-weight">bold</xsl:attribute>
    <xsl:attribute name="font-style">italic</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="q">
    <xsl:attribute name="border-left-width">0pt</xsl:attribute>
    <xsl:attribute name="border-right-width">0pt</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="figgroup">
    <xsl:attribute name="border-left-width">0pt</xsl:attribute>
    <xsl:attribute name="border-right-width">0pt</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="note__image__entry">
    <xsl:attribute name="padding-right">5pt</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="note__label">
    <xsl:attribute name="border-left-width">0pt</xsl:attribute>
    <xsl:attribute name="border-right-width">0pt</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="__border__right">
    <xsl:attribute name="padding-right">6pt</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="__border__left">
    <xsl:attribute name="padding-left">6pt</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="keyword">
    <xsl:attribute name="border-left-width">0pt</xsl:attribute>
    <xsl:attribute name="border-right-width">0pt</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="term">
    <xsl:attribute name="border-left-width">0pt</xsl:attribute>
    <xsl:attribute name="border-right-width">0pt</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="ph">
    <xsl:attribute name="border-left-width">0pt</xsl:attribute>
    <xsl:attribute name="border-right-width">0pt</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="boolean">
    <xsl:attribute name="border-left-width">0pt</xsl:attribute>
    <xsl:attribute name="border-right-width">0pt</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="state">
    <xsl:attribute name="border-left-width">0pt</xsl:attribute>
    <xsl:attribute name="border-right-width">0pt</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="tm">
    <xsl:attribute name="border-left-width">0pt</xsl:attribute>
    <xsl:attribute name="border-right-width">0pt</xsl:attribute>
  </xsl:attribute-set>
  
</xsl:stylesheet>
