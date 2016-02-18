<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Wait240ns" />
        <signal name="Wait40ns" />
        <signal name="CLK" />
        <signal name="Wait1us" />
        <signal name="Wait40us" />
        <signal name="Wait100us" />
        <signal name="Wait2ms" />
        <signal name="Wait15ms" />
        <signal name="Wait4ms" />
        <signal name="CNT(1)" />
        <signal name="CNT(2)" />
        <signal name="CNT(3)" />
        <signal name="CNT(4)" />
        <signal name="CNT(5)" />
        <signal name="CNT(11)" />
        <signal name="CNT(10)" />
        <signal name="CNT(12)" />
        <signal name="CNT(6)" />
        <signal name="CNT(14)" />
        <signal name="CNT(16)" />
        <signal name="CNT(8)" />
        <signal name="CNT(13)" />
        <signal name="CNT(17)" />
        <signal name="CNT(18)" />
        <signal name="CNT(19)" />
        <signal name="CNT(19:0)" />
        <signal name="DoCount" />
        <signal name="ResetCount" />
        <port polarity="Output" name="Wait240ns" />
        <port polarity="Output" name="Wait40ns" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="Wait1us" />
        <port polarity="Output" name="Wait40us" />
        <port polarity="Output" name="Wait100us" />
        <port polarity="Output" name="Wait2ms" />
        <port polarity="Output" name="Wait15ms" />
        <port polarity="Output" name="Wait4ms" />
        <port polarity="Output" name="CNT(19:0)" />
        <port polarity="Input" name="DoCount" />
        <port polarity="Input" name="ResetCount" />
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="lcdCounter">
            <timestamp>2016-2-17T23:53:37</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <block symbolname="buf" name="XLXI_16">
            <blockpin signalname="CNT(1)" name="I" />
            <blockpin signalname="Wait40ns" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_18">
            <blockpin signalname="CNT(3)" name="I0" />
            <blockpin signalname="CNT(2)" name="I1" />
            <blockpin signalname="Wait240ns" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_21">
            <blockpin signalname="CNT(5)" name="I0" />
            <blockpin signalname="CNT(4)" name="I1" />
            <blockpin signalname="CNT(1)" name="I2" />
            <blockpin signalname="Wait1us" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_17">
            <blockpin signalname="CNT(11)" name="I" />
            <blockpin signalname="Wait40us" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_19">
            <blockpin signalname="CNT(12)" name="I0" />
            <blockpin signalname="CNT(10)" name="I1" />
            <blockpin signalname="Wait100us" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_22">
            <blockpin signalname="CNT(16)" name="I0" />
            <blockpin signalname="CNT(14)" name="I1" />
            <blockpin signalname="CNT(6)" name="I2" />
            <blockpin signalname="CNT(4)" name="I3" />
            <blockpin signalname="Wait2ms" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_20">
            <blockpin signalname="CNT(19)" name="I0" />
            <blockpin signalname="CNT(18)" name="I1" />
            <blockpin signalname="Wait15ms" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_23">
            <blockpin signalname="CNT(17)" name="I0" />
            <blockpin signalname="CNT(16)" name="I1" />
            <blockpin signalname="CNT(13)" name="I2" />
            <blockpin signalname="CNT(8)" name="I3" />
            <blockpin signalname="Wait4ms" name="O" />
        </block>
        <block symbolname="lcdCounter" name="XLXI_25">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="DoCount" name="ce" />
            <blockpin signalname="ResetCount" name="sclr" />
            <blockpin signalname="CNT(19:0)" name="q(19:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="Wait240ns">
            <wire x2="1280" y1="640" y2="640" x1="1168" />
        </branch>
        <branch name="Wait40ns">
            <wire x2="1280" y1="480" y2="480" x1="1168" />
        </branch>
        <branch name="CLK">
            <wire x2="608" y1="192" y2="192" x1="480" />
        </branch>
        <instance x="944" y="512" name="XLXI_16" orien="R0" />
        <instance x="912" y="736" name="XLXI_18" orien="R0" />
        <branch name="Wait1us">
            <wire x2="1280" y1="832" y2="832" x1="1168" />
        </branch>
        <instance x="912" y="960" name="XLXI_21" orien="R0" />
        <branch name="Wait40us">
            <wire x2="1280" y1="1008" y2="1008" x1="1168" />
        </branch>
        <branch name="Wait100us">
            <wire x2="1280" y1="1168" y2="1168" x1="1168" />
        </branch>
        <instance x="944" y="1040" name="XLXI_17" orien="R0" />
        <instance x="912" y="1264" name="XLXI_19" orien="R0" />
        <branch name="Wait2ms">
            <wire x2="1280" y1="1408" y2="1408" x1="1168" />
        </branch>
        <instance x="912" y="1568" name="XLXI_22" orien="R0" />
        <branch name="Wait15ms">
            <wire x2="1280" y1="1952" y2="1952" x1="1168" />
        </branch>
        <instance x="912" y="2048" name="XLXI_20" orien="R0" />
        <branch name="Wait4ms">
            <wire x2="1280" y1="1728" y2="1728" x1="1168" />
        </branch>
        <instance x="912" y="1888" name="XLXI_23" orien="R0" />
        <branch name="CNT(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="800" y="480" type="branch" />
            <wire x2="944" y1="480" y2="480" x1="800" />
        </branch>
        <branch name="CNT(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="800" y="608" type="branch" />
            <wire x2="912" y1="608" y2="608" x1="800" />
        </branch>
        <branch name="CNT(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="800" y="672" type="branch" />
            <wire x2="912" y1="672" y2="672" x1="800" />
        </branch>
        <branch name="CNT(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="800" y="768" type="branch" />
            <wire x2="912" y1="768" y2="768" x1="800" />
        </branch>
        <branch name="CNT(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="800" y="832" type="branch" />
            <wire x2="912" y1="832" y2="832" x1="800" />
        </branch>
        <branch name="CNT(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="800" y="896" type="branch" />
            <wire x2="912" y1="896" y2="896" x1="800" />
        </branch>
        <branch name="CNT(11)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="800" y="1008" type="branch" />
            <wire x2="944" y1="1008" y2="1008" x1="800" />
        </branch>
        <branch name="CNT(10)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="800" y="1136" type="branch" />
            <wire x2="912" y1="1136" y2="1136" x1="800" />
        </branch>
        <branch name="CNT(12)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="800" y="1200" type="branch" />
            <wire x2="912" y1="1200" y2="1200" x1="800" />
        </branch>
        <branch name="CNT(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="800" y="1312" type="branch" />
            <wire x2="912" y1="1312" y2="1312" x1="800" />
        </branch>
        <branch name="CNT(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="800" y="1376" type="branch" />
            <wire x2="912" y1="1376" y2="1376" x1="800" />
        </branch>
        <branch name="CNT(14)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="800" y="1440" type="branch" />
            <wire x2="912" y1="1440" y2="1440" x1="800" />
        </branch>
        <branch name="CNT(16)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="800" y="1504" type="branch" />
            <wire x2="912" y1="1504" y2="1504" x1="800" />
        </branch>
        <branch name="CNT(8)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="800" y="1632" type="branch" />
            <wire x2="912" y1="1632" y2="1632" x1="800" />
        </branch>
        <branch name="CNT(13)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="800" y="1696" type="branch" />
            <wire x2="912" y1="1696" y2="1696" x1="800" />
        </branch>
        <branch name="CNT(16)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="800" y="1760" type="branch" />
            <wire x2="912" y1="1760" y2="1760" x1="800" />
        </branch>
        <branch name="CNT(17)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="800" y="1824" type="branch" />
            <wire x2="912" y1="1824" y2="1824" x1="800" />
        </branch>
        <branch name="CNT(18)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="800" y="1920" type="branch" />
            <wire x2="912" y1="1920" y2="1920" x1="800" />
        </branch>
        <branch name="CNT(19)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="800" y="1984" type="branch" />
            <wire x2="912" y1="1984" y2="1984" x1="800" />
        </branch>
        <iomarker fontsize="28" x="1280" y="640" name="Wait240ns" orien="R0" />
        <iomarker fontsize="28" x="1280" y="480" name="Wait40ns" orien="R0" />
        <iomarker fontsize="28" x="480" y="192" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="1280" y="832" name="Wait1us" orien="R0" />
        <iomarker fontsize="28" x="1280" y="1168" name="Wait100us" orien="R0" />
        <iomarker fontsize="28" x="1280" y="1008" name="Wait40us" orien="R0" />
        <iomarker fontsize="28" x="1280" y="1408" name="Wait2ms" orien="R0" />
        <iomarker fontsize="28" x="1280" y="1952" name="Wait15ms" orien="R0" />
        <iomarker fontsize="28" x="1280" y="1728" name="Wait4ms" orien="R0" />
        <instance x="608" y="352" name="XLXI_25" orien="R0">
        </instance>
        <branch name="CNT(19:0)">
            <wire x2="1232" y1="192" y2="192" x1="992" />
        </branch>
        <iomarker fontsize="28" x="1232" y="192" name="CNT(19:0)" orien="R0" />
        <branch name="DoCount">
            <wire x2="608" y1="256" y2="256" x1="480" />
        </branch>
        <iomarker fontsize="28" x="480" y="256" name="DoCount" orien="R180" />
        <branch name="ResetCount">
            <wire x2="608" y1="320" y2="320" x1="480" />
        </branch>
        <iomarker fontsize="28" x="480" y="320" name="ResetCount" orien="R180" />
    </sheet>
</drawing>