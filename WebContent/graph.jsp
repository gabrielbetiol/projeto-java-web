<%@page contentType="text/html"%>
<%@taglib uri='/WEB-INF/cewolf.tld' prefix='cewolf' %>
<HTML>
<BODY>
<H1>Page View Statistics</H1>
<HR>
<jsp:useBean id="pieData" class="graph.MaisVendidos"/>
<jsp:useBean id="pieToolTip"
    class="graph.CustomPieToolTipGenerator"/>
<% pageContext.setAttribute("pieChartViewToolTips",
    pieToolTip); %>
<cewolf:chart id="pieChart" title="Pie" type="pie">
    <cewolf:gradientpaint>
        <cewolf:point x="0" y="0" color="#FFFFFF" />
        <cewolf:point x="300" y="0" color="#DDDDFF" />
    </cewolf:gradientpaint>
    <cewolf:data>
        <cewolf:producer id="pieData" />
    </cewolf:data>
</cewolf:chart>
<cewolf:img chartid="pieChart" renderer="/cewolf"
    width="300" height="300">
    <cewolf:map tooltipgeneratorid="pieChartViewToolTips"/>
</cewolf:img>
<P>


</BODY>
</HTML>