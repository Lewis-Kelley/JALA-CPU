<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="op(2)" />
        <signal name="op(2:0)" />
        <signal name="A(0)" />
        <signal name="B(0)" />
        <signal name="A(1)" />
        <signal name="B(1)" />
        <signal name="A(2)" />
        <signal name="B(2)" />
        <signal name="A(3)" />
        <signal name="B(3)" />
        <signal name="R(3)" />
        <signal name="R(2)" />
        <signal name="R(1)" />
        <signal name="R(0)" />
        <signal name="G" />
        <signal name="XLXN_6" />
        <signal name="XLXN_8" />
        <signal name="XLXN_10" />
        <signal name="B(4)" />
        <signal name="A(5)" />
        <signal name="B(5)" />
        <signal name="A(6)" />
        <signal name="B(6)" />
        <signal name="A(7)" />
        <signal name="B(7)" />
        <signal name="R(7)" />
        <signal name="R(6)" />
        <signal name="R(5)" />
        <signal name="XLXN_63" />
        <signal name="XLXN_65" />
        <signal name="XLXN_67" />
        <signal name="A(8)" />
        <signal name="B(8)" />
        <signal name="A(9)" />
        <signal name="B(9)" />
        <signal name="A(10)" />
        <signal name="B(10)" />
        <signal name="A(11)" />
        <signal name="B(11)" />
        <signal name="R(11)" />
        <signal name="R(10)" />
        <signal name="R(9)" />
        <signal name="R(8)" />
        <signal name="XLXN_89" />
        <signal name="XLXN_91" />
        <signal name="XLXN_93" />
        <signal name="A(12)" />
        <signal name="B(12)" />
        <signal name="A(13)" />
        <signal name="B(13)" />
        <signal name="A(14)" />
        <signal name="B(14)" />
        <signal name="A(15)" />
        <signal name="B(15)" />
        <signal name="R(15)" />
        <signal name="R(14)" />
        <signal name="R(13)" />
        <signal name="R(12)" />
        <signal name="R(15:0)" />
        <signal name="A(15:0)" />
        <signal name="B(15:0)" />
        <signal name="A(4)" />
        <signal name="XLXN_174" />
        <signal name="XLXN_175" />
        <signal name="XLXN_176" />
        <signal name="XLXN_177" />
        <signal name="R(4)" />
        <signal name="XLXN_181" />
        <signal name="ovfl" />
        <signal name="zero" />
        <port polarity="Input" name="op(2:0)" />
        <port polarity="Input" name="B(3)" />
        <port polarity="Output" name="R(15:0)" />
        <port polarity="Input" name="A(15:0)" />
        <port polarity="Input" name="B(15:0)" />
        <port polarity="Output" name="ovfl" />
        <port polarity="Output" name="zero" />
        <blockdef name="alu1b">
            <timestamp>2016-1-26T0:12:12</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="nor16">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-448" y2="-448" x1="0" />
            <line x2="48" y1="-592" y2="-1024" x1="48" />
            <arc ex="112" ey="-592" sx="192" sy="-544" r="88" cx="116" cy="-504" />
            <line x2="48" y1="-496" y2="-496" x1="112" />
            <arc ex="192" ey="-544" sx="112" sy="-496" r="88" cx="116" cy="-584" />
            <line x2="48" y1="-592" y2="-592" x1="112" />
            <arc ex="48" ey="-592" sx="48" sy="-496" r="56" cx="16" cy="-544" />
            <line x2="48" y1="-64" y2="-496" x1="48" />
            <line x2="48" y1="-640" y2="-640" x1="0" />
            <line x2="64" y1="-576" y2="-576" x1="0" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="48" y1="-384" y2="-384" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-1024" y2="-1024" x1="0" />
            <line x2="48" y1="-960" y2="-960" x1="0" />
            <line x2="48" y1="-896" y2="-896" x1="0" />
            <line x2="48" y1="-832" y2="-832" x1="0" />
            <line x2="48" y1="-768" y2="-768" x1="0" />
            <line x2="48" y1="-704" y2="-704" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="216" y1="-544" y2="-544" x1="256" />
            <circle r="12" cx="204" cy="-544" />
        </blockdef>
        <block symbolname="alu1b" name="XLXI_1">
            <blockpin signalname="op(2)" name="a" />
            <blockpin signalname="op(2:0)" name="ci" />
            <blockpin signalname="A(0)" name="l" />
            <blockpin signalname="B(0)" name="op(2:0)" />
            <blockpin signalname="XLXN_177" name="b" />
            <blockpin signalname="R(0)" name="s" />
            <blockpin signalname="XLXN_1" name="co" />
            <blockpin name="r" />
        </block>
        <block symbolname="alu1b" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="a" />
            <blockpin signalname="op(2:0)" name="ci" />
            <blockpin signalname="A(1)" name="l" />
            <blockpin signalname="B(1)" name="op(2:0)" />
            <blockpin signalname="G" name="b" />
            <blockpin signalname="R(1)" name="s" />
            <blockpin signalname="XLXN_2" name="co" />
            <blockpin name="r" />
        </block>
        <block symbolname="alu1b" name="XLXI_3">
            <blockpin signalname="XLXN_2" name="a" />
            <blockpin signalname="op(2:0)" name="ci" />
            <blockpin signalname="A(2)" name="l" />
            <blockpin signalname="B(2)" name="op(2:0)" />
            <blockpin signalname="G" name="b" />
            <blockpin signalname="R(2)" name="s" />
            <blockpin signalname="XLXN_3" name="co" />
            <blockpin name="r" />
        </block>
        <block symbolname="alu1b" name="XLXI_4">
            <blockpin signalname="XLXN_3" name="a" />
            <blockpin signalname="op(2:0)" name="ci" />
            <blockpin signalname="A(3)" name="l" />
            <blockpin signalname="B(3)" name="op(2:0)" />
            <blockpin signalname="G" name="b" />
            <blockpin signalname="R(3)" name="s" />
            <blockpin signalname="XLXN_175" name="co" />
            <blockpin name="r" />
        </block>
        <block symbolname="alu1b" name="XLXI_10">
            <blockpin signalname="XLXN_175" name="a" />
            <blockpin signalname="op(2:0)" name="ci" />
            <blockpin signalname="A(4)" name="l" />
            <blockpin signalname="B(4)" name="op(2:0)" />
            <blockpin signalname="G" name="b" />
            <blockpin signalname="R(4)" name="s" />
            <blockpin signalname="XLXN_6" name="co" />
            <blockpin name="r" />
        </block>
        <block symbolname="alu1b" name="XLXI_11">
            <blockpin signalname="XLXN_6" name="a" />
            <blockpin signalname="op(2:0)" name="ci" />
            <blockpin signalname="A(5)" name="l" />
            <blockpin signalname="B(5)" name="op(2:0)" />
            <blockpin signalname="G" name="b" />
            <blockpin signalname="R(5)" name="s" />
            <blockpin signalname="XLXN_8" name="co" />
            <blockpin name="r" />
        </block>
        <block symbolname="alu1b" name="XLXI_12">
            <blockpin signalname="XLXN_8" name="a" />
            <blockpin signalname="op(2:0)" name="ci" />
            <blockpin signalname="A(6)" name="l" />
            <blockpin signalname="B(6)" name="op(2:0)" />
            <blockpin signalname="G" name="b" />
            <blockpin signalname="R(6)" name="s" />
            <blockpin signalname="XLXN_10" name="co" />
            <blockpin name="r" />
        </block>
        <block symbolname="alu1b" name="XLXI_13">
            <blockpin signalname="XLXN_10" name="a" />
            <blockpin signalname="op(2:0)" name="ci" />
            <blockpin signalname="A(7)" name="l" />
            <blockpin signalname="B(7)" name="op(2:0)" />
            <blockpin signalname="G" name="b" />
            <blockpin signalname="R(7)" name="s" />
            <blockpin signalname="XLXN_176" name="co" />
            <blockpin name="r" />
        </block>
        <block symbolname="alu1b" name="XLXI_18">
            <blockpin signalname="XLXN_176" name="a" />
            <blockpin signalname="op(2:0)" name="ci" />
            <blockpin signalname="A(8)" name="l" />
            <blockpin signalname="B(8)" name="op(2:0)" />
            <blockpin signalname="G" name="b" />
            <blockpin signalname="R(8)" name="s" />
            <blockpin signalname="XLXN_63" name="co" />
            <blockpin name="r" />
        </block>
        <block symbolname="alu1b" name="XLXI_19">
            <blockpin signalname="XLXN_63" name="a" />
            <blockpin signalname="op(2:0)" name="ci" />
            <blockpin signalname="A(9)" name="l" />
            <blockpin signalname="B(9)" name="op(2:0)" />
            <blockpin signalname="G" name="b" />
            <blockpin signalname="R(9)" name="s" />
            <blockpin signalname="XLXN_65" name="co" />
            <blockpin name="r" />
        </block>
        <block symbolname="alu1b" name="XLXI_20">
            <blockpin signalname="XLXN_65" name="a" />
            <blockpin signalname="op(2:0)" name="ci" />
            <blockpin signalname="A(10)" name="l" />
            <blockpin signalname="B(10)" name="op(2:0)" />
            <blockpin signalname="G" name="b" />
            <blockpin signalname="R(10)" name="s" />
            <blockpin signalname="XLXN_67" name="co" />
            <blockpin name="r" />
        </block>
        <block symbolname="alu1b" name="XLXI_21">
            <blockpin signalname="XLXN_67" name="a" />
            <blockpin signalname="op(2:0)" name="ci" />
            <blockpin signalname="A(11)" name="l" />
            <blockpin signalname="B(11)" name="op(2:0)" />
            <blockpin signalname="G" name="b" />
            <blockpin signalname="R(11)" name="s" />
            <blockpin signalname="XLXN_174" name="co" />
            <blockpin name="r" />
        </block>
        <block symbolname="alu1b" name="XLXI_22">
            <blockpin signalname="XLXN_174" name="a" />
            <blockpin signalname="op(2:0)" name="ci" />
            <blockpin signalname="A(12)" name="l" />
            <blockpin signalname="B(12)" name="op(2:0)" />
            <blockpin signalname="G" name="b" />
            <blockpin signalname="R(12)" name="s" />
            <blockpin signalname="XLXN_89" name="co" />
            <blockpin name="r" />
        </block>
        <block symbolname="alu1b" name="XLXI_23">
            <blockpin signalname="XLXN_89" name="a" />
            <blockpin signalname="op(2:0)" name="ci" />
            <blockpin signalname="A(13)" name="l" />
            <blockpin signalname="B(13)" name="op(2:0)" />
            <blockpin signalname="G" name="b" />
            <blockpin signalname="R(13)" name="s" />
            <blockpin signalname="XLXN_91" name="co" />
            <blockpin name="r" />
        </block>
        <block symbolname="alu1b" name="XLXI_24">
            <blockpin signalname="XLXN_91" name="a" />
            <blockpin signalname="op(2:0)" name="ci" />
            <blockpin signalname="A(14)" name="l" />
            <blockpin signalname="B(14)" name="op(2:0)" />
            <blockpin signalname="G" name="b" />
            <blockpin signalname="R(14)" name="s" />
            <blockpin signalname="XLXN_93" name="co" />
            <blockpin name="r" />
        </block>
        <block symbolname="alu1b" name="XLXI_25">
            <blockpin signalname="XLXN_93" name="a" />
            <blockpin signalname="op(2:0)" name="ci" />
            <blockpin signalname="A(15)" name="l" />
            <blockpin signalname="B(15)" name="op(2:0)" />
            <blockpin signalname="G" name="b" />
            <blockpin signalname="R(15)" name="s" />
            <blockpin signalname="XLXN_181" name="co" />
            <blockpin name="r" />
        </block>
        <block symbolname="gnd" name="XLXI_9">
            <blockpin signalname="G" name="G" />
        </block>
        <block symbolname="xor2" name="XLXI_35">
            <blockpin signalname="XLXN_181" name="I0" />
            <blockpin signalname="XLXN_93" name="I1" />
            <blockpin signalname="ovfl" name="O" />
        </block>
        <block symbolname="nor16" name="XLXI_36">
            <blockpin signalname="R(15)" name="I0" />
            <blockpin signalname="R(14)" name="I1" />
            <blockpin signalname="R(5)" name="I10" />
            <blockpin signalname="R(4)" name="I11" />
            <blockpin signalname="R(3)" name="I12" />
            <blockpin signalname="R(2)" name="I13" />
            <blockpin signalname="R(1)" name="I14" />
            <blockpin signalname="R(0)" name="I15" />
            <blockpin signalname="R(13)" name="I2" />
            <blockpin signalname="R(12)" name="I3" />
            <blockpin signalname="R(11)" name="I4" />
            <blockpin signalname="R(10)" name="I5" />
            <blockpin signalname="R(9)" name="I6" />
            <blockpin signalname="R(8)" name="I7" />
            <blockpin signalname="R(7)" name="I8" />
            <blockpin signalname="R(6)" name="I9" />
            <blockpin signalname="zero" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="1296" y="560" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1296" y="1040" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1296" y="1520" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1296" y="2000" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1760" y1="640" y2="640" x1="1232" />
            <wire x2="1232" y1="640" y2="752" x1="1232" />
            <wire x2="1296" y1="752" y2="752" x1="1232" />
            <wire x2="1760" y1="400" y2="400" x1="1680" />
            <wire x2="1760" y1="400" y2="640" x1="1760" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1760" y1="1120" y2="1120" x1="1232" />
            <wire x2="1232" y1="1120" y2="1232" x1="1232" />
            <wire x2="1296" y1="1232" y2="1232" x1="1232" />
            <wire x2="1760" y1="880" y2="880" x1="1680" />
            <wire x2="1760" y1="880" y2="1120" x1="1760" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1760" y1="1600" y2="1600" x1="1232" />
            <wire x2="1232" y1="1600" y2="1712" x1="1232" />
            <wire x2="1296" y1="1712" y2="1712" x1="1232" />
            <wire x2="1760" y1="1360" y2="1360" x1="1680" />
            <wire x2="1760" y1="1360" y2="1600" x1="1760" />
        </branch>
        <branch name="op(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="272" type="branch" />
            <wire x2="1296" y1="272" y2="272" x1="1040" />
        </branch>
        <branch name="op(2:0)">
            <wire x2="1296" y1="336" y2="336" x1="1040" />
        </branch>
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="400" type="branch" />
            <wire x2="1296" y1="400" y2="400" x1="1040" />
        </branch>
        <branch name="B(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="464" type="branch" />
            <wire x2="1296" y1="464" y2="464" x1="1040" />
        </branch>
        <branch name="op(2:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="816" type="branch" />
            <wire x2="1296" y1="816" y2="816" x1="1040" />
        </branch>
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="880" type="branch" />
            <wire x2="1296" y1="880" y2="880" x1="1040" />
        </branch>
        <branch name="B(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="944" type="branch" />
            <wire x2="1296" y1="944" y2="944" x1="1040" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="1008" type="branch" />
            <wire x2="1296" y1="1008" y2="1008" x1="1040" />
        </branch>
        <branch name="op(2:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="1296" type="branch" />
            <wire x2="1296" y1="1296" y2="1296" x1="1040" />
        </branch>
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="1360" type="branch" />
            <wire x2="1296" y1="1360" y2="1360" x1="1040" />
        </branch>
        <branch name="B(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="1424" type="branch" />
            <wire x2="1296" y1="1424" y2="1424" x1="1040" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="1488" type="branch" />
            <wire x2="1296" y1="1488" y2="1488" x1="1040" />
        </branch>
        <branch name="op(2:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="1776" type="branch" />
            <wire x2="1296" y1="1776" y2="1776" x1="1040" />
        </branch>
        <branch name="A(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="1840" type="branch" />
            <wire x2="1296" y1="1840" y2="1840" x1="1040" />
        </branch>
        <branch name="B(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="1904" type="branch" />
            <wire x2="1296" y1="1904" y2="1904" x1="1040" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="1968" type="branch" />
            <wire x2="1296" y1="1968" y2="1968" x1="1040" />
        </branch>
        <branch name="R(3)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1920" y="1712" type="branch" />
            <wire x2="1920" y1="1712" y2="1712" x1="1680" />
        </branch>
        <branch name="R(2)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1920" y="1232" type="branch" />
            <wire x2="1920" y1="1232" y2="1232" x1="1680" />
        </branch>
        <branch name="R(1)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1920" y="752" type="branch" />
            <wire x2="1920" y1="752" y2="752" x1="1680" />
        </branch>
        <branch name="R(0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1920" y="272" type="branch" />
            <wire x2="1920" y1="272" y2="272" x1="1680" />
        </branch>
        <iomarker fontsize="28" x="1040" y="336" name="op(2:0)" orien="R180" />
        <instance x="1296" y="2480" name="XLXI_10" orien="R0">
        </instance>
        <instance x="1296" y="2960" name="XLXI_11" orien="R0">
        </instance>
        <instance x="1296" y="3440" name="XLXI_12" orien="R0">
        </instance>
        <instance x="1296" y="3920" name="XLXI_13" orien="R0">
        </instance>
        <branch name="XLXN_6">
            <wire x2="1760" y1="2560" y2="2560" x1="1232" />
            <wire x2="1232" y1="2560" y2="2672" x1="1232" />
            <wire x2="1296" y1="2672" y2="2672" x1="1232" />
            <wire x2="1760" y1="2320" y2="2320" x1="1680" />
            <wire x2="1760" y1="2320" y2="2560" x1="1760" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1760" y1="3040" y2="3040" x1="1232" />
            <wire x2="1232" y1="3040" y2="3152" x1="1232" />
            <wire x2="1296" y1="3152" y2="3152" x1="1232" />
            <wire x2="1760" y1="2800" y2="2800" x1="1680" />
            <wire x2="1760" y1="2800" y2="3040" x1="1760" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1760" y1="3520" y2="3520" x1="1232" />
            <wire x2="1232" y1="3520" y2="3632" x1="1232" />
            <wire x2="1296" y1="3632" y2="3632" x1="1232" />
            <wire x2="1760" y1="3280" y2="3280" x1="1680" />
            <wire x2="1760" y1="3280" y2="3520" x1="1760" />
        </branch>
        <branch name="op(2:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="2256" type="branch" />
            <wire x2="1296" y1="2256" y2="2256" x1="1040" />
        </branch>
        <branch name="A(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="2320" type="branch" />
            <wire x2="1296" y1="2320" y2="2320" x1="1040" />
        </branch>
        <branch name="B(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="2384" type="branch" />
            <wire x2="1296" y1="2384" y2="2384" x1="1040" />
        </branch>
        <branch name="op(2:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="2736" type="branch" />
            <wire x2="1296" y1="2736" y2="2736" x1="1040" />
        </branch>
        <branch name="A(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="2800" type="branch" />
            <wire x2="1296" y1="2800" y2="2800" x1="1040" />
        </branch>
        <branch name="B(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="2864" type="branch" />
            <wire x2="1296" y1="2864" y2="2864" x1="1040" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="2928" type="branch" />
            <wire x2="1296" y1="2928" y2="2928" x1="1040" />
        </branch>
        <branch name="op(2:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="3216" type="branch" />
            <wire x2="1296" y1="3216" y2="3216" x1="1040" />
        </branch>
        <branch name="A(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="3280" type="branch" />
            <wire x2="1296" y1="3280" y2="3280" x1="1040" />
        </branch>
        <branch name="B(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="3344" type="branch" />
            <wire x2="1296" y1="3344" y2="3344" x1="1040" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="3408" type="branch" />
            <wire x2="1296" y1="3408" y2="3408" x1="1040" />
        </branch>
        <branch name="op(2:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="3696" type="branch" />
            <wire x2="1296" y1="3696" y2="3696" x1="1040" />
        </branch>
        <branch name="A(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="3760" type="branch" />
            <wire x2="1296" y1="3760" y2="3760" x1="1040" />
        </branch>
        <branch name="B(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="3824" type="branch" />
            <wire x2="1296" y1="3824" y2="3824" x1="1040" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="3888" type="branch" />
            <wire x2="1296" y1="3888" y2="3888" x1="1040" />
        </branch>
        <branch name="R(7)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1920" y="3632" type="branch" />
            <wire x2="1920" y1="3632" y2="3632" x1="1680" />
        </branch>
        <branch name="R(6)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1920" y="3152" type="branch" />
            <wire x2="1920" y1="3152" y2="3152" x1="1680" />
        </branch>
        <branch name="R(5)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1920" y="2672" type="branch" />
            <wire x2="1920" y1="2672" y2="2672" x1="1680" />
        </branch>
        <branch name="R(4)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1920" y="2192" type="branch" />
            <wire x2="1920" y1="2192" y2="2192" x1="1680" />
        </branch>
        <instance x="3056" y="560" name="XLXI_18" orien="R0">
        </instance>
        <instance x="3056" y="1040" name="XLXI_19" orien="R0">
        </instance>
        <instance x="3056" y="1520" name="XLXI_20" orien="R0">
        </instance>
        <instance x="3056" y="2000" name="XLXI_21" orien="R0">
        </instance>
        <branch name="XLXN_63">
            <wire x2="3520" y1="640" y2="640" x1="2992" />
            <wire x2="2992" y1="640" y2="752" x1="2992" />
            <wire x2="3056" y1="752" y2="752" x1="2992" />
            <wire x2="3520" y1="400" y2="400" x1="3440" />
            <wire x2="3520" y1="400" y2="640" x1="3520" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="3520" y1="1120" y2="1120" x1="2992" />
            <wire x2="2992" y1="1120" y2="1232" x1="2992" />
            <wire x2="3056" y1="1232" y2="1232" x1="2992" />
            <wire x2="3520" y1="880" y2="880" x1="3440" />
            <wire x2="3520" y1="880" y2="1120" x1="3520" />
        </branch>
        <branch name="XLXN_67">
            <wire x2="3520" y1="1600" y2="1600" x1="2992" />
            <wire x2="2992" y1="1600" y2="1712" x1="2992" />
            <wire x2="3056" y1="1712" y2="1712" x1="2992" />
            <wire x2="3520" y1="1360" y2="1360" x1="3440" />
            <wire x2="3520" y1="1360" y2="1600" x1="3520" />
        </branch>
        <branch name="op(2:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="336" type="branch" />
            <wire x2="3056" y1="336" y2="336" x1="2800" />
        </branch>
        <branch name="A(8)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="400" type="branch" />
            <wire x2="3056" y1="400" y2="400" x1="2800" />
        </branch>
        <branch name="B(8)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="464" type="branch" />
            <wire x2="3056" y1="464" y2="464" x1="2800" />
        </branch>
        <branch name="op(2:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="816" type="branch" />
            <wire x2="3056" y1="816" y2="816" x1="2800" />
        </branch>
        <branch name="A(9)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="880" type="branch" />
            <wire x2="3056" y1="880" y2="880" x1="2800" />
        </branch>
        <branch name="B(9)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="944" type="branch" />
            <wire x2="3056" y1="944" y2="944" x1="2800" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="1008" type="branch" />
            <wire x2="3056" y1="1008" y2="1008" x1="2800" />
        </branch>
        <branch name="op(2:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="1296" type="branch" />
            <wire x2="3056" y1="1296" y2="1296" x1="2800" />
        </branch>
        <branch name="A(10)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="1360" type="branch" />
            <wire x2="3056" y1="1360" y2="1360" x1="2800" />
        </branch>
        <branch name="B(10)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="1424" type="branch" />
            <wire x2="3056" y1="1424" y2="1424" x1="2800" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="1488" type="branch" />
            <wire x2="3056" y1="1488" y2="1488" x1="2800" />
        </branch>
        <branch name="op(2:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="1776" type="branch" />
            <wire x2="3056" y1="1776" y2="1776" x1="2800" />
        </branch>
        <branch name="A(11)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="1840" type="branch" />
            <wire x2="3056" y1="1840" y2="1840" x1="2800" />
        </branch>
        <branch name="B(11)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="1904" type="branch" />
            <wire x2="3056" y1="1904" y2="1904" x1="2800" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="1968" type="branch" />
            <wire x2="3056" y1="1968" y2="1968" x1="2800" />
        </branch>
        <branch name="R(11)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3680" y="1712" type="branch" />
            <wire x2="3680" y1="1712" y2="1712" x1="3440" />
        </branch>
        <branch name="R(10)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3680" y="1232" type="branch" />
            <wire x2="3680" y1="1232" y2="1232" x1="3440" />
        </branch>
        <branch name="R(9)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3680" y="752" type="branch" />
            <wire x2="3680" y1="752" y2="752" x1="3440" />
        </branch>
        <branch name="R(8)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3680" y="272" type="branch" />
            <wire x2="3680" y1="272" y2="272" x1="3440" />
        </branch>
        <instance x="3056" y="2480" name="XLXI_22" orien="R0">
        </instance>
        <instance x="3056" y="2960" name="XLXI_23" orien="R0">
        </instance>
        <instance x="3056" y="3440" name="XLXI_24" orien="R0">
        </instance>
        <instance x="3056" y="3920" name="XLXI_25" orien="R0">
        </instance>
        <branch name="XLXN_89">
            <wire x2="3520" y1="2560" y2="2560" x1="2992" />
            <wire x2="2992" y1="2560" y2="2672" x1="2992" />
            <wire x2="3056" y1="2672" y2="2672" x1="2992" />
            <wire x2="3520" y1="2320" y2="2320" x1="3440" />
            <wire x2="3520" y1="2320" y2="2560" x1="3520" />
        </branch>
        <branch name="XLXN_91">
            <wire x2="3520" y1="3040" y2="3040" x1="2992" />
            <wire x2="2992" y1="3040" y2="3152" x1="2992" />
            <wire x2="3056" y1="3152" y2="3152" x1="2992" />
            <wire x2="3520" y1="2800" y2="2800" x1="3440" />
            <wire x2="3520" y1="2800" y2="3040" x1="3520" />
        </branch>
        <branch name="XLXN_93">
            <wire x2="3520" y1="3520" y2="3520" x1="2992" />
            <wire x2="3600" y1="3520" y2="3520" x1="3520" />
            <wire x2="3600" y1="3520" y2="3696" x1="3600" />
            <wire x2="3664" y1="3696" y2="3696" x1="3600" />
            <wire x2="2992" y1="3520" y2="3632" x1="2992" />
            <wire x2="3056" y1="3632" y2="3632" x1="2992" />
            <wire x2="3520" y1="3280" y2="3280" x1="3440" />
            <wire x2="3520" y1="3280" y2="3520" x1="3520" />
        </branch>
        <branch name="op(2:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="2256" type="branch" />
            <wire x2="3056" y1="2256" y2="2256" x1="2800" />
        </branch>
        <branch name="A(12)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="2320" type="branch" />
            <wire x2="3056" y1="2320" y2="2320" x1="2800" />
        </branch>
        <branch name="B(12)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="2384" type="branch" />
            <wire x2="3056" y1="2384" y2="2384" x1="2800" />
        </branch>
        <branch name="op(2:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="2736" type="branch" />
            <wire x2="3056" y1="2736" y2="2736" x1="2800" />
        </branch>
        <branch name="A(13)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="2800" type="branch" />
            <wire x2="3056" y1="2800" y2="2800" x1="2800" />
        </branch>
        <branch name="B(13)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="2864" type="branch" />
            <wire x2="3056" y1="2864" y2="2864" x1="2800" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="2928" type="branch" />
            <wire x2="3056" y1="2928" y2="2928" x1="2800" />
        </branch>
        <branch name="op(2:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="3216" type="branch" />
            <wire x2="3056" y1="3216" y2="3216" x1="2800" />
        </branch>
        <branch name="A(14)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="3280" type="branch" />
            <wire x2="3056" y1="3280" y2="3280" x1="2800" />
        </branch>
        <branch name="B(14)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="3344" type="branch" />
            <wire x2="3056" y1="3344" y2="3344" x1="2800" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="3408" type="branch" />
            <wire x2="3056" y1="3408" y2="3408" x1="2800" />
        </branch>
        <branch name="op(2:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="3696" type="branch" />
            <wire x2="3056" y1="3696" y2="3696" x1="2800" />
        </branch>
        <branch name="A(15)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="3760" type="branch" />
            <wire x2="3056" y1="3760" y2="3760" x1="2800" />
        </branch>
        <branch name="B(15)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="3824" type="branch" />
            <wire x2="3056" y1="3824" y2="3824" x1="2800" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="3888" type="branch" />
            <wire x2="3056" y1="3888" y2="3888" x1="2800" />
        </branch>
        <branch name="R(15)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3680" y="3632" type="branch" />
            <wire x2="3680" y1="3632" y2="3632" x1="3440" />
        </branch>
        <branch name="R(14)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3680" y="3152" type="branch" />
            <wire x2="3680" y1="3152" y2="3152" x1="3440" />
        </branch>
        <branch name="R(13)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3680" y="2672" type="branch" />
            <wire x2="3680" y1="2672" y2="2672" x1="3440" />
        </branch>
        <branch name="R(12)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3680" y="2192" type="branch" />
            <wire x2="3680" y1="2192" y2="2192" x1="3440" />
        </branch>
        <branch name="R(15:0)">
            <wire x2="4400" y1="272" y2="272" x1="4240" />
        </branch>
        <iomarker fontsize="28" x="4400" y="272" name="R(15:0)" orien="R0" />
        <branch name="A(15:0)">
            <wire x2="560" y1="400" y2="400" x1="400" />
        </branch>
        <iomarker fontsize="28" x="400" y="400" name="A(15:0)" orien="R180" />
        <branch name="B(15:0)">
            <wire x2="560" y1="464" y2="464" x1="400" />
        </branch>
        <iomarker fontsize="28" x="400" y="464" name="B(15:0)" orien="R180" />
        <instance x="336" y="784" name="XLXI_9" orien="R0" />
        <branch name="G">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="480" y="640" type="branch" />
            <wire x2="400" y1="640" y2="656" x1="400" />
            <wire x2="480" y1="640" y2="640" x1="400" />
        </branch>
        <branch name="XLXN_174">
            <wire x2="3520" y1="2080" y2="2080" x1="2992" />
            <wire x2="2992" y1="2080" y2="2192" x1="2992" />
            <wire x2="3056" y1="2192" y2="2192" x1="2992" />
            <wire x2="3520" y1="1840" y2="1840" x1="3440" />
            <wire x2="3520" y1="1840" y2="2080" x1="3520" />
        </branch>
        <branch name="XLXN_175">
            <wire x2="1760" y1="2080" y2="2080" x1="1232" />
            <wire x2="1232" y1="2080" y2="2192" x1="1232" />
            <wire x2="1296" y1="2192" y2="2192" x1="1232" />
            <wire x2="1760" y1="1840" y2="1840" x1="1680" />
            <wire x2="1760" y1="1840" y2="2080" x1="1760" />
        </branch>
        <branch name="XLXN_176">
            <wire x2="2368" y1="3760" y2="3760" x1="1680" />
            <wire x2="2368" y1="272" y2="3760" x1="2368" />
            <wire x2="3056" y1="272" y2="272" x1="2368" />
        </branch>
        <branch name="XLXN_177">
            <wire x2="800" y1="528" y2="4000" x1="800" />
            <wire x2="3504" y1="4000" y2="4000" x1="800" />
            <wire x2="1296" y1="528" y2="528" x1="800" />
            <wire x2="3504" y1="3696" y2="3696" x1="3440" />
            <wire x2="3504" y1="3696" y2="4000" x1="3504" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="2448" type="branch" />
            <wire x2="1296" y1="2448" y2="2448" x1="1040" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="2448" type="branch" />
            <wire x2="3056" y1="2448" y2="2448" x1="2800" />
        </branch>
        <branch name="G">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2800" y="528" type="branch" />
            <wire x2="3056" y1="528" y2="528" x1="2800" />
        </branch>
        <branch name="XLXN_181">
            <wire x2="3664" y1="3760" y2="3760" x1="3440" />
        </branch>
        <instance x="3664" y="3824" name="XLXI_35" orien="R0" />
        <branch name="ovfl">
            <wire x2="4000" y1="3728" y2="3728" x1="3920" />
        </branch>
        <iomarker fontsize="28" x="4000" y="3728" name="ovfl" orien="R0" />
        <instance x="4064" y="1424" name="XLXI_36" orien="R0" />
        <branch name="R(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="400" type="branch" />
            <wire x2="4064" y1="400" y2="400" x1="4000" />
        </branch>
        <branch name="R(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="464" type="branch" />
            <wire x2="4064" y1="464" y2="464" x1="4000" />
        </branch>
        <branch name="R(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="528" type="branch" />
            <wire x2="4064" y1="528" y2="528" x1="4000" />
        </branch>
        <branch name="R(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="592" type="branch" />
            <wire x2="4064" y1="592" y2="592" x1="4000" />
        </branch>
        <branch name="R(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="656" type="branch" />
            <wire x2="4064" y1="656" y2="656" x1="4000" />
        </branch>
        <branch name="R(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="720" type="branch" />
            <wire x2="4064" y1="720" y2="720" x1="4000" />
        </branch>
        <branch name="R(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="784" type="branch" />
            <wire x2="4064" y1="784" y2="784" x1="4000" />
        </branch>
        <branch name="R(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="848" type="branch" />
            <wire x2="4064" y1="848" y2="848" x1="4000" />
        </branch>
        <branch name="R(8)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="912" type="branch" />
            <wire x2="4064" y1="912" y2="912" x1="4000" />
        </branch>
        <branch name="R(9)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="976" type="branch" />
            <wire x2="4064" y1="976" y2="976" x1="4000" />
        </branch>
        <branch name="R(10)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="1040" type="branch" />
            <wire x2="4064" y1="1040" y2="1040" x1="4000" />
        </branch>
        <branch name="R(11)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="1104" type="branch" />
            <wire x2="4064" y1="1104" y2="1104" x1="4000" />
        </branch>
        <branch name="R(12)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="1168" type="branch" />
            <wire x2="4064" y1="1168" y2="1168" x1="4000" />
        </branch>
        <branch name="R(13)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="1232" type="branch" />
            <wire x2="4064" y1="1232" y2="1232" x1="4000" />
        </branch>
        <branch name="R(14)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="1296" type="branch" />
            <wire x2="4064" y1="1296" y2="1296" x1="4000" />
        </branch>
        <branch name="R(15)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="1360" type="branch" />
            <wire x2="4064" y1="1360" y2="1360" x1="4000" />
        </branch>
        <branch name="zero">
            <wire x2="4400" y1="880" y2="880" x1="4320" />
        </branch>
        <iomarker fontsize="28" x="4400" y="880" name="zero" orien="R0" />
    </sheet>
</drawing>