<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="ValAOut(15:0)" />
        <signal name="ValBOut(15:0)" />
        <signal name="ResOut(15:0)" />
        <signal name="CLK" />
        <signal name="MSPWrite" />
        <signal name="MSPop" />
        <signal name="RSPWrite" />
        <signal name="RSPop" />
        <signal name="PCWrite" />
        <signal name="PCSource" />
        <signal name="PCAdd" />
        <signal name="ValAWrite" />
        <signal name="ValBWrite" />
        <signal name="MemWrite2" />
        <signal name="SignExtOut(15:0)" />
        <signal name="ZeroExtOut(15:0)" />
        <signal name="MemDst1(1:0)" />
        <signal name="RSPOut(15:0)" />
        <signal name="ShifterOut(15:0)" />
        <signal name="IRWrite" />
        <signal name="MemRead1" />
        <signal name="MemRead2" />
        <signal name="MemWrite1" />
        <signal name="ResSource" />
        <signal name="ResWrite" />
        <signal name="MemDst2(1:0)" />
        <signal name="isZero" />
        <signal name="IROut(15:0)" />
        <signal name="PCOut(15:0)" />
        <signal name="MSPOut(15:0)" />
        <signal name="MSPRegReset" />
        <signal name="RSPRegReset" />
        <signal name="PCRegReset" />
        <signal name="ALUop(2:0)" />
        <signal name="MemData(1:0)" />
        <signal name="MemCLK" />
        <signal name="MemBOut(15:0)" />
        <signal name="MemAOut(15:0)" />
        <signal name="MemBIn(15:0)" />
        <port polarity="Output" name="ValAOut(15:0)" />
        <port polarity="Output" name="ValBOut(15:0)" />
        <port polarity="Output" name="ResOut(15:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="MSPWrite" />
        <port polarity="Input" name="MSPop" />
        <port polarity="Input" name="RSPWrite" />
        <port polarity="Input" name="RSPop" />
        <port polarity="Input" name="PCWrite" />
        <port polarity="Input" name="PCSource" />
        <port polarity="Input" name="PCAdd" />
        <port polarity="Input" name="ValAWrite" />
        <port polarity="Input" name="ValBWrite" />
        <port polarity="Input" name="MemWrite2" />
        <port polarity="Input" name="SignExtOut(15:0)" />
        <port polarity="Input" name="ZeroExtOut(15:0)" />
        <port polarity="Input" name="MemDst1(1:0)" />
        <port polarity="Output" name="RSPOut(15:0)" />
        <port polarity="Input" name="ShifterOut(15:0)" />
        <port polarity="Input" name="IRWrite" />
        <port polarity="Input" name="MemRead1" />
        <port polarity="Input" name="MemRead2" />
        <port polarity="Input" name="MemWrite1" />
        <port polarity="Input" name="ResSource" />
        <port polarity="Input" name="ResWrite" />
        <port polarity="Input" name="MemDst2(1:0)" />
        <port polarity="Output" name="isZero" />
        <port polarity="Output" name="IROut(15:0)" />
        <port polarity="Output" name="PCOut(15:0)" />
        <port polarity="Output" name="MSPOut(15:0)" />
        <port polarity="Input" name="MSPRegReset" />
        <port polarity="Input" name="RSPRegReset" />
        <port polarity="Input" name="PCRegReset" />
        <port polarity="Input" name="ALUop(2:0)" />
        <port polarity="Input" name="MemData(1:0)" />
        <port polarity="Input" name="MemCLK" />
        <port polarity="Output" name="MemBOut(15:0)" />
        <port polarity="Output" name="MemAOut(15:0)" />
        <port polarity="Output" name="MemBIn(15:0)" />
        <blockdef name="stage3Integration">
            <timestamp>2016-2-13T17:18:37</timestamp>
            <rect width="320" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="stage5Integration">
            <timestamp>2016-2-13T22:55:57</timestamp>
            <rect width="64" x="416" y="404" height="24" />
            <line x2="480" y1="416" y2="416" x1="416" />
            <rect width="64" x="416" y="468" height="24" />
            <line x2="480" y1="480" y2="480" x1="416" />
            <line x2="0" y1="352" y2="352" x1="64" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="0" y1="288" y2="288" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="-1312" y2="-1312" x1="64" />
            <line x2="0" y1="-1248" y2="-1248" x1="64" />
            <line x2="0" y1="-1120" y2="-1120" x1="64" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
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
            <rect width="64" x="416" y="-1324" height="24" />
            <line x2="480" y1="-1312" y2="-1312" x1="416" />
            <rect width="64" x="416" y="-1068" height="24" />
            <line x2="480" y1="-1056" y2="-1056" x1="416" />
            <rect width="64" x="416" y="-812" height="24" />
            <line x2="480" y1="-800" y2="-800" x1="416" />
            <rect width="64" x="416" y="-556" height="24" />
            <line x2="480" y1="-544" y2="-544" x1="416" />
            <rect width="64" x="416" y="-300" height="24" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
            <rect width="352" x="64" y="-1344" height="1920" />
        </blockdef>
        <block symbolname="stage3Integration" name="XLXI_1">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="ResSource" name="ResSource" />
            <blockpin signalname="ResWrite" name="ResWrite" />
            <blockpin signalname="ShifterOut(15:0)" name="ShifterOut(15:0)" />
            <blockpin signalname="ValAOut(15:0)" name="ALUInA(15:0)" />
            <blockpin signalname="ValBOut(15:0)" name="ALUInB(15:0)" />
            <blockpin signalname="ALUop(2:0)" name="ALUop(2:0)" />
            <blockpin signalname="isZero" name="isZero" />
            <blockpin signalname="ResOut(15:0)" name="ResOut(15:0)" />
        </block>
        <block symbolname="stage5Integration" name="XLXI_2">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="MemCLK" name="MemCLK" />
            <blockpin signalname="MSPWrite" name="MSPWrite" />
            <blockpin signalname="MSPop" name="MSPop" />
            <blockpin signalname="MSPRegReset" name="MSPRegReset" />
            <blockpin signalname="RSPWrite" name="RSPWrite" />
            <blockpin signalname="RSPop" name="RSPop" />
            <blockpin signalname="RSPRegReset" name="RSPRegReset" />
            <blockpin signalname="PCWrite" name="PCWrite" />
            <blockpin signalname="PCSource" name="PCSource" />
            <blockpin signalname="PCAdd" name="PCAdd" />
            <blockpin signalname="PCRegReset" name="PCRegReset" />
            <blockpin signalname="ValAWrite" name="ValAWrite" />
            <blockpin signalname="ValBWrite" name="ValBWrite" />
            <blockpin signalname="IRWrite" name="IRWrite" />
            <blockpin signalname="MemRead1" name="MemRead1" />
            <blockpin signalname="MemRead2" name="MemRead2" />
            <blockpin signalname="MemWrite1" name="MemWrite1" />
            <blockpin signalname="MemWrite2" name="MemWrite2" />
            <blockpin signalname="SignExtOut(15:0)" name="SignExtOut(15:0)" />
            <blockpin signalname="ZeroExtOut(15:0)" name="ZeroExtOut(15:0)" />
            <blockpin signalname="ResOut(15:0)" name="ResOut(15:0)" />
            <blockpin signalname="MemDst1(1:0)" name="MemDst1(1:0)" />
            <blockpin signalname="MemDst2(1:0)" name="MemDst2(1:0)" />
            <blockpin signalname="MemData(1:0)" name="MemData(1:0)" />
            <blockpin signalname="ValAOut(15:0)" name="ValAOut(15:0)" />
            <blockpin signalname="ValBOut(15:0)" name="ValBOut(15:0)" />
            <blockpin signalname="IROut(15:0)" name="IROut(15:0)" />
            <blockpin signalname="PCOut(15:0)" name="PCOut(15:0)" />
            <blockpin signalname="MSPOut(15:0)" name="MSPOut(15:0)" />
            <blockpin signalname="RSPOut(15:0)" name="RSPOut(15:0)" />
            <blockpin signalname="MemAOut(15:0)" name="MemAOut(15:0)" />
            <blockpin signalname="MemBOut(15:0)" name="MemBOut(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2160" y="1440" name="XLXI_1" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="256" y="112" type="branch" />
            <wire x2="256" y1="112" y2="112" x1="208" />
            <wire x2="384" y1="112" y2="112" x1="256" />
        </branch>
        <branch name="MSPWrite">
            <wire x2="384" y1="160" y2="160" x1="208" />
        </branch>
        <branch name="MSPop">
            <wire x2="384" y1="224" y2="224" x1="208" />
        </branch>
        <branch name="RSPWrite">
            <wire x2="384" y1="288" y2="288" x1="208" />
        </branch>
        <branch name="RSPop">
            <wire x2="384" y1="352" y2="352" x1="208" />
        </branch>
        <branch name="PCWrite">
            <wire x2="384" y1="416" y2="416" x1="208" />
        </branch>
        <branch name="PCSource">
            <wire x2="384" y1="480" y2="480" x1="208" />
        </branch>
        <branch name="PCAdd">
            <wire x2="384" y1="544" y2="544" x1="208" />
        </branch>
        <branch name="ValAWrite">
            <wire x2="384" y1="608" y2="608" x1="208" />
        </branch>
        <branch name="ValBWrite">
            <wire x2="384" y1="672" y2="672" x1="208" />
        </branch>
        <branch name="IROut(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="1072" type="branch" />
            <wire x2="1440" y1="1072" y2="1072" x1="1344" />
            <wire x2="1504" y1="1072" y2="1072" x1="1440" />
        </branch>
        <branch name="PCOut(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="1328" type="branch" />
            <wire x2="1456" y1="1328" y2="1328" x1="1344" />
            <wire x2="1504" y1="1328" y2="1328" x1="1456" />
        </branch>
        <branch name="MSPOut(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="1584" type="branch" />
            <wire x2="1456" y1="1584" y2="1584" x1="1344" />
            <wire x2="1504" y1="1584" y2="1584" x1="1456" />
        </branch>
        <branch name="RSPOut(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="1840" type="branch" />
            <wire x2="1440" y1="1840" y2="1840" x1="1344" />
            <wire x2="1488" y1="1840" y2="1840" x1="1440" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="1024" type="branch" />
            <wire x2="2128" y1="1024" y2="1024" x1="2032" />
            <wire x2="2160" y1="1024" y2="1024" x1="2128" />
        </branch>
        <branch name="ResSource">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="1088" type="branch" />
            <wire x2="2112" y1="1088" y2="1088" x1="2032" />
            <wire x2="2160" y1="1088" y2="1088" x1="2112" />
        </branch>
        <branch name="ResWrite">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="1152" type="branch" />
            <wire x2="2096" y1="1152" y2="1152" x1="2032" />
            <wire x2="2160" y1="1152" y2="1152" x1="2096" />
        </branch>
        <branch name="ShifterOut(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="1216" type="branch" />
            <wire x2="2080" y1="1216" y2="1216" x1="2032" />
            <wire x2="2160" y1="1216" y2="1216" x1="2080" />
        </branch>
        <branch name="ALUop(2:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="1408" type="branch" />
            <wire x2="2112" y1="1408" y2="1408" x1="2032" />
            <wire x2="2160" y1="1408" y2="1408" x1="2112" />
        </branch>
        <branch name="isZero">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="1024" type="branch" />
            <wire x2="2720" y1="1024" y2="1024" x1="2608" />
            <wire x2="2768" y1="1024" y2="1024" x1="2720" />
        </branch>
        <iomarker fontsize="28" x="208" y="112" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="208" y="160" name="MSPWrite" orien="R180" />
        <iomarker fontsize="28" x="208" y="224" name="MSPop" orien="R180" />
        <iomarker fontsize="28" x="208" y="288" name="RSPWrite" orien="R180" />
        <iomarker fontsize="28" x="208" y="352" name="RSPop" orien="R180" />
        <iomarker fontsize="28" x="208" y="416" name="PCWrite" orien="R180" />
        <iomarker fontsize="28" x="208" y="480" name="PCSource" orien="R180" />
        <iomarker fontsize="28" x="208" y="544" name="PCAdd" orien="R180" />
        <iomarker fontsize="28" x="208" y="608" name="ValAWrite" orien="R180" />
        <iomarker fontsize="28" x="208" y="672" name="ValBWrite" orien="R180" />
        <branch name="IRWrite">
            <wire x2="384" y1="752" y2="752" x1="208" />
        </branch>
        <branch name="MemRead1">
            <wire x2="384" y1="816" y2="816" x1="208" />
        </branch>
        <branch name="MemRead2">
            <wire x2="384" y1="880" y2="880" x1="208" />
        </branch>
        <branch name="MemWrite1">
            <wire x2="384" y1="944" y2="944" x1="208" />
        </branch>
        <branch name="MemWrite2">
            <wire x2="384" y1="1024" y2="1024" x1="208" />
        </branch>
        <branch name="ResSource">
            <wire x2="384" y1="1088" y2="1088" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="752" name="IRWrite" orien="R180" />
        <iomarker fontsize="28" x="208" y="816" name="MemRead1" orien="R180" />
        <iomarker fontsize="28" x="208" y="944" name="MemWrite1" orien="R180" />
        <iomarker fontsize="28" x="208" y="880" name="MemRead2" orien="R180" />
        <iomarker fontsize="28" x="208" y="1024" name="MemWrite2" orien="R180" />
        <iomarker fontsize="28" x="208" y="1088" name="ResSource" orien="R180" />
        <branch name="ResWrite">
            <wire x2="384" y1="1152" y2="1152" x1="208" />
        </branch>
        <branch name="SignExtOut(15:0)">
            <wire x2="944" y1="112" y2="112" x1="672" />
        </branch>
        <branch name="ZeroExtOut(15:0)">
            <wire x2="944" y1="176" y2="176" x1="672" />
        </branch>
        <branch name="MemDst1(1:0)">
            <wire x2="384" y1="1232" y2="1232" x1="208" />
        </branch>
        <branch name="MemDst2(1:0)">
            <wire x2="384" y1="1296" y2="1296" x1="208" />
        </branch>
        <branch name="MemData(1:0)">
            <wire x2="384" y1="1360" y2="1360" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="1152" name="ResWrite" orien="R180" />
        <iomarker fontsize="28" x="208" y="1232" name="MemDst1(1:0)" orien="R180" />
        <iomarker fontsize="28" x="208" y="1296" name="MemDst2(1:0)" orien="R180" />
        <iomarker fontsize="28" x="208" y="1360" name="MemData(1:0)" orien="R180" />
        <branch name="ALUop(2:0)">
            <wire x2="384" y1="1424" y2="1424" x1="176" />
        </branch>
        <iomarker fontsize="28" x="176" y="1424" name="ALUop(2:0)" orien="R180" />
        <branch name="ShifterOut(15:0)">
            <wire x2="944" y1="240" y2="240" x1="672" />
        </branch>
        <iomarker fontsize="28" x="672" y="112" name="SignExtOut(15:0)" orien="R180" />
        <iomarker fontsize="28" x="672" y="176" name="ZeroExtOut(15:0)" orien="R180" />
        <iomarker fontsize="28" x="672" y="240" name="ShifterOut(15:0)" orien="R180" />
        <branch name="isZero">
            <wire x2="384" y1="1568" y2="1568" x1="192" />
        </branch>
        <iomarker fontsize="28" x="384" y="1568" name="isZero" orien="R0" />
        <branch name="IROut(15:0)">
            <wire x2="1392" y1="112" y2="112" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1392" y="112" name="IROut(15:0)" orien="R0" />
        <branch name="PCOut(15:0)">
            <wire x2="2160" y1="112" y2="112" x1="1872" />
        </branch>
        <branch name="MSPOut(15:0)">
            <wire x2="2160" y1="192" y2="192" x1="1872" />
        </branch>
        <branch name="RSPOut(15:0)">
            <wire x2="2160" y1="256" y2="256" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="2160" y="112" name="PCOut(15:0)" orien="R0" />
        <iomarker fontsize="28" x="2160" y="192" name="MSPOut(15:0)" orien="R0" />
        <iomarker fontsize="28" x="2160" y="256" name="RSPOut(15:0)" orien="R0" />
        <branch name="ValAOut(15:0)">
            <wire x2="2176" y1="336" y2="336" x1="1872" />
        </branch>
        <branch name="ValBOut(15:0)">
            <wire x2="2176" y1="400" y2="400" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="2176" y="336" name="ValAOut(15:0)" orien="R0" />
        <iomarker fontsize="28" x="2176" y="400" name="ValBOut(15:0)" orien="R0" />
        <branch name="MSPRegReset">
            <wire x2="384" y1="1648" y2="1648" x1="192" />
        </branch>
        <branch name="RSPRegReset">
            <wire x2="384" y1="1712" y2="1712" x1="192" />
        </branch>
        <branch name="PCRegReset">
            <wire x2="384" y1="1776" y2="1776" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="1648" name="MSPRegReset" orien="R180" />
        <iomarker fontsize="28" x="192" y="1712" name="RSPRegReset" orien="R180" />
        <iomarker fontsize="28" x="192" y="1776" name="PCRegReset" orien="R180" />
        <branch name="PCRegReset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="816" y="2032" type="branch" />
            <wire x2="816" y1="2032" y2="2032" x1="704" />
            <wire x2="864" y1="2032" y2="2032" x1="816" />
        </branch>
        <branch name="ValBWrite">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1136" type="branch" />
            <wire x2="784" y1="1136" y2="1136" x1="704" />
            <wire x2="864" y1="1136" y2="1136" x1="784" />
        </branch>
        <branch name="ValAWrite">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1072" type="branch" />
            <wire x2="784" y1="1072" y2="1072" x1="704" />
            <wire x2="864" y1="1072" y2="1072" x1="784" />
        </branch>
        <branch name="PCSource">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="800" y="944" type="branch" />
            <wire x2="800" y1="944" y2="944" x1="704" />
            <wire x2="864" y1="944" y2="944" x1="800" />
        </branch>
        <branch name="PCWrite">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="800" y="880" type="branch" />
            <wire x2="800" y1="880" y2="880" x1="704" />
            <wire x2="864" y1="880" y2="880" x1="800" />
        </branch>
        <branch name="MSPop">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="816" y="2096" type="branch" />
            <wire x2="816" y1="2096" y2="2096" x1="704" />
            <wire x2="864" y1="2096" y2="2096" x1="816" />
        </branch>
        <branch name="ValBOut(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="816" type="branch" />
            <wire x2="1728" y1="816" y2="816" x1="1344" />
            <wire x2="1728" y1="816" y2="1344" x1="1728" />
            <wire x2="2160" y1="1344" y2="1344" x1="1728" />
            <wire x2="1824" y1="816" y2="816" x1="1728" />
            <wire x2="1936" y1="816" y2="816" x1="1824" />
        </branch>
        <branch name="ValAOut(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="560" type="branch" />
            <wire x2="1744" y1="560" y2="560" x1="1344" />
            <wire x2="1744" y1="560" y2="1280" x1="1744" />
            <wire x2="2160" y1="1280" y2="1280" x1="1744" />
            <wire x2="1856" y1="560" y2="560" x1="1744" />
            <wire x2="1936" y1="560" y2="560" x1="1856" />
        </branch>
        <branch name="RSPop">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="816" y="2160" type="branch" />
            <wire x2="816" y1="2160" y2="2160" x1="704" />
            <wire x2="864" y1="2160" y2="2160" x1="816" />
        </branch>
        <branch name="RSPRegReset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1968" type="branch" />
            <wire x2="784" y1="1968" y2="1968" x1="704" />
            <wire x2="864" y1="1968" y2="1968" x1="784" />
        </branch>
        <branch name="MSPRegReset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="816" y="1904" type="branch" />
            <wire x2="816" y1="1904" y2="1904" x1="704" />
            <wire x2="864" y1="1904" y2="1904" x1="816" />
        </branch>
        <branch name="MemData(1:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="752" y="1840" type="branch" />
            <wire x2="752" y1="1840" y2="1840" x1="704" />
            <wire x2="864" y1="1840" y2="1840" x1="752" />
        </branch>
        <branch name="MemDst2(1:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1776" type="branch" />
            <wire x2="784" y1="1776" y2="1776" x1="704" />
            <wire x2="864" y1="1776" y2="1776" x1="784" />
        </branch>
        <branch name="MemDst1(1:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="768" y="1712" type="branch" />
            <wire x2="768" y1="1712" y2="1712" x1="704" />
            <wire x2="864" y1="1712" y2="1712" x1="768" />
        </branch>
        <branch name="ResOut(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2752" y="1408" type="branch" />
            <wire x2="864" y1="1648" y2="1648" x1="432" />
            <wire x2="432" y1="1648" y2="2544" x1="432" />
            <wire x2="2672" y1="2544" y2="2544" x1="432" />
            <wire x2="2672" y1="1408" y2="1408" x1="2608" />
            <wire x2="2752" y1="1408" y2="1408" x1="2672" />
            <wire x2="2800" y1="1408" y2="1408" x1="2752" />
            <wire x2="2672" y1="1408" y2="2544" x1="2672" />
        </branch>
        <branch name="ZeroExtOut(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="752" y="1584" type="branch" />
            <wire x2="752" y1="1584" y2="1584" x1="704" />
            <wire x2="864" y1="1584" y2="1584" x1="752" />
        </branch>
        <branch name="SignExtOut(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1520" type="branch" />
            <wire x2="800" y1="1520" y2="1520" x1="704" />
            <wire x2="864" y1="1520" y2="1520" x1="800" />
        </branch>
        <branch name="MemWrite2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1456" type="branch" />
            <wire x2="784" y1="1456" y2="1456" x1="704" />
            <wire x2="864" y1="1456" y2="1456" x1="784" />
        </branch>
        <branch name="MemWrite1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1392" type="branch" />
            <wire x2="800" y1="1392" y2="1392" x1="704" />
            <wire x2="864" y1="1392" y2="1392" x1="800" />
        </branch>
        <branch name="MemRead2">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1328" type="branch" />
            <wire x2="784" y1="1328" y2="1328" x1="704" />
            <wire x2="864" y1="1328" y2="1328" x1="784" />
        </branch>
        <branch name="MemRead1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1264" type="branch" />
            <wire x2="800" y1="1264" y2="1264" x1="704" />
            <wire x2="864" y1="1264" y2="1264" x1="800" />
        </branch>
        <branch name="IRWrite">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1200" type="branch" />
            <wire x2="784" y1="1200" y2="1200" x1="704" />
            <wire x2="864" y1="1200" y2="1200" x1="784" />
        </branch>
        <branch name="PCAdd">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1008" type="branch" />
            <wire x2="800" y1="1008" y2="1008" x1="704" />
            <wire x2="864" y1="1008" y2="1008" x1="800" />
        </branch>
        <branch name="RSPWrite">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="832" y="752" type="branch" />
            <wire x2="832" y1="752" y2="752" x1="704" />
            <wire x2="864" y1="752" y2="752" x1="832" />
        </branch>
        <branch name="MSPWrite">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="816" y="624" type="branch" />
            <wire x2="816" y1="624" y2="624" x1="704" />
            <wire x2="864" y1="624" y2="624" x1="816" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="800" y="560" type="branch" />
            <wire x2="800" y1="560" y2="560" x1="704" />
            <wire x2="864" y1="560" y2="560" x1="800" />
        </branch>
        <instance x="864" y="1872" name="XLXI_2" orien="R0">
        </instance>
        <branch name="ResOut(15:0)">
            <wire x2="2176" y1="464" y2="464" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="2176" y="464" name="ResOut(15:0)" orien="R0" />
        <branch name="MemCLK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="752" y="2224" type="branch" />
            <wire x2="752" y1="2224" y2="2224" x1="704" />
            <wire x2="864" y1="2224" y2="2224" x1="752" />
        </branch>
        <branch name="MemCLK">
            <wire x2="384" y1="48" y2="48" x1="224" />
        </branch>
        <iomarker fontsize="28" x="224" y="48" name="MemCLK" orien="R180" />
        <branch name="MemAOut(15:0)">
            <wire x2="2896" y1="96" y2="96" x1="2608" />
        </branch>
        <branch name="MemBOut(15:0)">
            <wire x2="2896" y1="176" y2="176" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2896" y="96" name="MemAOut(15:0)" orien="R0" />
        <iomarker fontsize="28" x="2896" y="176" name="MemBOut(15:0)" orien="R0" />
        <branch name="MemBOut(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="2352" type="branch" />
            <wire x2="1440" y1="2352" y2="2352" x1="1344" />
            <wire x2="1552" y1="2352" y2="2352" x1="1440" />
        </branch>
        <branch name="MemAOut(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="2288" type="branch" />
            <wire x2="1440" y1="2288" y2="2288" x1="1344" />
            <wire x2="1552" y1="2288" y2="2288" x1="1440" />
        </branch>
        <branch name="MemBIn(15:0)">
            <wire x2="2896" y1="256" y2="256" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2896" y="256" name="MemBIn(15:0)" orien="R0" />
    </sheet>
</drawing>