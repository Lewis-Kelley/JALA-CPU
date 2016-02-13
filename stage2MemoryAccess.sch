<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2(15:0)" />
        <signal name="XLXN_1(15:0)" />
        <signal name="XLXN_35(15:0)" />
        <signal name="MemRead2" />
        <signal name="ValB(15:0)" />
        <signal name="ValA(15:0)" />
        <signal name="IR(15:0)" />
        <signal name="MemDst1FromPC(15:0)" />
        <signal name="MemDst1FromMSP(15:0)" />
        <signal name="MemDst2FromMSP(15:0)" />
        <signal name="MemDst2FromRSP(15:0)" />
        <signal name="MemDataFromPC(15:0)" />
        <signal name="MemDataFromRes(15:0)" />
        <signal name="MemDataFromZEImm(15:0)" />
        <signal name="MemWrite1" />
        <signal name="MemWrite2" />
        <signal name="MemRead1" />
        <signal name="ValBWrite" />
        <signal name="MemData(1:0)" />
        <signal name="IRWrite" />
        <signal name="ValAWrite" />
        <signal name="CLK" />
        <signal name="g,MemDst1(1:0)" />
        <signal name="g,MemDst2(1:0)" />
        <signal name="MemDst1(1:0)" />
        <signal name="MemDst2(1:0)" />
        <signal name="MemDst1Out(15:0)" />
        <signal name="MemDst1Out(14:0)" />
        <signal name="MemDst2Out(15:0)" />
        <signal name="MemDst2Out(14:0)" />
        <signal name="g" />
        <signal name="XLXN_41(15:0)" />
        <signal name="g,MemData(1:0)" />
        <port polarity="Input" name="MemRead2" />
        <port polarity="Output" name="ValB(15:0)" />
        <port polarity="Output" name="ValA(15:0)" />
        <port polarity="Output" name="IR(15:0)" />
        <port polarity="Input" name="MemDst1FromPC(15:0)" />
        <port polarity="Input" name="MemDst1FromMSP(15:0)" />
        <port polarity="Input" name="MemDst2FromMSP(15:0)" />
        <port polarity="Input" name="MemDst2FromRSP(15:0)" />
        <port polarity="Input" name="MemDataFromPC(15:0)" />
        <port polarity="Input" name="MemDataFromRes(15:0)" />
        <port polarity="Input" name="MemDataFromZEImm(15:0)" />
        <port polarity="Input" name="MemWrite1" />
        <port polarity="Input" name="MemWrite2" />
        <port polarity="Input" name="MemRead1" />
        <port polarity="Input" name="ValBWrite" />
        <port polarity="Input" name="MemData(1:0)" />
        <port polarity="Input" name="IRWrite" />
        <port polarity="Input" name="ValAWrite" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="MemDst1(1:0)" />
        <port polarity="Input" name="MemDst2(1:0)" />
        <blockdef name="blockmemory16kout2">
            <timestamp>2016-2-10T20:41:33</timestamp>
            <rect width="512" x="32" y="32" height="1344" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" style="linewidth:W" x1="0" />
            <line x2="32" y1="144" y2="144" x1="0" />
            <line x2="32" y1="208" y2="208" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="32" y1="432" y2="432" style="linewidth:W" x1="0" />
            <line x2="32" y1="464" y2="464" style="linewidth:W" x1="0" />
            <line x2="32" y1="496" y2="496" x1="0" />
            <line x2="32" y1="560" y2="560" style="linewidth:W" x1="0" />
            <line x2="32" y1="624" y2="624" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
            <line x2="544" y1="368" y2="368" style="linewidth:W" x1="576" />
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="blockmemory16kout2" name="XLXI_1">
            <blockpin signalname="MemDst1Out(14:0)" name="addra(14:0)" />
            <blockpin name="dina(15:0)" />
            <blockpin signalname="MemRead1" name="ena" />
            <blockpin signalname="MemWrite1" name="wea(0:0)" />
            <blockpin signalname="CLK" name="clka" />
            <blockpin signalname="MemDst2Out(14:0)" name="addrb(14:0)" />
            <blockpin signalname="XLXN_35(15:0)" name="dinb(15:0)" />
            <blockpin signalname="MemRead2" name="enb" />
            <blockpin signalname="MemWrite2" name="web(0:0)" />
            <blockpin signalname="CLK" name="clkb" />
            <blockpin signalname="XLXN_2(15:0)" name="douta(15:0)" />
            <blockpin signalname="XLXN_1(15:0)" name="doutb(15:0)" />
        </block>
        <block symbolname="mux16b8" name="XLXI_9">
            <blockpin signalname="MemDst1FromPC(15:0)" name="A(15:0)" />
            <blockpin signalname="MemDst1FromMSP(15:0)" name="B(15:0)" />
            <blockpin signalname="ValA(15:0)" name="C(15:0)" />
            <blockpin name="D(15:0)" />
            <blockpin name="E(15:0)" />
            <blockpin name="F(15:0)" />
            <blockpin name="G(15:0)" />
            <blockpin name="H(15:0)" />
            <blockpin signalname="g,MemDst1(1:0)" name="S(2:0)" />
            <blockpin signalname="MemDst1Out(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="mux16b8" name="XLXI_10">
            <blockpin signalname="MemDst2FromMSP(15:0)" name="A(15:0)" />
            <blockpin signalname="MemDst2FromRSP(15:0)" name="B(15:0)" />
            <blockpin signalname="ValA(15:0)" name="C(15:0)" />
            <blockpin name="D(15:0)" />
            <blockpin name="E(15:0)" />
            <blockpin name="F(15:0)" />
            <blockpin name="G(15:0)" />
            <blockpin name="H(15:0)" />
            <blockpin signalname="g,MemDst2(1:0)" name="S(2:0)" />
            <blockpin signalname="MemDst2Out(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="mux16b8" name="XLXI_11">
            <blockpin signalname="MemDataFromPC(15:0)" name="A(15:0)" />
            <blockpin signalname="MemDataFromRes(15:0)" name="B(15:0)" />
            <blockpin signalname="MemDataFromZEImm(15:0)" name="C(15:0)" />
            <blockpin signalname="ValB(15:0)" name="D(15:0)" />
            <blockpin name="E(15:0)" />
            <blockpin name="F(15:0)" />
            <blockpin name="G(15:0)" />
            <blockpin name="H(15:0)" />
            <blockpin signalname="g,MemData(1:0)" name="S(2:0)" />
            <blockpin signalname="XLXN_35(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="reg16" name="XLXI_2">
            <blockpin signalname="XLXN_2(15:0)" name="I(15:0)" />
            <blockpin signalname="ValBWrite" name="Write" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="ValB(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="reg16" name="XLXI_4">
            <blockpin signalname="XLXN_1(15:0)" name="I(15:0)" />
            <blockpin signalname="ValAWrite" name="Write" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="ValA(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="reg16" name="XLXI_3">
            <blockpin signalname="XLXN_2(15:0)" name="I(15:0)" />
            <blockpin signalname="IRWrite" name="Write" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="IR(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_16">
            <blockpin signalname="g" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_17">
            <blockpin signalname="g" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1632" y="512" name="XLXI_1" orien="R0">
        </instance>
        <instance x="864" y="976" name="XLXI_9" orien="R0">
        </instance>
        <instance x="864" y="1616" name="XLXI_10" orien="R0">
        </instance>
        <branch name="MemDst1FromPC(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="784" y="432" type="branch" />
            <wire x2="784" y1="432" y2="432" x1="720" />
            <wire x2="864" y1="432" y2="432" x1="784" />
        </branch>
        <branch name="MemDst1FromMSP(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="784" y="496" type="branch" />
            <wire x2="784" y1="496" y2="496" x1="720" />
            <wire x2="864" y1="496" y2="496" x1="784" />
        </branch>
        <branch name="MemDst2FromMSP(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1072" type="branch" />
            <wire x2="800" y1="1072" y2="1072" x1="720" />
            <wire x2="864" y1="1072" y2="1072" x1="800" />
        </branch>
        <branch name="MemDst2FromRSP(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="768" y="1136" type="branch" />
            <wire x2="768" y1="1136" y2="1136" x1="720" />
            <wire x2="864" y1="1136" y2="1136" x1="768" />
        </branch>
        <instance x="864" y="2256" name="XLXI_11" orien="R0">
        </instance>
        <branch name="MemDataFromPC(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1712" type="branch" />
            <wire x2="784" y1="1712" y2="1712" x1="720" />
            <wire x2="864" y1="1712" y2="1712" x1="784" />
        </branch>
        <branch name="MemDataFromRes(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1776" type="branch" />
            <wire x2="784" y1="1776" y2="1776" x1="720" />
            <wire x2="864" y1="1776" y2="1776" x1="784" />
        </branch>
        <branch name="XLXN_35(15:0)">
            <wire x2="1456" y1="1712" y2="1712" x1="1248" />
            <wire x2="1456" y1="976" y2="1712" x1="1456" />
            <wire x2="1632" y1="976" y2="976" x1="1456" />
        </branch>
        <branch name="MemRead1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="656" type="branch" />
            <wire x2="1504" y1="656" y2="656" x1="1472" />
            <wire x2="1632" y1="656" y2="656" x1="1504" />
        </branch>
        <branch name="MemWrite1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="720" type="branch" />
            <wire x2="1504" y1="720" y2="720" x1="1472" />
            <wire x2="1632" y1="720" y2="720" x1="1504" />
        </branch>
        <branch name="MemRead2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1008" type="branch" />
            <wire x2="1504" y1="1008" y2="1008" x1="1472" />
            <wire x2="1632" y1="1008" y2="1008" x1="1504" />
        </branch>
        <branch name="MemWrite2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1072" type="branch" />
            <wire x2="1520" y1="1072" y2="1072" x1="1472" />
            <wire x2="1632" y1="1072" y2="1072" x1="1520" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="784" type="branch" />
            <wire x2="1504" y1="784" y2="784" x1="1472" />
            <wire x2="1632" y1="784" y2="784" x1="1504" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1136" type="branch" />
            <wire x2="1520" y1="1136" y2="1136" x1="1472" />
            <wire x2="1632" y1="1136" y2="1136" x1="1520" />
        </branch>
        <branch name="XLXN_2(15:0)">
            <wire x2="2368" y1="592" y2="592" x1="2208" />
            <wire x2="2368" y1="224" y2="496" x1="2368" />
            <wire x2="2368" y1="496" y2="592" x1="2368" />
            <wire x2="2528" y1="496" y2="496" x1="2368" />
            <wire x2="2528" y1="224" y2="224" x1="2368" />
        </branch>
        <branch name="XLXN_1(15:0)">
            <wire x2="2528" y1="880" y2="880" x1="2208" />
        </branch>
        <instance x="2528" y="384" name="XLXI_2" orien="R0">
        </instance>
        <instance x="2528" y="1040" name="XLXI_4" orien="R0">
        </instance>
        <instance x="2528" y="656" name="XLXI_3" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="624" type="branch" />
            <wire x2="2480" y1="624" y2="624" x1="2432" />
            <wire x2="2528" y1="624" y2="624" x1="2480" />
        </branch>
        <branch name="IRWrite">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="560" type="branch" />
            <wire x2="2464" y1="560" y2="560" x1="2432" />
            <wire x2="2528" y1="560" y2="560" x1="2464" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="1008" type="branch" />
            <wire x2="2480" y1="1008" y2="1008" x1="2432" />
            <wire x2="2528" y1="1008" y2="1008" x1="2480" />
        </branch>
        <branch name="ValAWrite">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="944" type="branch" />
            <wire x2="2464" y1="944" y2="944" x1="2432" />
            <wire x2="2528" y1="944" y2="944" x1="2464" />
        </branch>
        <branch name="IR(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3024" y="496" type="branch" />
            <wire x2="3024" y1="496" y2="496" x1="2912" />
            <wire x2="3072" y1="496" y2="496" x1="3024" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="352" type="branch" />
            <wire x2="2480" y1="352" y2="352" x1="2432" />
            <wire x2="2528" y1="352" y2="352" x1="2480" />
        </branch>
        <branch name="ValBWrite">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="288" type="branch" />
            <wire x2="2464" y1="288" y2="288" x1="2432" />
            <wire x2="2528" y1="288" y2="288" x1="2464" />
        </branch>
        <branch name="MemDst1FromPC(15:0)">
            <wire x2="400" y1="96" y2="96" x1="160" />
        </branch>
        <branch name="MemDst1FromMSP(15:0)">
            <wire x2="400" y1="160" y2="160" x1="160" />
        </branch>
        <branch name="MemDst2FromMSP(15:0)">
            <wire x2="400" y1="224" y2="224" x1="160" />
        </branch>
        <branch name="MemDst2FromRSP(15:0)">
            <wire x2="400" y1="288" y2="288" x1="160" />
        </branch>
        <branch name="MemDataFromPC(15:0)">
            <wire x2="400" y1="352" y2="352" x1="160" />
        </branch>
        <branch name="MemDataFromRes(15:0)">
            <wire x2="400" y1="416" y2="416" x1="160" />
        </branch>
        <branch name="MemDataFromZEImm(15:0)">
            <wire x2="400" y1="480" y2="480" x1="160" />
        </branch>
        <branch name="IR(15:0)">
            <wire x2="944" y1="96" y2="96" x1="672" />
        </branch>
        <branch name="ValA(15:0)">
            <wire x2="944" y1="160" y2="160" x1="672" />
        </branch>
        <branch name="ValB(15:0)">
            <wire x2="944" y1="224" y2="224" x1="672" />
        </branch>
        <iomarker fontsize="28" x="160" y="96" name="MemDst1FromPC(15:0)" orien="R180" />
        <iomarker fontsize="28" x="160" y="160" name="MemDst1FromMSP(15:0)" orien="R180" />
        <iomarker fontsize="28" x="160" y="224" name="MemDst2FromMSP(15:0)" orien="R180" />
        <iomarker fontsize="28" x="160" y="288" name="MemDst2FromRSP(15:0)" orien="R180" />
        <iomarker fontsize="28" x="160" y="352" name="MemDataFromPC(15:0)" orien="R180" />
        <iomarker fontsize="28" x="160" y="416" name="MemDataFromRes(15:0)" orien="R180" />
        <iomarker fontsize="28" x="160" y="480" name="MemDataFromZEImm(15:0)" orien="R180" />
        <iomarker fontsize="28" x="944" y="96" name="IR(15:0)" orien="R0" />
        <iomarker fontsize="28" x="944" y="160" name="ValA(15:0)" orien="R0" />
        <iomarker fontsize="28" x="944" y="224" name="ValB(15:0)" orien="R0" />
        <branch name="MemWrite1">
            <wire x2="1712" y1="80" y2="80" x1="1520" />
        </branch>
        <branch name="MemWrite2">
            <wire x2="1712" y1="144" y2="144" x1="1520" />
        </branch>
        <branch name="MemRead1">
            <wire x2="1712" y1="224" y2="224" x1="1520" />
        </branch>
        <branch name="MemRead2">
            <wire x2="1712" y1="288" y2="288" x1="1520" />
        </branch>
        <branch name="ValBWrite">
            <wire x2="1952" y1="432" y2="432" x1="1776" />
        </branch>
        <branch name="IRWrite">
            <wire x2="1952" y1="336" y2="336" x1="1776" />
        </branch>
        <branch name="ValAWrite">
            <wire x2="1952" y1="384" y2="384" x1="1776" />
        </branch>
        <branch name="CLK">
            <wire x2="1952" y1="480" y2="480" x1="1776" />
        </branch>
        <iomarker fontsize="28" x="1520" y="80" name="MemWrite1" orien="R180" />
        <iomarker fontsize="28" x="1520" y="144" name="MemWrite2" orien="R180" />
        <iomarker fontsize="28" x="1520" y="224" name="MemRead1" orien="R180" />
        <iomarker fontsize="28" x="1520" y="288" name="MemRead2" orien="R180" />
        <iomarker fontsize="28" x="1776" y="336" name="IRWrite" orien="R180" />
        <iomarker fontsize="28" x="1776" y="384" name="ValAWrite" orien="R180" />
        <iomarker fontsize="28" x="1776" y="432" name="ValBWrite" orien="R180" />
        <iomarker fontsize="28" x="1776" y="480" name="CLK" orien="R180" />
        <branch name="g,MemDst1(1:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="752" y="944" type="branch" />
            <wire x2="752" y1="944" y2="944" x1="720" />
            <wire x2="864" y1="944" y2="944" x1="752" />
        </branch>
        <branch name="g,MemDst2(1:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1584" type="branch" />
            <wire x2="784" y1="1584" y2="1584" x1="736" />
            <wire x2="864" y1="1584" y2="1584" x1="784" />
        </branch>
        <branch name="g,MemData(1:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="784" y="2224" type="branch" />
            <wire x2="784" y1="2224" y2="2224" x1="752" />
            <wire x2="864" y1="2224" y2="2224" x1="784" />
        </branch>
        <branch name="MemDst1(1:0)">
            <wire x2="2192" y1="80" y2="80" x1="2000" />
        </branch>
        <branch name="MemDst2(1:0)">
            <wire x2="2192" y1="144" y2="144" x1="2000" />
        </branch>
        <branch name="MemData(1:0)">
            <wire x2="2192" y1="224" y2="224" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2000" y="80" name="MemDst1(1:0)" orien="R180" />
        <iomarker fontsize="28" x="2000" y="144" name="MemDst2(1:0)" orien="R180" />
        <iomarker fontsize="28" x="2000" y="224" name="MemData(1:0)" orien="R180" />
        <branch name="MemDst1Out(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="432" type="branch" />
            <wire x2="1296" y1="432" y2="432" x1="1248" />
            <wire x2="1408" y1="432" y2="432" x1="1296" />
        </branch>
        <branch name="MemDst1Out(14:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="592" type="branch" />
            <wire x2="1520" y1="592" y2="592" x1="1488" />
            <wire x2="1632" y1="592" y2="592" x1="1520" />
        </branch>
        <branch name="MemDst2Out(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="1072" type="branch" />
            <wire x2="1280" y1="1072" y2="1072" x1="1248" />
            <wire x2="1408" y1="1072" y2="1072" x1="1280" />
        </branch>
        <branch name="MemDst2Out(14:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="944" type="branch" />
            <wire x2="1520" y1="944" y2="944" x1="1472" />
            <wire x2="1632" y1="944" y2="944" x1="1520" />
        </branch>
        <instance x="176" y="1856" name="XLXI_16" orien="R0" />
        <branch name="g">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="128" y="1616" type="branch" />
            <wire x2="128" y1="1616" y2="1616" x1="80" />
            <wire x2="240" y1="1616" y2="1616" x1="128" />
            <wire x2="240" y1="1616" y2="1728" x1="240" />
        </branch>
        <branch name="ValA(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3120" y="880" type="branch" />
            <wire x2="864" y1="560" y2="560" x1="464" />
            <wire x2="464" y1="560" y2="1200" x1="464" />
            <wire x2="864" y1="1200" y2="1200" x1="464" />
            <wire x2="464" y1="1200" y2="2592" x1="464" />
            <wire x2="3072" y1="2592" y2="2592" x1="464" />
            <wire x2="3072" y1="880" y2="880" x1="2912" />
            <wire x2="3120" y1="880" y2="880" x1="3072" />
            <wire x2="3168" y1="880" y2="880" x1="3120" />
            <wire x2="3072" y1="880" y2="2592" x1="3072" />
        </branch>
        <branch name="MemDataFromZEImm(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1840" type="branch" />
            <wire x2="784" y1="1840" y2="1840" x1="720" />
            <wire x2="864" y1="1840" y2="1840" x1="784" />
        </branch>
        <branch name="ValB(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3280" y="224" type="branch" />
            <wire x2="608" y1="1904" y2="2464" x1="608" />
            <wire x2="3216" y1="2464" y2="2464" x1="608" />
            <wire x2="864" y1="1904" y2="1904" x1="608" />
            <wire x2="3216" y1="224" y2="224" x1="2912" />
            <wire x2="3280" y1="224" y2="224" x1="3216" />
            <wire x2="3360" y1="224" y2="224" x1="3280" />
            <wire x2="3216" y1="224" y2="2464" x1="3216" />
        </branch>
        <instance x="2608" y="2176" name="XLXI_17" orien="R0" />
        <branch name="g">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2528" y="1872" type="branch" />
            <wire x2="2528" y1="1872" y2="1872" x1="2400" />
            <wire x2="2672" y1="1872" y2="1872" x1="2528" />
            <wire x2="2672" y1="1872" y2="2048" x1="2672" />
        </branch>
    </sheet>
</drawing>