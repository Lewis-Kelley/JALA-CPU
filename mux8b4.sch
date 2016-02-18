<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="IA(7:0)" />
        <signal name="IB(7:0)" />
        <signal name="IC(7:0)" />
        <signal name="ID(7:0)" />
        <signal name="Sel(1:0)" />
        <signal name="V" />
        <signal name="O(7:0)" />
        <signal name="IA(0)" />
        <signal name="IB(0)" />
        <signal name="IC(0)" />
        <signal name="ID(0)" />
        <signal name="Sel(0)" />
        <signal name="Sel(1)" />
        <signal name="IA(1)" />
        <signal name="IB(1)" />
        <signal name="IC(1)" />
        <signal name="ID(1)" />
        <signal name="IA(2)" />
        <signal name="IB(2)" />
        <signal name="IC(2)" />
        <signal name="ID(2)" />
        <signal name="O(2)" />
        <signal name="IA(3)" />
        <signal name="IB(3)" />
        <signal name="IC(3)" />
        <signal name="ID(3)" />
        <signal name="O(3)" />
        <signal name="O(1)" />
        <signal name="O(0)" />
        <signal name="IA(4)" />
        <signal name="IA(5)" />
        <signal name="IA(6)" />
        <signal name="IA(7)" />
        <signal name="IB(4)" />
        <signal name="IB(5)" />
        <signal name="IB(6)" />
        <signal name="IB(7)" />
        <signal name="IC(4)" />
        <signal name="IC(5)" />
        <signal name="IC(6)" />
        <signal name="IC(7)" />
        <signal name="ID(4)" />
        <signal name="ID(5)" />
        <signal name="ID(6)" />
        <signal name="ID(7)" />
        <signal name="O(4)" />
        <signal name="O(5)" />
        <signal name="O(6)" />
        <signal name="O(7)" />
        <port polarity="Input" name="IA(7:0)" />
        <port polarity="Input" name="IB(7:0)" />
        <port polarity="Input" name="IC(7:0)" />
        <port polarity="Input" name="ID(7:0)" />
        <port polarity="Input" name="Sel(1:0)" />
        <port polarity="Output" name="O(7:0)" />
        <blockdef name="m4_1e">
            <timestamp>2000-1-1T10:10:10</timestamp>
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
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="vcc" name="XLXI_13">
            <blockpin signalname="V" name="P" />
        </block>
        <block symbolname="m4_1e" name="XLXI_1">
            <blockpin signalname="IA(0)" name="D0" />
            <blockpin signalname="IB(0)" name="D1" />
            <blockpin signalname="IC(0)" name="D2" />
            <blockpin signalname="ID(0)" name="D3" />
            <blockpin signalname="V" name="E" />
            <blockpin signalname="Sel(0)" name="S0" />
            <blockpin signalname="Sel(1)" name="S1" />
            <blockpin signalname="O(0)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_2">
            <blockpin signalname="IA(1)" name="D0" />
            <blockpin signalname="IB(1)" name="D1" />
            <blockpin signalname="IC(1)" name="D2" />
            <blockpin signalname="ID(1)" name="D3" />
            <blockpin signalname="V" name="E" />
            <blockpin signalname="Sel(0)" name="S0" />
            <blockpin signalname="Sel(1)" name="S1" />
            <blockpin signalname="O(1)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_3">
            <blockpin signalname="IA(2)" name="D0" />
            <blockpin signalname="IB(2)" name="D1" />
            <blockpin signalname="IC(2)" name="D2" />
            <blockpin signalname="ID(2)" name="D3" />
            <blockpin signalname="V" name="E" />
            <blockpin signalname="Sel(0)" name="S0" />
            <blockpin signalname="Sel(1)" name="S1" />
            <blockpin signalname="O(2)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_4">
            <blockpin signalname="IA(3)" name="D0" />
            <blockpin signalname="IB(3)" name="D1" />
            <blockpin signalname="IC(3)" name="D2" />
            <blockpin signalname="ID(3)" name="D3" />
            <blockpin signalname="V" name="E" />
            <blockpin signalname="Sel(0)" name="S0" />
            <blockpin signalname="Sel(1)" name="S1" />
            <blockpin signalname="O(3)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_38">
            <blockpin signalname="IA(4)" name="D0" />
            <blockpin signalname="IB(4)" name="D1" />
            <blockpin signalname="IC(4)" name="D2" />
            <blockpin signalname="ID(4)" name="D3" />
            <blockpin signalname="V" name="E" />
            <blockpin signalname="Sel(0)" name="S0" />
            <blockpin signalname="Sel(1)" name="S1" />
            <blockpin signalname="O(4)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_39">
            <blockpin signalname="IA(5)" name="D0" />
            <blockpin signalname="IB(5)" name="D1" />
            <blockpin signalname="IC(5)" name="D2" />
            <blockpin signalname="ID(5)" name="D3" />
            <blockpin signalname="V" name="E" />
            <blockpin signalname="Sel(0)" name="S0" />
            <blockpin signalname="Sel(1)" name="S1" />
            <blockpin signalname="O(5)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_40">
            <blockpin signalname="IA(6)" name="D0" />
            <blockpin signalname="IB(6)" name="D1" />
            <blockpin signalname="IC(6)" name="D2" />
            <blockpin signalname="ID(6)" name="D3" />
            <blockpin signalname="V" name="E" />
            <blockpin signalname="Sel(0)" name="S0" />
            <blockpin signalname="Sel(1)" name="S1" />
            <blockpin signalname="O(6)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_41">
            <blockpin signalname="IA(7)" name="D0" />
            <blockpin signalname="IB(7)" name="D1" />
            <blockpin signalname="IC(7)" name="D2" />
            <blockpin signalname="ID(7)" name="D3" />
            <blockpin signalname="V" name="E" />
            <blockpin signalname="Sel(0)" name="S0" />
            <blockpin signalname="Sel(1)" name="S1" />
            <blockpin signalname="O(7)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="IA(7:0)">
            <wire x2="480" y1="240" y2="240" x1="320" />
        </branch>
        <branch name="IB(7:0)">
            <wire x2="480" y1="400" y2="400" x1="320" />
        </branch>
        <branch name="IC(7:0)">
            <wire x2="480" y1="560" y2="560" x1="320" />
        </branch>
        <branch name="ID(7:0)">
            <wire x2="480" y1="720" y2="720" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="240" name="IA(7:0)" orien="R180" />
        <iomarker fontsize="28" x="320" y="400" name="IB(7:0)" orien="R180" />
        <iomarker fontsize="28" x="320" y="560" name="IC(7:0)" orien="R180" />
        <iomarker fontsize="28" x="320" y="720" name="ID(7:0)" orien="R180" />
        <branch name="Sel(1:0)">
            <wire x2="480" y1="880" y2="880" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="880" name="Sel(1:0)" orien="R180" />
        <instance x="176" y="1104" name="XLXI_13" orien="R0" />
        <branch name="V">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="320" y="1120" type="branch" />
            <wire x2="240" y1="1104" y2="1120" x1="240" />
            <wire x2="320" y1="1120" y2="1120" x1="240" />
        </branch>
        <branch name="O(7:0)">
            <wire x2="3232" y1="320" y2="320" x1="3072" />
        </branch>
        <iomarker fontsize="28" x="3232" y="320" name="O(7:0)" orien="R0" />
        <instance x="1104" y="656" name="XLXI_1" orien="R0" />
        <instance x="1104" y="1216" name="XLXI_2" orien="R0" />
        <instance x="1104" y="1856" name="XLXI_3" orien="R0" />
        <instance x="1104" y="2496" name="XLXI_4" orien="R0" />
        <branch name="IA(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="240" type="branch" />
            <wire x2="1104" y1="240" y2="240" x1="1024" />
        </branch>
        <branch name="IB(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="304" type="branch" />
            <wire x2="1104" y1="304" y2="304" x1="1024" />
        </branch>
        <branch name="IC(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="368" type="branch" />
            <wire x2="1104" y1="368" y2="368" x1="1024" />
        </branch>
        <branch name="ID(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="432" type="branch" />
            <wire x2="1104" y1="432" y2="432" x1="1024" />
        </branch>
        <branch name="Sel(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="496" type="branch" />
            <wire x2="1104" y1="496" y2="496" x1="1024" />
        </branch>
        <branch name="Sel(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="560" type="branch" />
            <wire x2="1104" y1="560" y2="560" x1="1024" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="624" type="branch" />
            <wire x2="1104" y1="624" y2="624" x1="1024" />
        </branch>
        <branch name="IA(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="800" type="branch" />
            <wire x2="1104" y1="800" y2="800" x1="1024" />
        </branch>
        <branch name="IB(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="864" type="branch" />
            <wire x2="1104" y1="864" y2="864" x1="1024" />
        </branch>
        <branch name="IC(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="928" type="branch" />
            <wire x2="1104" y1="928" y2="928" x1="1024" />
        </branch>
        <branch name="ID(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="992" type="branch" />
            <wire x2="1104" y1="992" y2="992" x1="1024" />
        </branch>
        <branch name="Sel(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="1056" type="branch" />
            <wire x2="1104" y1="1056" y2="1056" x1="1024" />
        </branch>
        <branch name="Sel(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="1120" type="branch" />
            <wire x2="1104" y1="1120" y2="1120" x1="1024" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="1184" type="branch" />
            <wire x2="1104" y1="1184" y2="1184" x1="1024" />
        </branch>
        <branch name="IA(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="1440" type="branch" />
            <wire x2="1104" y1="1440" y2="1440" x1="1024" />
        </branch>
        <branch name="IB(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="1504" type="branch" />
            <wire x2="1104" y1="1504" y2="1504" x1="1024" />
        </branch>
        <branch name="IC(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="1568" type="branch" />
            <wire x2="1104" y1="1568" y2="1568" x1="1024" />
        </branch>
        <branch name="ID(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="1632" type="branch" />
            <wire x2="1104" y1="1632" y2="1632" x1="1024" />
        </branch>
        <branch name="Sel(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="1696" type="branch" />
            <wire x2="1104" y1="1696" y2="1696" x1="1024" />
        </branch>
        <branch name="Sel(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="1760" type="branch" />
            <wire x2="1104" y1="1760" y2="1760" x1="1024" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="1824" type="branch" />
            <wire x2="1104" y1="1824" y2="1824" x1="1024" />
        </branch>
        <branch name="O(2)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1504" y="1536" type="branch" />
            <wire x2="1504" y1="1536" y2="1536" x1="1424" />
        </branch>
        <branch name="IA(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="2080" type="branch" />
            <wire x2="1104" y1="2080" y2="2080" x1="1024" />
        </branch>
        <branch name="IB(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="2144" type="branch" />
            <wire x2="1104" y1="2144" y2="2144" x1="1024" />
        </branch>
        <branch name="IC(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="2208" type="branch" />
            <wire x2="1104" y1="2208" y2="2208" x1="1024" />
        </branch>
        <branch name="ID(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="2272" type="branch" />
            <wire x2="1104" y1="2272" y2="2272" x1="1024" />
        </branch>
        <branch name="Sel(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="2336" type="branch" />
            <wire x2="1104" y1="2336" y2="2336" x1="1024" />
        </branch>
        <branch name="Sel(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="2400" type="branch" />
            <wire x2="1104" y1="2400" y2="2400" x1="1024" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="2464" type="branch" />
            <wire x2="1104" y1="2464" y2="2464" x1="1024" />
        </branch>
        <branch name="O(3)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1504" y="2176" type="branch" />
            <wire x2="1504" y1="2176" y2="2176" x1="1424" />
        </branch>
        <branch name="O(1)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1504" y="896" type="branch" />
            <wire x2="1504" y1="896" y2="896" x1="1424" />
        </branch>
        <branch name="O(0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1504" y="336" type="branch" />
            <wire x2="1504" y1="336" y2="336" x1="1424" />
        </branch>
        <instance x="2144" y="656" name="XLXI_38" orien="R0" />
        <instance x="2144" y="1216" name="XLXI_39" orien="R0" />
        <instance x="2144" y="1856" name="XLXI_40" orien="R0" />
        <instance x="2144" y="2496" name="XLXI_41" orien="R0" />
        <branch name="IA(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="240" type="branch" />
            <wire x2="2144" y1="240" y2="240" x1="2064" />
        </branch>
        <branch name="IB(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="304" type="branch" />
            <wire x2="2144" y1="304" y2="304" x1="2064" />
        </branch>
        <branch name="IC(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="368" type="branch" />
            <wire x2="2144" y1="368" y2="368" x1="2064" />
        </branch>
        <branch name="ID(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="432" type="branch" />
            <wire x2="2144" y1="432" y2="432" x1="2064" />
        </branch>
        <branch name="Sel(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="496" type="branch" />
            <wire x2="2144" y1="496" y2="496" x1="2064" />
        </branch>
        <branch name="Sel(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="560" type="branch" />
            <wire x2="2144" y1="560" y2="560" x1="2064" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="624" type="branch" />
            <wire x2="2144" y1="624" y2="624" x1="2064" />
        </branch>
        <branch name="IA(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="800" type="branch" />
            <wire x2="2144" y1="800" y2="800" x1="2064" />
        </branch>
        <branch name="IB(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="864" type="branch" />
            <wire x2="2144" y1="864" y2="864" x1="2064" />
        </branch>
        <branch name="IC(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="928" type="branch" />
            <wire x2="2144" y1="928" y2="928" x1="2064" />
        </branch>
        <branch name="ID(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="992" type="branch" />
            <wire x2="2144" y1="992" y2="992" x1="2064" />
        </branch>
        <branch name="Sel(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="1056" type="branch" />
            <wire x2="2144" y1="1056" y2="1056" x1="2064" />
        </branch>
        <branch name="Sel(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="1120" type="branch" />
            <wire x2="2144" y1="1120" y2="1120" x1="2064" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="1184" type="branch" />
            <wire x2="2144" y1="1184" y2="1184" x1="2064" />
        </branch>
        <branch name="IA(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="1440" type="branch" />
            <wire x2="2144" y1="1440" y2="1440" x1="2064" />
        </branch>
        <branch name="IB(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="1504" type="branch" />
            <wire x2="2144" y1="1504" y2="1504" x1="2064" />
        </branch>
        <branch name="IC(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="1568" type="branch" />
            <wire x2="2144" y1="1568" y2="1568" x1="2064" />
        </branch>
        <branch name="ID(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="1632" type="branch" />
            <wire x2="2144" y1="1632" y2="1632" x1="2064" />
        </branch>
        <branch name="Sel(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="1696" type="branch" />
            <wire x2="2144" y1="1696" y2="1696" x1="2064" />
        </branch>
        <branch name="Sel(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="1760" type="branch" />
            <wire x2="2144" y1="1760" y2="1760" x1="2064" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="1824" type="branch" />
            <wire x2="2144" y1="1824" y2="1824" x1="2064" />
        </branch>
        <branch name="O(6)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2544" y="1536" type="branch" />
            <wire x2="2544" y1="1536" y2="1536" x1="2464" />
        </branch>
        <branch name="IA(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="2080" type="branch" />
            <wire x2="2144" y1="2080" y2="2080" x1="2064" />
        </branch>
        <branch name="IB(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="2144" type="branch" />
            <wire x2="2144" y1="2144" y2="2144" x1="2064" />
        </branch>
        <branch name="IC(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="2208" type="branch" />
            <wire x2="2144" y1="2208" y2="2208" x1="2064" />
        </branch>
        <branch name="ID(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="2272" type="branch" />
            <wire x2="2144" y1="2272" y2="2272" x1="2064" />
        </branch>
        <branch name="Sel(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="2336" type="branch" />
            <wire x2="2144" y1="2336" y2="2336" x1="2064" />
        </branch>
        <branch name="Sel(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="2400" type="branch" />
            <wire x2="2144" y1="2400" y2="2400" x1="2064" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="2464" type="branch" />
            <wire x2="2144" y1="2464" y2="2464" x1="2064" />
        </branch>
        <branch name="O(7)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2544" y="2176" type="branch" />
            <wire x2="2544" y1="2176" y2="2176" x1="2464" />
        </branch>
        <branch name="O(5)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2544" y="896" type="branch" />
            <wire x2="2544" y1="896" y2="896" x1="2464" />
        </branch>
        <branch name="O(4)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2544" y="336" type="branch" />
            <wire x2="2544" y1="336" y2="336" x1="2464" />
        </branch>
    </sheet>
</drawing>