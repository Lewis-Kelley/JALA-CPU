<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="a" />
        <signal name="ci" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="s" />
        <signal name="co" />
        <signal name="r" />
        <signal name="XLXN_13" />
        <signal name="op(1)" />
        <signal name="op(0)" />
        <signal name="l" />
        <signal name="op(2:0)" />
        <signal name="b" />
        <signal name="XLXN_38" />
        <signal name="op(2)" />
        <signal name="XLXN_40" />
        <port polarity="Input" name="a" />
        <port polarity="Input" name="ci" />
        <port polarity="Output" name="s" />
        <port polarity="Output" name="co" />
        <port polarity="Output" name="r" />
        <port polarity="Input" name="l" />
        <port polarity="Input" name="op(2:0)" />
        <port polarity="Input" name="b" />
        <blockdef name="and2">
            <timestamp>2001-2-2T12:25:36</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2001-2-2T12:25:36</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="add1b">
            <timestamp>2010-9-28T2:8:1</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="m4_1e">
            <timestamp>2001-2-2T12:26:32</timestamp>
            <line x2="96" y1="-416" y2="-416" x1="0" />
            <line x2="96" y1="-352" y2="-352" x1="0" />
            <line x2="96" y1="-288" y2="-288" x1="0" />
            <line x2="96" y1="-224" y2="-224" x1="0" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-320" y2="-320" x1="320" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="176" />
            <line x2="176" y1="-208" y2="-96" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="224" />
            <line x2="224" y1="-216" y2="-32" x1="224" />
            <line x2="96" y1="-224" y2="-192" x1="256" />
            <line x2="256" y1="-416" y2="-224" x1="256" />
            <line x2="256" y1="-448" y2="-416" x1="96" />
            <line x2="96" y1="-192" y2="-448" x1="96" />
            <line x2="96" y1="-160" y2="-160" x1="128" />
            <line x2="128" y1="-200" y2="-160" x1="128" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2001-2-2T12:24:11</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="XLXN_40" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_2">
            <blockpin signalname="XLXN_40" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="add1b" name="XLXI_3">
            <blockpin signalname="ci" name="ci" />
            <blockpin signalname="XLXN_40" name="b" />
            <blockpin signalname="a" name="a" />
            <blockpin signalname="co" name="co" />
            <blockpin signalname="s" name="r" />
        </block>
        <block symbolname="m4_1e" name="XLXI_8">
            <blockpin signalname="XLXN_8" name="D0" />
            <blockpin signalname="XLXN_9" name="D1" />
            <blockpin signalname="s" name="D2" />
            <blockpin signalname="l" name="D3" />
            <blockpin signalname="XLXN_13" name="E" />
            <blockpin signalname="op(0)" name="S0" />
            <blockpin signalname="op(1)" name="S1" />
            <blockpin signalname="r" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_9">
            <blockpin signalname="XLXN_13" name="P" />
        </block>
        <block symbolname="m2_1" name="XLXI_15">
            <blockpin signalname="b" name="D0" />
            <blockpin signalname="XLXN_38" name="D1" />
            <blockpin signalname="op(2)" name="S0" />
            <blockpin signalname="XLXN_40" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_16">
            <blockpin signalname="b" name="I" />
            <blockpin signalname="XLXN_38" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="1760" height="1360">
        <branch name="ci">
            <wire x2="720" y1="640" y2="640" x1="128" />
        </branch>
        <instance x="1312" y="688" name="XLXI_8" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="1312" y1="272" y2="272" x1="1104" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1120" y1="432" y2="432" x1="1104" />
            <wire x2="1120" y1="336" y2="432" x1="1120" />
            <wire x2="1312" y1="336" y2="336" x1="1120" />
        </branch>
        <branch name="s">
            <wire x2="1168" y1="640" y2="640" x1="1104" />
            <wire x2="1168" y1="640" y2="880" x1="1168" />
            <wire x2="1312" y1="400" y2="400" x1="1168" />
            <wire x2="1168" y1="400" y2="640" x1="1168" />
        </branch>
        <branch name="co">
            <wire x2="1120" y1="704" y2="704" x1="1104" />
            <wire x2="1120" y1="704" y2="880" x1="1120" />
        </branch>
        <branch name="r">
            <wire x2="1680" y1="368" y2="368" x1="1632" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1312" y1="656" y2="816" x1="1312" />
            <wire x2="1392" y1="816" y2="816" x1="1312" />
            <wire x2="1392" y1="800" y2="816" x1="1392" />
        </branch>
        <branch name="op(1)">
            <attrtext style="alignment:SOFT-VRIGHT" attrname="Name" x="1264" y="752" type="branch" />
            <wire x2="1312" y1="592" y2="592" x1="1264" />
            <wire x2="1264" y1="592" y2="752" x1="1264" />
        </branch>
        <branch name="op(0)">
            <attrtext style="alignment:SOFT-VRIGHT" attrname="Name" x="1216" y="752" type="branch" />
            <wire x2="1312" y1="528" y2="528" x1="1216" />
            <wire x2="1216" y1="528" y2="752" x1="1216" />
        </branch>
        <instance x="1328" y="800" name="XLXI_9" orien="R0" />
        <branch name="l">
            <wire x2="1120" y1="528" y2="528" x1="112" />
            <wire x2="1312" y1="464" y2="464" x1="1120" />
            <wire x2="1120" y1="464" y2="528" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="112" y="528" name="l" orien="R180" />
        <iomarker fontsize="28" x="128" y="640" name="ci" orien="R180" />
        <branch name="op(2:0)">
            <wire x2="368" y1="80" y2="80" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="80" name="op(2:0)" orien="R180" />
        <iomarker fontsize="28" x="128" y="160" name="a" orien="R180" />
        <instance x="848" y="368" name="XLXI_1" orien="R0" />
        <instance x="848" y="528" name="XLXI_2" orien="R0" />
        <branch name="a">
            <wire x2="784" y1="160" y2="160" x1="128" />
            <wire x2="784" y1="160" y2="240" x1="784" />
            <wire x2="784" y1="240" y2="400" x1="784" />
            <wire x2="848" y1="400" y2="400" x1="784" />
            <wire x2="848" y1="240" y2="240" x1="784" />
            <wire x2="704" y1="400" y2="704" x1="704" />
            <wire x2="720" y1="704" y2="704" x1="704" />
            <wire x2="784" y1="400" y2="400" x1="704" />
        </branch>
        <instance x="720" y="800" name="XLXI_3" orien="R0">
        </instance>
        <instance x="432" y="432" name="XLXI_15" orien="R0" />
        <iomarker fontsize="28" x="1120" y="880" name="co" orien="R90" />
        <iomarker fontsize="28" x="1168" y="880" name="s" orien="R90" />
        <iomarker fontsize="28" x="1680" y="368" name="r" orien="R0" />
        <branch name="b">
            <wire x2="160" y1="272" y2="272" x1="128" />
            <wire x2="432" y1="272" y2="272" x1="160" />
            <wire x2="160" y1="272" y2="336" x1="160" />
            <wire x2="176" y1="336" y2="336" x1="160" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="432" y1="336" y2="336" x1="400" />
        </branch>
        <branch name="op(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="400" y="400" type="branch" />
            <wire x2="432" y1="400" y2="400" x1="400" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="656" y1="464" y2="768" x1="656" />
            <wire x2="720" y1="768" y2="768" x1="656" />
            <wire x2="832" y1="464" y2="464" x1="656" />
            <wire x2="848" y1="464" y2="464" x1="832" />
            <wire x2="832" y1="304" y2="304" x1="752" />
            <wire x2="848" y1="304" y2="304" x1="832" />
            <wire x2="832" y1="304" y2="464" x1="832" />
        </branch>
        <iomarker fontsize="28" x="128" y="272" name="b" orien="R180" />
        <instance x="176" y="368" name="XLXI_16" orien="R0" />
    </sheet>
</drawing>