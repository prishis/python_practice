<!-- average-salary.xslt -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Average Salary</h2>
                <xsl:variable name="totalSalary" select="sum(workers/worker/salary)"/>
                <xsl:variable name="numWorkers" select="count(workers/worker)"/>
                <!--we are pulling salary sum and worker count-->
                <p>Average salary: <xsl:value-of select="$totalSalary div $numWorkers"/></p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

