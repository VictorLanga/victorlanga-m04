<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <head>
            <meta charset="utf-8" />
            <link rel="stylesheet" href="/estilo.css" />
            <title> Recipe1 - El Delicioso by Victor</title>
        </head>

        <body>
            <article class="intro-receta">
                <h1><xsl:value-of select="recipe/title"/></h1>
                <aside class="ingredientes">
                    <xsl:for-each select="recipe/ingredients/ingredient">
                    <li>
                        <xsl:value-of select="name"/>
                        <xsl:value-of select="quantity"/>
                    </li>
                    </xsl:for-each>
                </aside>
            </article>

            <h3>Pasos:</h3>
            <xsl:for-each select="recipe/steps/step">
            <ol>	
                <li><xsl:value-of select="description"/></li>
            </ol>
            </xsl:for-each>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>