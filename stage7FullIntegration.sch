<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <blockdef name="stage6BasicOperation">
            <timestamp>2016-2-11T3:16:47</timestamp>
            <rect width="352" x="64" y="-1536" height="1536" />
            <line x2="0" y1="-1504" y2="-1504" x1="64" />
            <line x2="0" y1="-1440" y2="-1440" x1="64" />
            <line x2="0" y1="-1376" y2="-1376" x1="64" />
            <line x2="0" y1="-1312" y2="-1312" x1="64" />
            <line x2="0" y1="-1248" y2="-1248" x1="64" />
            <line x2="0" y1="-1184" y2="-1184" x1="64" />
            <line x2="0" y1="-1120" y2="-1120" x1="64" />
            <line x2="0" y1="-1056" y2="-1056" x1="64" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <rect width="64" x="0" y="-812" height="24" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <rect width="64" x="0" y="-748" height="24" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <rect width="64" x="0" y="-684" height="24" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
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
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="416" y="-1516" height="24" />
            <line x2="480" y1="-1504" y2="-1504" x1="416" />
            <rect width="64" x="416" y="-1276" height="24" />
            <line x2="480" y1="-1264" y2="-1264" x1="416" />
            <rect width="64" x="416" y="-1036" height="24" />
            <line x2="480" y1="-1024" y2="-1024" x1="416" />
            <line x2="480" y1="-784" y2="-784" x1="416" />
            <rect width="64" x="416" y="-556" height="24" />
            <line x2="480" y1="-544" y2="-544" x1="416" />
            <rect width="64" x="416" y="-316" height="24" />
            <line x2="480" y1="-304" y2="-304" x1="416" />
            <rect width="64" x="416" y="-76" height="24" />
            <line x2="480" y1="-64" y2="-64" x1="416" />
        </blockdef>
        <block symbolname="stage6BasicOperation" name="XLXI_1">
            <blockpin name="CLK" />
            <blockpin name="MSPWrite" />
            <blockpin name="MSPop" />
            <blockpin name="RSPWrite" />
            <blockpin name="RSPop" />
            <blockpin name="PCWrite" />
            <blockpin name="PCSource" />
            <blockpin name="PCAdd" />
            <blockpin name="ValAWrite" />
            <blockpin name="ValBWrite" />
            <blockpin name="MemWrite2" />
            <blockpin name="SignExtOut(15:0)" />
            <blockpin name="ZeroExtOut(15:0)" />
            <blockpin name="MemDst1(1:0)" />
            <blockpin name="ShifterOut(15:0)" />
            <blockpin name="IRWrite" />
            <blockpin name="MemRead1" />
            <blockpin name="MemRead2" />
            <blockpin name="MemWrite1" />
            <blockpin name="ResSource" />
            <blockpin name="ResWrite" />
            <blockpin name="MemDst2(1:0)" />
            <blockpin name="MemData(2:0)" />
            <blockpin name="ALUop(3:0)" />
            <blockpin name="ValAOut(15:0)" />
            <blockpin name="ValBOut(15:0)" />
            <blockpin name="RSPOut(15:0)" />
            <blockpin name="isZero" />
            <blockpin name="IROut(15:0)" />
            <blockpin name="PCOut(15:0)" />
            <blockpin name="MSPOut(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="848" y="1936" name="XLXI_1" orien="R0">
        </instance>
    </sheet>
</drawing>