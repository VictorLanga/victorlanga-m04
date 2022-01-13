<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <head>
            <meta charset="utf-8" />
            <link rel="stylesheet" href="../css/estilo.css" />
            <title> Recipe1 - El Delicioso by Victor</title>
        </head>

        <body>
            <aside class="flip-card">
                <div class="flip-card-inner">
                    <div class="flip-card-back">
                        <a href="../otros/concurso.html" ><img width="45%" height="80%" src="../imagenes/concurso.jpg"/></a>
                        <p><br/>Click en la imagen para más información</p>
                    </div>
                    <div class="flip-card-front">
                        <p>Nuevo concurso</p>
                        <p id="participa">PARTICIPA AQUÍ!</p>
                    </div>
                </div>
            </aside>

            <header>
                <center><img class="logo" width="375px" height="111px" alt="Logo página" src="../imagenes/Logo-Delicias.png"/></center>
                <nav>
                    <section id="menu"><a class="one" href="../index.html">Inicio</a></section>
                    <section id="menu"><a class="one" href="../otros/sobre_mi.html">Sobre mí</a></section>
                    <section id="menu"><a class="one" href="../listado/listado.html">Recetas</a></section>
                    <section id="menu"><a class="one" href="../contacto/contacto.html">Contacto</a></section>
                    <section id="menu"><a class="one" href="../otros/otras_cosas.html">Otras cosas</a></section>
                </nav>
            </header>

           
            <xsl:for-each select="recipes/recipe">
                <li id="menu"><a href="#{title}"><xsl:value-of select="title"/></a></li>
            </xsl:for-each>
            
            
            <xsl:for-each select="recipes/recipe">
                <hr id="{title}"/>
                <article class="intro-receta">
                    <h1><xsl:value-of select="title"/></h1>
                    <aside class="ingredientes">
                        <xsl:for-each select="ingredients/ingredient">
                        <li>
                            <xsl:value-of select="name"/>
                            <xsl:value-of select="quantity"/>
                        </li>
                        </xsl:for-each>
                    </aside>
                </article>

                <h3>Pasos:</h3>
                <xsl:for-each select="steps/step">
                    <li>
                        <xsl:value-of select="description"/>
                    </li>
                </xsl:for-each>
            </xsl:for-each>



            <footer>
                <pre id="menu">Facebook</pre>
                <pre id="menu">Twitter</pre>
                <pre id="menu">Instagram</pre>
                <pre id="menu">Pinterest</pre>
                <pre id="menu">Email</pre>
                <pre id="menu">RSS</pre>
            </footer>

        </body>
    </html>
</xsl:template>
</xsl:stylesheet>