<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(15:0)" />
        <signal name="XLXN_4(15:0)" />
        <signal name="PCSourceFromValA(15:0)" />
        <signal name="PCAddFromSE(15:0)" />
        <signal name="g,g,g,g,g,g,g,g,g,g,g,g,g,g,g,v" />
        <signal name="PCWrite" />
        <signal name="g" />
        <signal name="CLK" />
        <signal name="g,g,PCAdd" />
        <signal name="PCAdd" />
        <signal name="PCSource" />
        <signal name="g,g,PCSource" />
        <signal name="PC(15:0)" />
        <signal name="v" />
        <signal name="XLXN_10(15:0)" />
        <port polarity="Input" name="PCSourceFromValA(15:0)" />
        <port polarity="Input" name="PCAddFromSE(15:0)" />
        <port polarity="Input" name="PCWrite" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="PCAdd" />
        <port polarity="Input" name="PCSource" />
        <port polarity="Output" name="PC(15:0)" />
        <blockdef name="reg16">
            <timestamp>2016-2-6T20:12:26</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="mux16b8">
            <timestamp>2016-2-6T20:13:6</timestamp>
            <rect width="256" x="64" y="-576" height="576" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-556" height="24" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
        </blockdef>
        <blockdef name="adder16b">
            <timestamp>2016-2-6T20:40:52</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="reg16" name="XLXI_1">
            <blockpin signalname="XLXN_1(15:0)" name="I(15:0)" />
            <blockpin signalname="PCWrite" name="Write" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="PC(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="mux16b8" name="XLXI_2">
            <blockpin signalname="XLXN_10(15:0)" name="A(15:0)" />
            <blockpin signalname="PCSourceFromValA(15:0)" name="B(15:0)" />
            <blockpin name="C(15:0)" />
            <blockpin name="D(15:0)" />
            <blockpin name="E(15:0)" />
            <blockpin name="F(15:0)" />
            <blockpin name="G(15:0)" />
            <blockpin name="H(15:0)" />
            <blockpin signalname="g,g,PCSource" name="S(2:0)" />
            <blockpin signalname="XLXN_1(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="mux16b8" name="XLXI_4">
            <blockpin signalname="g,g,g,g,g,g,g,g,g,g,g,g,g,g,g,v" name="A(15:0)" />
            <blockpin signalname="PCAddFromSE(15:0)" name="B(15:0)" />
            <blockpin name="C(15:0)" />
            <blockpin name="D(15:0)" />
            <blockpin name="E(15:0)" />
            <blockpin name="F(15:0)" />
            <blockpin name="G(15:0)" />
            <blockpin name="H(15:0)" />
            <blockpin signalname="g,g,PCAdd" name="S(2:0)" />
            <blockpin signalname="XLXN_4(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_5">
            <blockpin signalname="g" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_7">
            <blockpin signalname="v" name="P" />
        </block>
        <block symbolname="adder16b" name="XLXI_8">
            <blockpin signalname="g" name="op" />
            <blockpin signalname="XLXN_4(15:0)" name="in_a(15:0)" />
            <blockpin signalname="PC(15:0)" name="in_b(15:0)" />
            <blockpin signalname="XLXN_10(15:0)" name="o(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1088" y="1312" name="XLXI_1" orien="R0">
        </instance>
        <instance x="384" y="1696" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1(15:0)">
            <wire x2="1088" y1="1152" y2="1152" x1="768" />
        </branch>
        <instance x="384" y="1008" name="XLXI_4" orien="R0">
        </instance>
        <branch name="PCAddFromSE(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="224" y="528" type="branch" />
            <wire x2="224" y1="528" y2="528" x1="208" />
            <wire x2="384" y1="528" y2="528" x1="224" />
        </branch>
        <iomarker fontsize="28" x="336" y="1984" name="PCAddFromSE(15:0)" orien="R180" />
        <branch name="PCAddFromSE(15:0)">
            <wire x2="528" y1="1984" y2="1984" x1="336" />
        </branch>
        <branch name="PCSourceFromValA(15:0)">
            <wire x2="528" y1="2064" y2="2064" x1="336" />
        </branch>
        <iomarker fontsize="28" x="336" y="2064" name="PCSourceFromValA(15:0)" orien="R180" />
        <branch name="PCSourceFromValA(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="224" y="1216" type="branch" />
            <wire x2="224" y1="1216" y2="1216" x1="208" />
            <wire x2="384" y1="1216" y2="1216" x1="224" />
        </branch>
        <branch name="g,g,g,g,g,g,g,g,g,g,g,g,g,g,g,v">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="256" y="464" type="branch" />
            <wire x2="256" y1="464" y2="464" x1="208" />
            <wire x2="384" y1="464" y2="464" x1="256" />
        </branch>
        <branch name="PCWrite">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1216" type="branch" />
            <wire x2="1024" y1="1216" y2="1216" x1="992" />
            <wire x2="1088" y1="1216" y2="1216" x1="1024" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1280" type="branch" />
            <wire x2="1024" y1="1280" y2="1280" x1="992" />
            <wire x2="1088" y1="1280" y2="1280" x1="1024" />
        </branch>
        <branch name="CLK">
            <wire x2="528" y1="2208" y2="2208" x1="304" />
        </branch>
        <iomarker fontsize="28" x="304" y="2208" name="CLK" orien="R180" />
        <branch name="g,g,PCAdd">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="256" y="976" type="branch" />
            <wire x2="256" y1="976" y2="976" x1="208" />
            <wire x2="384" y1="976" y2="976" x1="256" />
        </branch>
        <branch name="PCWrite">
            <wire x2="1424" y1="1984" y2="1984" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1216" y="1984" name="PCWrite" orien="R180" />
        <branch name="PCAdd">
            <wire x2="1424" y1="2064" y2="2064" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1216" y="2064" name="PCAdd" orien="R180" />
        <branch name="PCSource">
            <wire x2="1424" y1="2144" y2="2144" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1216" y="2144" name="PCSource" orien="R180" />
        <branch name="g,g,PCSource">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="272" y="1664" type="branch" />
            <wire x2="272" y1="1664" y2="1664" x1="208" />
            <wire x2="384" y1="1664" y2="1664" x1="272" />
        </branch>
        <branch name="PC(15:0)">
            <wire x2="1984" y1="1984" y2="1984" x1="1792" />
        </branch>
        <iomarker fontsize="28" x="1984" y="1984" name="PC(15:0)" orien="R0" />
        <instance x="1728" y="2384" name="XLXI_5" orien="R0" />
        <branch name="g">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="2192" type="branch" />
            <wire x2="1712" y1="2192" y2="2192" x1="1680" />
            <wire x2="1792" y1="2192" y2="2192" x1="1712" />
            <wire x2="1792" y1="2192" y2="2256" x1="1792" />
        </branch>
        <instance x="1904" y="2192" name="XLXI_7" orien="R0" />
        <branch name="v">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="2256" type="branch" />
            <wire x2="1888" y1="2256" y2="2256" x1="1856" />
            <wire x2="1968" y1="2256" y2="2256" x1="1888" />
            <wire x2="1968" y1="2192" y2="2256" x1="1968" />
        </branch>
        <branch name="PC(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="1152" type="branch" />
            <wire x2="1536" y1="1152" y2="1152" x1="1472" />
            <wire x2="1728" y1="1152" y2="1152" x1="1536" />
            <wire x2="1760" y1="1152" y2="1152" x1="1728" />
            <wire x2="1536" y1="912" y2="1152" x1="1536" />
            <wire x2="1616" y1="912" y2="912" x1="1536" />
        </branch>
        <branch name="XLXN_4(15:0)">
            <wire x2="1184" y1="464" y2="464" x1="768" />
            <wire x2="1184" y1="464" y2="848" x1="1184" />
            <wire x2="1616" y1="848" y2="848" x1="1184" />
        </branch>
        <branch name="g">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="784" type="branch" />
            <wire x2="1568" y1="784" y2="784" x1="1520" />
            <wire x2="1616" y1="784" y2="784" x1="1568" />
        </branch>
        <instance x="1616" y="944" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_10(15:0)">
            <wire x2="32" y1="80" y2="1152" x1="32" />
            <wire x2="384" y1="1152" y2="1152" x1="32" />
            <wire x2="2080" y1="80" y2="80" x1="32" />
            <wire x2="2080" y1="80" y2="976" x1="2080" />
            <wire x2="2080" y1="976" y2="976" x1="2000" />
        </branch>
    </sheet>
</drawing>