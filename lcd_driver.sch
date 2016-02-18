<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="RESET" />
        <signal name="CLEAR" />
        <signal name="Write" />
        <signal name="g,g,g,g" />
        <signal name="g,g,v,v" />
        <signal name="XLXN_24" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_32" />
        <signal name="XLXN_36" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <signal name="XLXN_95" />
        <signal name="initCmd(3:0)" />
        <signal name="XLXN_102(7:0)" />
        <signal name="dataIn(7:0)" />
        <signal name="XLXN_120" />
        <signal name="XLXN_121" />
        <signal name="lcd_E" />
        <signal name="doPwrOnInit" />
        <signal name="doCfgDisplay" />
        <signal name="lcd_rs" />
        <signal name="lcdReady" />
        <signal name="currentAddress(3:0)" />
        <signal name="dataSel(1:0)" />
        <signal name="doWriteByte" />
        <signal name="dataOut(7:0)" />
        <signal name="XLXN_133" />
        <signal name="dataOut(3:0)" />
        <signal name="dataOut(7:4)" />
        <signal name="lcd_D(3:0)" />
        <signal name="initCmd(3:0),initCmd(3:0)" />
        <signal name="XLXN_137(7:0)" />
        <signal name="sf_ce" />
        <signal name="A(15:12)" />
        <signal name="A(11:8)" />
        <signal name="A(7:4)" />
        <signal name="A(3:0)" />
        <signal name="XLXN_195(3:0)" />
        <signal name="lcd_rw" />
        <signal name="v" />
        <signal name="g" />
        <signal name="currentAddress(1:0)" />
        <signal name="A(15:0)" />
        <signal name="D(15:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="CLEAR" />
        <port polarity="Input" name="Write" />
        <port polarity="Output" name="lcd_E" />
        <port polarity="Output" name="lcd_rs" />
        <port polarity="Output" name="lcdReady" />
        <port polarity="Output" name="lcd_D(3:0)" />
        <port polarity="Output" name="sf_ce" />
        <port polarity="Output" name="lcd_rw" />
        <port polarity="Input" name="D(15:0)" />
        <blockdef name="lcd_cfg_display">
            <timestamp>2010-9-29T19:6:37</timestamp>
            <rect width="336" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-352" y2="-352" x1="400" />
            <line x2="464" y1="-272" y2="-272" x1="400" />
            <line x2="464" y1="-192" y2="-192" x1="400" />
            <line x2="464" y1="-112" y2="-112" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="lcd_pwr_on_init">
            <timestamp>2010-10-2T12:56:17</timestamp>
            <rect width="304" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="432" y1="-368" y2="-368" x1="368" />
            <line x2="432" y1="-256" y2="-256" x1="368" />
            <line x2="432" y1="-144" y2="-144" x1="368" />
        </blockdef>
        <blockdef name="lcd_write_byte">
            <timestamp>2010-9-29T19:6:20</timestamp>
            <rect width="320" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="timing">
            <timestamp>2008-11-2T2:47:56</timestamp>
            <rect width="64" x="352" y="20" height="24" />
            <line x2="416" y1="32" y2="32" x1="352" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <line x2="416" y1="-352" y2="-352" x1="352" />
            <line x2="416" y1="-416" y2="-416" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <line x2="416" y1="-480" y2="-480" x1="352" />
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <rect width="288" x="64" y="-512" height="576" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <blockdef name="mux8b4">
            <timestamp>2010-9-30T10:17:32</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
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
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="mux4b2">
            <timestamp>2010-8-19T23:31:49</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="lcd_control_master">
            <timestamp>2010-10-2T12:24:29</timestamp>
            <rect width="400" x="64" y="-640" height="640" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="528" y1="-608" y2="-608" x1="464" />
            <line x2="528" y1="-544" y2="-544" x1="464" />
            <line x2="528" y1="-480" y2="-480" x1="464" />
            <line x2="528" y1="-416" y2="-416" x1="464" />
            <line x2="528" y1="-352" y2="-352" x1="464" />
            <rect width="64" x="464" y="-300" height="24" />
            <line x2="528" y1="-288" y2="-288" x1="464" />
            <rect width="64" x="464" y="-236" height="24" />
            <line x2="528" y1="-224" y2="-224" x1="464" />
            <rect width="64" x="464" y="-172" height="24" />
            <line x2="528" y1="-160" y2="-160" x1="464" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
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
        <blockdef name="mux4b4">
            <timestamp>2010-8-19T23:31:38</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
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
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="fd16ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="64" x="0" y="-268" height="24" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="displayRom">
            <timestamp>2013-9-26T15:51:18</timestamp>
            <rect width="224" x="32" y="32" height="96" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="256" y1="80" y2="80" style="linewidth:W" x1="288" />
        </blockdef>
        <block symbolname="timing" name="XLXI_5">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_42" name="DoCount" />
            <blockpin signalname="XLXN_41" name="ResetCount" />
            <blockpin signalname="XLXN_24" name="Wait240ns" />
            <blockpin name="Wait40ns" />
            <blockpin name="CNT(19:0)" />
            <blockpin signalname="XLXN_32" name="Wait1us" />
            <blockpin signalname="XLXN_26" name="Wait40us" />
            <blockpin signalname="XLXN_27" name="Wait100us" />
            <blockpin signalname="XLXN_30" name="Wait2ms" />
            <blockpin signalname="XLXN_29" name="Wait15ms" />
            <blockpin signalname="XLXN_28" name="Wait4ms" />
        </block>
        <block symbolname="lcd_pwr_on_init" name="XLXI_3">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="XLXN_24" name="wait240ns" />
            <blockpin signalname="XLXN_26" name="wait40us" />
            <blockpin signalname="XLXN_27" name="wait100us" />
            <blockpin signalname="XLXN_28" name="wait4ms" />
            <blockpin signalname="XLXN_29" name="wait15ms" />
            <blockpin signalname="doPwrOnInit" name="doPwrOnInit" />
            <blockpin signalname="initCmd(3:0)" name="dataOut(3:0)" />
            <blockpin signalname="XLXN_43" name="resetCount" />
            <blockpin signalname="XLXN_48" name="doCount" />
            <blockpin signalname="XLXN_120" name="lcdEnable" />
            <blockpin signalname="XLXN_49" name="initDone" />
        </block>
        <block symbolname="lcd_cfg_display" name="XLXI_2">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="XLXN_39" name="writeByteDone" />
            <blockpin signalname="XLXN_40" name="writeByteReady" />
            <blockpin signalname="XLXN_30" name="wait2ms" />
            <blockpin signalname="doCfgDisplay" name="doCfgDisplay" />
            <blockpin signalname="XLXN_44" name="resetCount" />
            <blockpin signalname="XLXN_47" name="doCount" />
            <blockpin signalname="XLXN_38" name="doWriteByte" />
            <blockpin signalname="XLXN_95" name="cfgDisplayDone" />
            <blockpin signalname="XLXN_102(7:0)" name="dataOut(7:0)" />
        </block>
        <block symbolname="lcd_write_byte" name="XLXI_4">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="XLXN_24" name="wait240ns" />
            <blockpin signalname="XLXN_32" name="wait1us" />
            <blockpin signalname="XLXN_26" name="wait40us" />
            <blockpin signalname="XLXN_36" name="doWriteByte" />
            <blockpin signalname="XLXN_45" name="resetCount" />
            <blockpin signalname="XLXN_46" name="doCount" />
            <blockpin signalname="XLXN_121" name="lcdEnable" />
            <blockpin signalname="XLXN_133" name="nibbleSel" />
            <blockpin signalname="XLXN_39" name="writeByteDone" />
            <blockpin signalname="XLXN_40" name="writeByteReady" />
        </block>
        <block symbolname="or2" name="XLXI_12">
            <blockpin signalname="XLXN_38" name="I0" />
            <blockpin signalname="doWriteByte" name="I1" />
            <blockpin signalname="XLXN_36" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_14">
            <blockpin signalname="XLXN_46" name="I0" />
            <blockpin signalname="XLXN_47" name="I1" />
            <blockpin signalname="XLXN_48" name="I2" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_13">
            <blockpin signalname="XLXN_45" name="I0" />
            <blockpin signalname="XLXN_44" name="I1" />
            <blockpin signalname="XLXN_43" name="I2" />
            <blockpin signalname="XLXN_41" name="O" />
        </block>
        <block symbolname="mux8b4" name="XLXI_23">
            <blockpin signalname="initCmd(3:0),initCmd(3:0)" name="IA(7:0)" />
            <blockpin signalname="XLXN_102(7:0)" name="IB(7:0)" />
            <blockpin signalname="XLXN_137(7:0)" name="IC(7:0)" />
            <blockpin signalname="dataIn(7:0)" name="ID(7:0)" />
            <blockpin signalname="dataSel(1:0)" name="Sel(1:0)" />
            <blockpin signalname="dataOut(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="or2" name="XLXI_27">
            <blockpin signalname="XLXN_121" name="I0" />
            <blockpin signalname="XLXN_120" name="I1" />
            <blockpin signalname="lcd_E" name="O" />
        </block>
        <block symbolname="mux4b2" name="XLXI_29">
            <blockpin signalname="XLXN_133" name="Sel" />
            <blockpin signalname="dataOut(3:0)" name="IA(3:0)" />
            <blockpin signalname="dataOut(7:4)" name="IB(3:0)" />
            <blockpin signalname="lcd_D(3:0)" name="O(3:0)" />
        </block>
        <block symbolname="lcd_control_master" name="XLXI_30">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="CLEAR" name="CLEAR" />
            <blockpin signalname="XLXN_49" name="initDone" />
            <blockpin signalname="XLXN_95" name="cfgDisplayDone" />
            <blockpin signalname="XLXN_39" name="writeByteDone" />
            <blockpin signalname="g,g,g,g" name="startAddress(3:0)" />
            <blockpin signalname="g,g,v,v" name="Count(3:0)" />
            <blockpin signalname="doPwrOnInit" name="doPwrOnInit" />
            <blockpin signalname="doCfgDisplay" name="doCfgDisplay" />
            <blockpin signalname="doWriteByte" name="doWriteByte" />
            <blockpin signalname="lcd_rs" name="lcdRegSel" />
            <blockpin signalname="lcdReady" name="lcdReady" />
            <blockpin signalname="currentAddress(3:0)" name="currentAddress(3:0)" />
            <blockpin signalname="dataSel(1:0)" name="dataSel(1:0)" />
            <blockpin signalname="XLXN_137(7:0)" name="commandOut(7:0)" />
            <blockpin signalname="g" name="row" />
            <blockpin signalname="Write" name="Write" />
        </block>
        <block symbolname="vcc" name="XLXI_36">
            <blockpin signalname="v" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_37">
            <blockpin signalname="g" name="G" />
        </block>
        <block symbolname="mux4b4" name="XLXI_39">
            <blockpin signalname="A(15:12)" name="IA(3:0)" />
            <blockpin signalname="A(11:8)" name="IB(3:0)" />
            <blockpin signalname="A(7:4)" name="IC(3:0)" />
            <blockpin signalname="A(3:0)" name="ID(3:0)" />
            <blockpin signalname="currentAddress(1:0)" name="Sel(1:0)" />
            <blockpin signalname="XLXN_195(3:0)" name="O(3:0)" />
        </block>
        <block symbolname="buf" name="XLXI_61">
            <blockpin signalname="v" name="I" />
            <blockpin signalname="sf_ce" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_62">
            <blockpin signalname="g" name="I" />
            <blockpin signalname="lcd_rw" name="O" />
        </block>
        <block symbolname="fd16ce" name="XLXI_63">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="Write" name="CE" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin signalname="D(15:0)" name="D(15:0)" />
            <blockpin signalname="A(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="displayRom" name="XLXI_64">
            <blockpin signalname="XLXN_195(3:0)" name="a(3:0)" />
            <blockpin signalname="dataIn(7:0)" name="spo(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="656" y="2000" name="XLXI_5" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="656" y1="720" y2="720" x1="560" />
        </branch>
        <branch name="RESET">
            <wire x2="656" y1="784" y2="784" x1="560" />
        </branch>
        <branch name="CLEAR">
            <wire x2="656" y1="848" y2="848" x1="560" />
        </branch>
        <branch name="Write">
            <wire x2="656" y1="1104" y2="1104" x1="560" />
        </branch>
        <branch name="g,g,g,g">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="1168" type="branch" />
            <wire x2="656" y1="1168" y2="1168" x1="560" />
        </branch>
        <branch name="g,g,v,v">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="1232" type="branch" />
            <wire x2="656" y1="1232" y2="1232" x1="560" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="560" y="1520" type="branch" />
            <wire x2="656" y1="1520" y2="1520" x1="560" />
        </branch>
        <instance x="2096" y="1712" name="XLXI_2" orien="R0">
        </instance>
        <instance x="2096" y="2352" name="XLXI_4" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="560" type="branch" />
            <wire x2="2096" y1="560" y2="560" x1="2000" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="624" type="branch" />
            <wire x2="2096" y1="624" y2="624" x1="2000" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="1360" type="branch" />
            <wire x2="2096" y1="1360" y2="1360" x1="2000" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="1424" type="branch" />
            <wire x2="2096" y1="1424" y2="1424" x1="2000" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="2000" type="branch" />
            <wire x2="2096" y1="2000" y2="2000" x1="2000" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="2064" type="branch" />
            <wire x2="2096" y1="2064" y2="2064" x1="2000" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1600" y1="1584" y2="1584" x1="1072" />
            <wire x2="1600" y1="1584" y2="2128" x1="1600" />
            <wire x2="2096" y1="2128" y2="2128" x1="1600" />
            <wire x2="2096" y1="688" y2="688" x1="1600" />
            <wire x2="1600" y1="688" y2="1584" x1="1600" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="1648" y1="1712" y2="1712" x1="1072" />
            <wire x2="1648" y1="1712" y2="2256" x1="1648" />
            <wire x2="2096" y1="2256" y2="2256" x1="1648" />
            <wire x2="1648" y1="752" y2="1712" x1="1648" />
            <wire x2="2096" y1="752" y2="752" x1="1648" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="1696" y1="1776" y2="1776" x1="1072" />
            <wire x2="1696" y1="816" y2="1776" x1="1696" />
            <wire x2="2096" y1="816" y2="816" x1="1696" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="1744" y1="1904" y2="1904" x1="1072" />
            <wire x2="1744" y1="880" y2="1904" x1="1744" />
            <wire x2="2096" y1="880" y2="880" x1="1744" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="1792" y1="1968" y2="1968" x1="1072" />
            <wire x2="1792" y1="944" y2="1968" x1="1792" />
            <wire x2="2096" y1="944" y2="944" x1="1792" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="1456" y1="1840" y2="1840" x1="1072" />
            <wire x2="1456" y1="1616" y2="1840" x1="1456" />
            <wire x2="2096" y1="1616" y2="1616" x1="1456" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="1552" y1="1648" y2="1648" x1="1072" />
            <wire x2="1552" y1="1648" y2="2192" x1="1552" />
            <wire x2="2096" y1="2192" y2="2192" x1="1552" />
        </branch>
        <instance x="1744" y="2416" name="XLXI_12" orien="R0" />
        <branch name="XLXN_36">
            <wire x2="2096" y1="2320" y2="2320" x1="2000" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="1504" y1="1216" y2="2352" x1="1504" />
            <wire x2="1744" y1="2352" y2="2352" x1="1504" />
            <wire x2="2640" y1="1216" y2="1216" x1="1504" />
            <wire x2="2640" y1="1216" y2="1520" x1="2640" />
            <wire x2="2640" y1="1520" y2="1520" x1="2560" />
        </branch>
        <branch name="XLXN_39">
            <wire x2="2736" y1="336" y2="336" x1="256" />
            <wire x2="2736" y1="336" y2="1808" x1="2736" />
            <wire x2="2736" y1="1808" y2="2256" x1="2736" />
            <wire x2="256" y1="336" y2="1040" x1="256" />
            <wire x2="656" y1="1040" y2="1040" x1="256" />
            <wire x2="2096" y1="1488" y2="1488" x1="1888" />
            <wire x2="1888" y1="1488" y2="1808" x1="1888" />
            <wire x2="2736" y1="1808" y2="1808" x1="1888" />
            <wire x2="2736" y1="2256" y2="2256" x1="2544" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="2096" y1="1552" y2="1552" x1="1936" />
            <wire x2="1936" y1="1552" y2="1760" x1="1936" />
            <wire x2="2784" y1="1760" y2="1760" x1="1936" />
            <wire x2="2784" y1="1760" y2="2320" x1="2784" />
            <wire x2="2784" y1="2320" y2="2320" x1="2544" />
        </branch>
        <instance x="240" y="1952" name="XLXI_14" orien="R0" />
        <instance x="240" y="1712" name="XLXI_13" orien="R0" />
        <branch name="XLXN_41">
            <wire x2="656" y1="1584" y2="1584" x1="496" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="576" y1="1824" y2="1824" x1="496" />
            <wire x2="576" y1="1648" y2="1824" x1="576" />
            <wire x2="656" y1="1648" y2="1648" x1="576" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="160" y1="240" y2="1584" x1="160" />
            <wire x2="240" y1="1584" y2="1584" x1="160" />
            <wire x2="2832" y1="240" y2="240" x1="160" />
            <wire x2="2832" y1="240" y2="1360" x1="2832" />
            <wire x2="2832" y1="1360" y2="1360" x1="2560" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="112" y1="192" y2="1648" x1="112" />
            <wire x2="240" y1="1648" y2="1648" x1="112" />
            <wire x2="2928" y1="192" y2="192" x1="112" />
            <wire x2="2928" y1="192" y2="2000" x1="2928" />
            <wire x2="2928" y1="2000" y2="2000" x1="2544" />
        </branch>
        <branch name="XLXN_47">
            <wire x2="240" y1="1824" y2="1824" x1="160" />
            <wire x2="160" y1="1824" y2="2496" x1="160" />
            <wire x2="2832" y1="2496" y2="2496" x1="160" />
            <wire x2="2832" y1="1440" y2="1440" x1="2560" />
            <wire x2="2832" y1="1440" y2="2496" x1="2832" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="112" y1="1760" y2="2544" x1="112" />
            <wire x2="2880" y1="2544" y2="2544" x1="112" />
            <wire x2="240" y1="1760" y2="1760" x1="112" />
            <wire x2="2880" y1="672" y2="672" x1="2528" />
            <wire x2="2880" y1="672" y2="2544" x1="2880" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="352" y1="432" y2="912" x1="352" />
            <wire x2="656" y1="912" y2="912" x1="352" />
            <wire x2="2640" y1="432" y2="432" x1="352" />
            <wire x2="2640" y1="432" y2="896" x1="2640" />
            <wire x2="2640" y1="896" y2="896" x1="2528" />
        </branch>
        <iomarker fontsize="28" x="560" y="720" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="560" y="784" name="RESET" orien="R180" />
        <iomarker fontsize="28" x="560" y="848" name="CLEAR" orien="R180" />
        <iomarker fontsize="28" x="560" y="1104" name="Write" orien="R180" />
        <branch name="XLXN_95">
            <wire x2="304" y1="384" y2="976" x1="304" />
            <wire x2="656" y1="976" y2="976" x1="304" />
            <wire x2="2688" y1="384" y2="384" x1="304" />
            <wire x2="2688" y1="384" y2="1600" x1="2688" />
            <wire x2="2688" y1="1600" y2="1600" x1="2560" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="208" y1="1888" y2="2448" x1="208" />
            <wire x2="2688" y1="2448" y2="2448" x1="208" />
            <wire x2="240" y1="1888" y2="1888" x1="208" />
            <wire x2="2688" y1="2064" y2="2064" x1="2544" />
            <wire x2="2688" y1="2064" y2="2448" x1="2688" />
        </branch>
        <branch name="XLXN_43">
            <wire x2="208" y1="288" y2="1520" x1="208" />
            <wire x2="240" y1="1520" y2="1520" x1="208" />
            <wire x2="2784" y1="288" y2="288" x1="208" />
            <wire x2="2784" y1="288" y2="560" x1="2784" />
            <wire x2="2784" y1="560" y2="560" x1="2528" />
        </branch>
        <branch name="initCmd(3:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3120" y="1008" type="branch" />
            <wire x2="3120" y1="1008" y2="1008" x1="2528" />
        </branch>
        <branch name="dataIn(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3360" y="1360" type="branch" />
            <wire x2="3536" y1="1360" y2="1360" x1="3360" />
        </branch>
        <instance x="3536" y="1456" name="XLXI_23" orien="R0">
        </instance>
        <branch name="XLXN_120">
            <wire x2="2976" y1="784" y2="784" x1="2528" />
            <wire x2="2976" y1="784" y2="2064" x1="2976" />
            <wire x2="3040" y1="2064" y2="2064" x1="2976" />
        </branch>
        <branch name="XLXN_121">
            <wire x2="3040" y1="2128" y2="2128" x1="2544" />
        </branch>
        <instance x="3040" y="2192" name="XLXI_27" orien="R0" />
        <branch name="lcd_E">
            <wire x2="3360" y1="2096" y2="2096" x1="3296" />
        </branch>
        <iomarker fontsize="28" x="3360" y="2096" name="lcd_E" orien="R0" />
        <branch name="lcd_rs">
            <wire x2="1280" y1="912" y2="912" x1="1184" />
        </branch>
        <branch name="lcdReady">
            <wire x2="1280" y1="976" y2="976" x1="1184" />
        </branch>
        <branch name="currentAddress(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="1040" type="branch" />
            <wire x2="1280" y1="1040" y2="1040" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1280" y="912" name="lcd_rs" orien="R0" />
        <iomarker fontsize="28" x="1280" y="976" name="lcdReady" orien="R0" />
        <branch name="doCfgDisplay">
            <wire x2="1840" y1="784" y2="784" x1="1184" />
            <wire x2="1840" y1="784" y2="1680" x1="1840" />
            <wire x2="2096" y1="1680" y2="1680" x1="1840" />
        </branch>
        <branch name="doPwrOnInit">
            <wire x2="1552" y1="720" y2="720" x1="1184" />
            <wire x2="1552" y1="720" y2="1008" x1="1552" />
            <wire x2="2096" y1="1008" y2="1008" x1="1552" />
        </branch>
        <branch name="doWriteByte">
            <wire x2="1232" y1="848" y2="848" x1="1184" />
            <wire x2="1232" y1="848" y2="2288" x1="1232" />
            <wire x2="1744" y1="2288" y2="2288" x1="1232" />
        </branch>
        <branch name="dataSel(1:0)">
            <wire x2="3024" y1="1104" y2="1104" x1="1184" />
            <wire x2="3024" y1="1104" y2="1424" x1="3024" />
            <wire x2="3536" y1="1424" y2="1424" x1="3024" />
        </branch>
        <branch name="dataOut(7:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="4080" y="1168" type="branch" />
            <wire x2="4080" y1="1168" y2="1168" x1="3920" />
        </branch>
        <instance x="4096" y="1760" name="XLXI_29" orien="R0">
        </instance>
        <branch name="XLXN_133">
            <wire x2="3600" y1="2192" y2="2192" x1="2544" />
            <wire x2="4096" y1="1600" y2="1600" x1="3600" />
            <wire x2="3600" y1="1600" y2="2192" x1="3600" />
        </branch>
        <branch name="dataOut(3:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="1664" type="branch" />
            <wire x2="4096" y1="1664" y2="1664" x1="4000" />
        </branch>
        <branch name="dataOut(7:4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="1728" type="branch" />
            <wire x2="4096" y1="1728" y2="1728" x1="4000" />
        </branch>
        <branch name="lcd_D(3:0)">
            <wire x2="4640" y1="1600" y2="1600" x1="4480" />
        </branch>
        <iomarker fontsize="28" x="4640" y="1600" name="lcd_D(3:0)" orien="R0" />
        <branch name="initCmd(3:0),initCmd(3:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3440" y="1168" type="branch" />
            <wire x2="3536" y1="1168" y2="1168" x1="3440" />
        </branch>
        <branch name="XLXN_102(7:0)">
            <wire x2="3120" y1="1680" y2="1680" x1="2560" />
            <wire x2="3120" y1="1232" y2="1680" x1="3120" />
            <wire x2="3536" y1="1232" y2="1232" x1="3120" />
        </branch>
        <branch name="XLXN_137(7:0)">
            <wire x2="3072" y1="1168" y2="1168" x1="1184" />
            <wire x2="3072" y1="1168" y2="1296" x1="3072" />
            <wire x2="3536" y1="1296" y2="1296" x1="3072" />
        </branch>
        <instance x="656" y="1328" name="XLXI_30" orien="R0">
        </instance>
        <branch name="g">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="1296" type="branch" />
            <wire x2="656" y1="1296" y2="1296" x1="560" />
        </branch>
        <instance x="2096" y="1040" name="XLXI_3" orien="R0">
        </instance>
        <branch name="sf_ce">
            <wire x2="3760" y1="480" y2="480" x1="3680" />
        </branch>
        <iomarker fontsize="28" x="3760" y="480" name="sf_ce" orien="R0" />
        <instance x="1296" y="3120" name="XLXI_39" orien="R0">
        </instance>
        <branch name="A(15:12)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1248" y="2832" type="branch" />
            <wire x2="1296" y1="2832" y2="2832" x1="1248" />
        </branch>
        <branch name="A(11:8)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1248" y="2896" type="branch" />
            <wire x2="1296" y1="2896" y2="2896" x1="1248" />
        </branch>
        <branch name="A(7:4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1248" y="2960" type="branch" />
            <wire x2="1296" y1="2960" y2="2960" x1="1248" />
        </branch>
        <branch name="A(3:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1248" y="3024" type="branch" />
            <wire x2="1296" y1="3024" y2="3024" x1="1248" />
        </branch>
        <branch name="XLXN_195(3:0)">
            <wire x2="1728" y1="2832" y2="2832" x1="1680" />
        </branch>
        <branch name="dataIn(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="2832" type="branch" />
            <wire x2="2080" y1="2832" y2="2832" x1="2016" />
        </branch>
        <branch name="currentAddress(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="3088" type="branch" />
            <wire x2="1296" y1="3088" y2="3088" x1="1248" />
        </branch>
        <branch name="lcd_rw">
            <wire x2="3760" y1="560" y2="560" x1="3680" />
        </branch>
        <iomarker fontsize="28" x="3760" y="560" name="lcd_rw" orien="R0" />
        <instance x="3456" y="512" name="XLXI_61" orien="R0" />
        <instance x="3456" y="592" name="XLXI_62" orien="R0" />
        <instance x="3296" y="720" name="XLXI_37" orien="R0" />
        <instance x="3296" y="432" name="XLXI_36" orien="R0" />
        <branch name="v">
            <attrtext style="alignment:SOFT-TCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3360" y="480" type="branch" />
            <wire x2="3360" y1="432" y2="480" x1="3360" />
            <wire x2="3456" y1="480" y2="480" x1="3360" />
        </branch>
        <branch name="g">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3360" y="560" type="branch" />
            <wire x2="3360" y1="560" y2="592" x1="3360" />
            <wire x2="3456" y1="560" y2="560" x1="3360" />
        </branch>
        <instance x="560" y="3120" name="XLXI_63" orien="R0" />
        <branch name="A(15:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1024" y="2864" type="branch" />
            <wire x2="1024" y1="2864" y2="2864" x1="944" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="480" y="3088" type="branch" />
            <wire x2="560" y1="3088" y2="3088" x1="480" />
        </branch>
        <branch name="D(15:0)">
            <wire x2="544" y1="2864" y2="2864" x1="480" />
            <wire x2="560" y1="2864" y2="2864" x1="544" />
        </branch>
        <branch name="Write">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="480" y="2928" type="branch" />
            <wire x2="560" y1="2928" y2="2928" x1="480" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="480" y="2992" type="branch" />
            <wire x2="560" y1="2992" y2="2992" x1="480" />
        </branch>
        <iomarker fontsize="28" x="480" y="2864" name="D(15:0)" orien="R180" />
        <instance x="1728" y="2752" name="XLXI_64" orien="R0">
        </instance>
    </sheet>
</drawing>