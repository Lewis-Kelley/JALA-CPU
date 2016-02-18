VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL IA(0)
        SIGNAL IB(0)
        SIGNAL IC(0)
        SIGNAL ID(0)
        SIGNAL Sel(0)
        SIGNAL IA(1)
        SIGNAL IB(1)
        SIGNAL IC(1)
        SIGNAL ID(1)
        SIGNAL IA(2)
        SIGNAL IB(2)
        SIGNAL IC(2)
        SIGNAL ID(2)
        SIGNAL O(2)
        SIGNAL IA(3)
        SIGNAL IB(3)
        SIGNAL IC(3)
        SIGNAL ID(3)
        SIGNAL Sel(1)
        SIGNAL O(3)
        SIGNAL O(1)
        SIGNAL O(0)
        SIGNAL IA(3:0)
        SIGNAL IB(3:0)
        SIGNAL IC(3:0)
        SIGNAL ID(3:0)
        SIGNAL Sel(1:0)
        SIGNAL V
        SIGNAL O(3:0)
        PORT Input IA(3:0)
        PORT Input IB(3:0)
        PORT Input IC(3:0)
        PORT Input ID(3:0)
        PORT Input Sel(1:0)
        PORT Output O(3:0)
        BEGIN BLOCKDEF m4_1e
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -416 96 -416 
            LINE N 0 -352 96 -352 
            LINE N 0 -288 96 -288 
            LINE N 0 -224 96 -224 
            LINE N 0 -32 96 -32 
            LINE N 320 -320 256 -320 
            LINE N 0 -160 96 -160 
            LINE N 0 -96 96 -96 
            LINE N 176 -96 96 -96 
            LINE N 176 -208 176 -96 
            LINE N 224 -32 96 -32 
            LINE N 224 -216 224 -32 
            LINE N 256 -224 96 -192 
            LINE N 256 -416 256 -224 
            LINE N 96 -448 256 -416 
            LINE N 96 -192 96 -448 
            LINE N 128 -160 96 -160 
            LINE N 128 -200 128 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 m4_1e
            PIN D0 IA(0)
            PIN D1 IB(0)
            PIN D2 IC(0)
            PIN D3 ID(0)
            PIN E V
            PIN S0 Sel(0)
            PIN S1 Sel(1)
            PIN O O(0)
        END BLOCK
        BEGIN BLOCK XLXI_2 m4_1e
            PIN D0 IA(1)
            PIN D1 IB(1)
            PIN D2 IC(1)
            PIN D3 ID(1)
            PIN E V
            PIN S0 Sel(0)
            PIN S1 Sel(1)
            PIN O O(1)
        END BLOCK
        BEGIN BLOCK XLXI_3 m4_1e
            PIN D0 IA(2)
            PIN D1 IB(2)
            PIN D2 IC(2)
            PIN D3 ID(2)
            PIN E V
            PIN S0 Sel(0)
            PIN S1 Sel(1)
            PIN O O(2)
        END BLOCK
        BEGIN BLOCK XLXI_4 m4_1e
            PIN D0 IA(3)
            PIN D1 IB(3)
            PIN D2 IC(3)
            PIN D3 ID(3)
            PIN E V
            PIN S0 Sel(0)
            PIN S1 Sel(1)
            PIN O O(3)
        END BLOCK
        BEGIN BLOCK XLXI_13 vcc
            PIN P V
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1360 656 R0
        INSTANCE XLXI_2 1360 1216 R0
        INSTANCE XLXI_3 1360 1856 R0
        INSTANCE XLXI_4 1360 2496 R0
        BEGIN BRANCH IA(0)
            WIRE 1280 240 1360 240
            BEGIN DISPLAY 1280 240 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IB(0)
            WIRE 1280 304 1360 304
            BEGIN DISPLAY 1280 304 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IC(0)
            WIRE 1280 368 1360 368
            BEGIN DISPLAY 1280 368 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID(0)
            WIRE 1280 432 1360 432
            BEGIN DISPLAY 1280 432 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(0)
            WIRE 1280 496 1360 496
            BEGIN DISPLAY 1280 496 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(1)
            WIRE 1280 560 1360 560
            BEGIN DISPLAY 1280 560 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH V
            WIRE 1280 624 1360 624
            BEGIN DISPLAY 1280 624 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IA(1)
            WIRE 1280 800 1360 800
            BEGIN DISPLAY 1280 800 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IB(1)
            WIRE 1280 864 1360 864
            BEGIN DISPLAY 1280 864 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IC(1)
            WIRE 1280 928 1360 928
            BEGIN DISPLAY 1280 928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID(1)
            WIRE 1280 992 1360 992
            BEGIN DISPLAY 1280 992 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(0)
            WIRE 1280 1056 1360 1056
            BEGIN DISPLAY 1280 1056 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(1)
            WIRE 1280 1120 1360 1120
            BEGIN DISPLAY 1280 1120 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH V
            WIRE 1280 1184 1360 1184
            BEGIN DISPLAY 1280 1184 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IA(2)
            WIRE 1280 1440 1360 1440
            BEGIN DISPLAY 1280 1440 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IB(2)
            WIRE 1280 1504 1360 1504
            BEGIN DISPLAY 1280 1504 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IC(2)
            WIRE 1280 1568 1360 1568
            BEGIN DISPLAY 1280 1568 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID(2)
            WIRE 1280 1632 1360 1632
            BEGIN DISPLAY 1280 1632 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(0)
            WIRE 1280 1696 1360 1696
            BEGIN DISPLAY 1280 1696 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(1)
            WIRE 1280 1760 1360 1760
            BEGIN DISPLAY 1280 1760 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH V
            WIRE 1280 1824 1360 1824
            BEGIN DISPLAY 1280 1824 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(2)
            WIRE 1680 1536 1760 1536
            BEGIN DISPLAY 1760 1536 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IA(3)
            WIRE 1280 2080 1360 2080
            BEGIN DISPLAY 1280 2080 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IB(3)
            WIRE 1280 2144 1360 2144
            BEGIN DISPLAY 1280 2144 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IC(3)
            WIRE 1280 2208 1360 2208
            BEGIN DISPLAY 1280 2208 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID(3)
            WIRE 1280 2272 1360 2272
            BEGIN DISPLAY 1280 2272 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(0)
            WIRE 1280 2336 1360 2336
            BEGIN DISPLAY 1280 2336 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sel(1)
            WIRE 1280 2400 1360 2400
            BEGIN DISPLAY 1280 2400 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH V
            WIRE 1280 2464 1360 2464
            BEGIN DISPLAY 1280 2464 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(3)
            WIRE 1680 2176 1760 2176
            BEGIN DISPLAY 1760 2176 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(1)
            WIRE 1680 896 1760 896
            BEGIN DISPLAY 1760 896 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(0)
            WIRE 1680 336 1760 336
            BEGIN DISPLAY 1760 336 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IA(3:0)
            WIRE 320 240 480 240
        END BRANCH
        BEGIN BRANCH IB(3:0)
            WIRE 320 400 480 400
        END BRANCH
        BEGIN BRANCH IC(3:0)
            WIRE 320 560 480 560
        END BRANCH
        BEGIN BRANCH ID(3:0)
            WIRE 320 720 480 720
        END BRANCH
        IOMARKER 320 240 IA(3:0) R180 28
        IOMARKER 320 400 IB(3:0) R180 28
        IOMARKER 320 560 IC(3:0) R180 28
        IOMARKER 320 720 ID(3:0) R180 28
        BEGIN BRANCH Sel(1:0)
            WIRE 320 880 480 880
        END BRANCH
        IOMARKER 320 880 Sel(1:0) R180 28
        INSTANCE XLXI_13 176 1104 R0
        BEGIN BRANCH V
            WIRE 240 1104 240 1120
            WIRE 240 1120 320 1120
            BEGIN DISPLAY 320 1120 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(3:0)
            WIRE 2080 320 2240 320
        END BRANCH
        IOMARKER 2240 320 O(3:0) R0 28
    END SHEET
END SCHEMATIC
