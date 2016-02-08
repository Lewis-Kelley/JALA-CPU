<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="v" />
        <signal name="RegWrite" />
        <signal name="Op" />
        <signal name="XLXN_17(15:0)" />
        <signal name="CLK" />
        <signal name="g" />
        <signal name="g,g,g,g,g,g,g,g,g,g,g,g,g,g,g,v" />
        <signal name="RegOut(15:0)" />
        <port polarity="Input" name="RegWrite" />
        <port polarity="Input" name="Op" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="RegOut(15:0)" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
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
        <block symbolname="adder16b" name="XLXI_1">
            <blockpin signalname="Op" name="op" />
            <blockpin signalname="RegOut(15:0)" name="in_a(15:0)" />
            <blockpin signalname="g,g,g,g,g,g,g,g,g,g,g,g,g,g,g,v" name="in_b(15:0)" />
            <blockpin signalname="XLXN_17(15:0)" name="o(15:0)" />
        </block>
        <block symbolname="reg16" name="XLXI_2">
            <blockpin signalname="XLXN_17(15:0)" name="I(15:0)" />
            <blockpin signalname="RegWrite" name="Write" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RegOut(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_4">
            <blockpin signalname="v" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_5">
            <blockpin signalname="g" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="RegOut(15:0)">
            <wire x2="480" y1="1936" y2="1936" x1="208" />
        </branch>
        <iomarker fontsize="28" x="480" y="1936" name="RegOut(15:0)" orien="R0" />
        <instance x="1104" y="1344" name="XLXI_1" orien="R0">
        </instance>
        <instance x="224" y="1408" name="XLXI_2" orien="R0">
        </instance>
        <branch name="RegOut(15:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="816" y="1408" type="branch" />
            <wire x2="816" y1="1248" y2="1248" x1="608" />
            <wire x2="1104" y1="1248" y2="1248" x1="816" />
            <wire x2="816" y1="1248" y2="1408" x1="816" />
            <wire x2="816" y1="1408" y2="1456" x1="816" />
        </branch>
        <branch name="g,g,g,g,g,g,g,g,g,g,g,g,g,g,g,v">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="1312" type="branch" />
            <wire x2="1008" y1="1312" y2="1312" x1="960" />
            <wire x2="1104" y1="1312" y2="1312" x1="1008" />
        </branch>
        <instance x="1088" y="1984" name="XLXI_4" orien="R0" />
        <branch name="v">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="2048" type="branch" />
            <wire x2="1152" y1="1984" y2="2048" x1="1152" />
            <wire x2="1296" y1="2048" y2="2048" x1="1152" />
            <wire x2="1360" y1="2048" y2="2048" x1="1296" />
        </branch>
        <branch name="RegWrite">
            <wire x2="496" y1="1600" y2="1600" x1="208" />
        </branch>
        <branch name="Op">
            <wire x2="496" y1="1680" y2="1680" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="1600" name="RegWrite" orien="R180" />
        <iomarker fontsize="28" x="208" y="1680" name="Op" orien="R180" />
        <branch name="XLXN_17(15:0)">
            <wire x2="1568" y1="928" y2="928" x1="160" />
            <wire x2="1568" y1="928" y2="1376" x1="1568" />
            <wire x2="160" y1="928" y2="1248" x1="160" />
            <wire x2="224" y1="1248" y2="1248" x1="160" />
            <wire x2="1568" y1="1376" y2="1376" x1="1488" />
        </branch>
        <branch name="CLK">
            <wire x2="496" y1="1760" y2="1760" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="1760" name="CLK" orien="R180" />
        <branch name="RegWrite">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="128" y="1312" type="branch" />
            <wire x2="128" y1="1312" y2="1312" x1="80" />
            <wire x2="224" y1="1312" y2="1312" x1="128" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="128" y="1376" type="branch" />
            <wire x2="128" y1="1376" y2="1376" x1="80" />
            <wire x2="224" y1="1376" y2="1376" x1="128" />
        </branch>
        <branch name="Op">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1184" type="branch" />
            <wire x2="1024" y1="1184" y2="1184" x1="960" />
            <wire x2="1104" y1="1184" y2="1184" x1="1024" />
        </branch>
        <instance x="1456" y="2048" name="XLXI_5" orien="R0" />
        <branch name="g">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="1856" type="branch" />
            <wire x2="1392" y1="1856" y2="1856" x1="1280" />
            <wire x2="1520" y1="1856" y2="1856" x1="1392" />
            <wire x2="1520" y1="1856" y2="1920" x1="1520" />
        </branch>
    </sheet>
</drawing>