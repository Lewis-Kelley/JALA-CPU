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
        SIGNAL IA(1)
        SIGNAL IB(1)
        SIGNAL IA(2)
        SIGNAL IB(2)
        SIGNAL IA(3)
        SIGNAL IB(3)
        SIGNAL Sel
        SIGNAL O(0)
        SIGNAL O(1)
        SIGNAL O(2)
        SIGNAL O(3)
        SIGNAL IA(3:0)
        SIGNAL IB(3:0)
        SIGNAL O(3:0)
        PORT Input Sel
        PORT Input IA(3:0)
        PORT Input IB(3:0)
        PORT Output O(3:0)
        BEGIN BLOCKDEF m2_1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 96 -64 96 -192 
            LINE N 256 -96 96 -64 
            LINE N 256 -160 256 -96 
            LINE N 96 -192 256 -160 
            LINE N 176 -32 96 -32 
            LINE N 176 -80 176 -32 
            LINE N 0 -32 96 -32 
            LINE N 320 -128 256 -128 
            LINE N 0 -96 96 -96 
            LINE N 0 -160 96 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 m2_1
            PIN D0 IA(0)
            PIN D1 IB(0)
            PIN S0 Sel
            PIN O O(0)
        END BLOCK
        BEGIN BLOCK XLXI_2 m2_1
            PIN D0 IA(1)
            PIN D1 IB(1)
            PIN S0 Sel
            PIN O O(1)
        END BLOCK
        BEGIN BLOCK XLXI_3 m2_1
            PIN D0 IA(2)
            PIN D1 IB(2)
            PIN S0 Sel
            PIN O O(2)
        END BLOCK
        BEGIN BLOCK XLXI_4 m2_1
            PIN D0 IA(3)
            PIN D1 IB(3)
            PIN S0 Sel
            PIN O O(3)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1040 320 R0
        INSTANCE XLXI_2 1040 560 R0
        INSTANCE XLXI_3 1040 800 R0
        INSTANCE XLXI_4 1040 1040 R0
        BEGIN BRANCH IA(0)
            WIRE 960 160 1040 160
            BEGIN DISPLAY 960 160 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IB(0)
            WIRE 960 224 1040 224
            BEGIN DISPLAY 960 224 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IA(1)
            WIRE 960 400 1040 400
            BEGIN DISPLAY 960 400 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IB(1)
            WIRE 960 464 1040 464
            BEGIN DISPLAY 960 464 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IA(2)
            WIRE 960 640 1040 640
            BEGIN DISPLAY 960 640 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IB(2)
            WIRE 960 704 1040 704
            BEGIN DISPLAY 960 704 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IA(3)
            WIRE 960 880 1040 880
            BEGIN DISPLAY 960 880 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IB(3)
            WIRE 960 944 1040 944
            BEGIN DISPLAY 960 944 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(0)
            WIRE 1360 192 1440 192
            BEGIN DISPLAY 1440 192 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(1)
            WIRE 1360 432 1440 432
            BEGIN DISPLAY 1440 432 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(2)
            WIRE 1360 672 1440 672
            BEGIN DISPLAY 1440 672 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH O(3)
            WIRE 1360 912 1440 912
            BEGIN DISPLAY 1440 912 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IA(3:0)
            WIRE 480 160 640 160
        END BRANCH
        BEGIN BRANCH IB(3:0)
            WIRE 480 320 640 320
        END BRANCH
        IOMARKER 480 160 IA(3:0) R180 28
        IOMARKER 480 320 IB(3:0) R180 28
        BEGIN BRANCH O(3:0)
            WIRE 1760 240 1920 240
        END BRANCH
        IOMARKER 1920 240 O(3:0) R0 28
        BEGIN BRANCH Sel
            WIRE 880 1008 1008 1008
            WIRE 1008 1008 1040 1008
            WIRE 1008 288 1040 288
            WIRE 1008 288 1008 528
            WIRE 1008 528 1040 528
            WIRE 1008 528 1008 768
            WIRE 1008 768 1040 768
            WIRE 1008 768 1008 1008
        END BRANCH
        IOMARKER 880 1008 Sel R180 28
    END SHEET
END SCHEMATIC
