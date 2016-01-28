VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL co
        SIGNAL ci
        SIGNAL b
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL a
        SIGNAL anot
        SIGNAL bnot
        SIGNAL cinot
        SIGNAL r
        PORT Output co
        PORT Input ci
        PORT Input b
        PORT Input a
        PORT Output r
        BEGIN BLOCKDEF and2
            TIMESTAMP 2001 2 2 12 25 36
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF or3
            TIMESTAMP 2001 2 2 12 25 36
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 192 -128 
            ARC N 28 -256 204 -80 112 -80 192 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 112 -80 48 -80 
            ARC N 28 -176 204 0 192 -128 112 -176 
            LINE N 112 -176 48 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF and3
            TIMESTAMP 2001 2 2 12 25 36
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -176 144 -176 
            LINE N 144 -80 64 -80 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 64 -64 64 -192 
        END BLOCKDEF
        BEGIN BLOCKDEF or4
            TIMESTAMP 2001 2 2 12 25 36
            LINE N 0 -64 48 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 48 -256 
            LINE N 256 -160 192 -160 
            ARC N 28 -208 204 -32 192 -160 112 -208 
            LINE N 112 -208 48 -208 
            LINE N 112 -112 48 -112 
            LINE N 48 -256 48 -208 
            LINE N 48 -64 48 -112 
            ARC N -40 -216 72 -104 48 -112 48 -208 
            ARC N 28 -288 204 -112 112 -112 192 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF inv
            TIMESTAMP 2001 2 2 12 25 36
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 and2
            PIN I0 a
            PIN I1 ci
            PIN O XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_2 and2
            PIN I0 b
            PIN I1 ci
            PIN O XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0 b
            PIN I1 a
            PIN O XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_4 or3
            PIN I0 XLXN_3
            PIN I1 XLXN_2
            PIN I2 XLXN_1
            PIN O co
        END BLOCK
        BEGIN BLOCK XLXI_5 and3
            PIN I0 b
            PIN I1 a
            PIN I2 ci
            PIN O XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_6 and3
            PIN I0 bnot
            PIN I1 anot
            PIN I2 ci
            PIN O XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_7 and3
            PIN I0 bnot
            PIN I1 a
            PIN I2 cinot
            PIN O XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_8 and3
            PIN I0 b
            PIN I1 anot
            PIN I2 cinot
            PIN O XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_9 or4
            PIN I0 XLXN_14
            PIN I1 XLXN_13
            PIN I2 XLXN_12
            PIN I3 XLXN_11
            PIN O r
        END BLOCK
        BEGIN BLOCK XLXI_33 inv
            PIN I a
            PIN O anot
        END BLOCK
        BEGIN BLOCK XLXI_35 inv
            PIN I ci
            PIN O cinot
        END BLOCK
        BEGIN BLOCK XLXI_34 inv
            PIN I b
            PIN O bnot
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 2720 1760
        INSTANCE XLXI_1 576 288 R0
        INSTANCE XLXI_2 576 448 R0
        INSTANCE XLXI_3 576 608 R0
        INSTANCE XLXI_4 992 480 R0
        BEGIN BRANCH XLXN_1
            WIRE 832 192 992 192
            WIRE 992 192 992 288
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 832 352 992 352
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 832 512 992 512
            WIRE 992 416 992 512
        END BRANCH
        BEGIN BRANCH co
            WIRE 1248 352 1424 352
        END BRANCH
        BEGIN BRANCH ci
            WIRE 240 160 320 160
            WIRE 320 160 320 320
            WIRE 320 320 576 320
            WIRE 320 320 320 752
            WIRE 320 752 1392 752
            WIRE 320 752 320 992
            WIRE 320 992 1392 992
            WIRE 320 992 320 1472
            WIRE 320 1472 736 1472
            WIRE 320 160 576 160
        END BRANCH
        BEGIN BRANCH b
            WIRE 240 544 480 544
            WIRE 480 544 576 544
            WIRE 480 544 480 880
            WIRE 480 880 1392 880
            WIRE 480 880 480 1360
            WIRE 480 1360 480 1600
            WIRE 480 1600 1392 1600
            WIRE 480 1360 656 1360
            WIRE 480 384 576 384
            WIRE 480 384 480 544
        END BRANCH
        INSTANCE XLXI_5 1392 944 R0
        INSTANCE XLXI_6 1392 1184 R0
        INSTANCE XLXI_7 1392 1424 R0
        INSTANCE XLXI_8 1392 1664 R0
        INSTANCE XLXI_9 1952 1312 R0
        BEGIN BRANCH XLXN_11
            WIRE 1648 816 1952 816
            WIRE 1952 816 1952 1056
        END BRANCH
        BEGIN BRANCH XLXN_12
            WIRE 1648 1056 1792 1056
            WIRE 1792 1056 1792 1120
            WIRE 1792 1120 1952 1120
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 1648 1296 1792 1296
            WIRE 1792 1184 1792 1296
            WIRE 1792 1184 1952 1184
        END BRANCH
        BEGIN BRANCH XLXN_14
            WIRE 1648 1536 1952 1536
            WIRE 1952 1248 1952 1536
        END BRANCH
        INSTANCE XLXI_33 576 1088 R0
        INSTANCE XLXI_35 736 1504 R0
        BEGIN BRANCH a
            WIRE 240 224 400 224
            WIRE 400 224 576 224
            WIRE 400 224 400 480
            WIRE 400 480 576 480
            WIRE 400 480 400 816
            WIRE 400 816 1392 816
            WIRE 400 816 400 1056
            WIRE 400 1056 400 1296
            WIRE 400 1296 1392 1296
            WIRE 400 1056 576 1056
        END BRANCH
        BEGIN BRANCH anot
            WIRE 800 1056 1040 1056
            WIRE 1040 1056 1040 1536
            WIRE 1040 1536 1392 1536
            WIRE 1040 1056 1392 1056
        END BRANCH
        BEGIN BRANCH bnot
            WIRE 880 1360 1120 1360
            WIRE 1120 1360 1392 1360
            WIRE 1120 1120 1392 1120
            WIRE 1120 1120 1120 1360
        END BRANCH
        BEGIN BRANCH cinot
            WIRE 960 1232 1392 1232
            WIRE 960 1232 960 1232
            WIRE 960 1232 960 1472
            WIRE 960 1472 1392 1472
            BEGIN DISPLAY 960 1240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_34 656 1392 R0
        BEGIN BRANCH r
            WIRE 2208 1152 2512 1152
        END BRANCH
        IOMARKER 240 160 ci R180 28
        IOMARKER 240 224 a R180 28
        IOMARKER 240 544 b R180 28
        IOMARKER 1424 352 co R0 28
        IOMARKER 2512 1152 r R0 28
    END SHEET
END SCHEMATIC
