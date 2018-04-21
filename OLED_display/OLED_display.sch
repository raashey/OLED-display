<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RST1" />
        <signal name="SDA" />
        <signal name="SCL" />
        <signal name="LED7" />
        <signal name="I2C_GO" />
        <signal name="XLXN_18(7:0)" />
        <signal name="I2C_FIFO_DI(7:0)" />
        <signal name="I2C_FIFO_PUSH" />
        <signal name="I2C_BUSY" />
        <signal name="I2C_FIFO_FULL" />
        <signal name="PRINT" />
        <signal name="ADDR(6:0)" />
        <signal name="EN_ROM" />
        <signal name="OLED_BUSY" />
        <signal name="CLK" />
        <signal name="EN_PRINTER" />
        <signal name="DIGIT(3:0)" />
        <signal name="PRINTER_BUSY" />
        <signal name="RST" />
        <signal name="BUTTON" />
        <signal name="XLXN_20(7:0)" />
        <port polarity="BiDirectional" name="SDA" />
        <port polarity="BiDirectional" name="SCL" />
        <port polarity="Output" name="LED7" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="EN_PRINTER" />
        <port polarity="Input" name="RST" />
        <port polarity="Input" name="BUTTON" />
        <blockdef name="I2C_Master">
            <timestamp>2018-3-21T15:54:45</timestamp>
            <rect width="336" x="64" y="-512" height="572" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="464" y1="-480" y2="-480" x1="400" />
            <line x2="464" y1="-416" y2="-416" x1="400" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="464" y1="-256" y2="-256" x1="400" />
            <line x2="464" y1="-192" y2="-192" x1="400" />
            <rect width="64" x="400" y="-140" height="24" />
            <line x2="464" y1="-128" y2="-128" x1="400" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
            <line x2="464" y1="32" y2="32" x1="400" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="OLED_Ctrl">
            <timestamp>2018-4-5T6:24:30</timestamp>
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="352" x="64" y="-192" height="376" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
            <line x2="480" y1="96" y2="96" x1="416" />
        </blockdef>
        <blockdef name="character_ROM">
            <timestamp>2018-3-22T0:49:18</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="digit_transmitter">
            <timestamp>2018-4-5T6:46:24</timestamp>
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <rect width="336" x="64" y="-256" height="384" />
        </blockdef>
        <blockdef name="digit_printer">
            <timestamp>2018-4-5T7:24:28</timestamp>
            <line x2="384" y1="160" y2="160" x1="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-320" height="512" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
        </blockdef>
        <blockdef name="ifd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-140" x1="84" />
            <line x2="84" y1="-116" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
        </blockdef>
        <block symbolname="I2C_Master" name="IM0">
            <blockpin signalname="CLK" name="Clk" />
            <blockpin name="FIFO_Pop" />
            <blockpin signalname="RST1" name="Reset" />
            <blockpin signalname="I2C_GO" name="Go" />
            <blockpin signalname="I2C_FIFO_PUSH" name="FIFO_Push" />
            <blockpin signalname="XLXN_18(7:0)" name="Address(7:0)" />
            <blockpin signalname="I2C_FIFO_DI(7:0)" name="FIFO_DI(7:0)" />
            <blockpin name="ReadCnt(3:0)" />
            <blockpin signalname="SDA" name="SDA" />
            <blockpin signalname="SCL" name="SCL" />
            <blockpin signalname="LED7" name="NACK" />
            <blockpin signalname="I2C_BUSY" name="Busy" />
            <blockpin name="FIFO_Empty" />
            <blockpin signalname="I2C_FIFO_FULL" name="FIFO_Full" />
            <blockpin name="FIFO_DO(7:0)" />
        </block>
        <block symbolname="OLED_Ctrl" name="OC0">
            <blockpin signalname="CLK" name="Clk" />
            <blockpin signalname="RST1" name="Reset" />
            <blockpin signalname="PRINT" name="WriteByte" />
            <blockpin signalname="I2C_FIFO_FULL" name="I2C_FIFO_Full" />
            <blockpin signalname="I2C_BUSY" name="I2C_Busy" />
            <blockpin signalname="XLXN_20(7:0)" name="Byte(7:0)" />
            <blockpin signalname="OLED_BUSY" name="Busy" />
            <blockpin signalname="I2C_GO" name="I2C_Go" />
            <blockpin signalname="I2C_FIFO_PUSH" name="I2C_FIFO_Push" />
            <blockpin signalname="I2C_FIFO_DI(7:0)" name="I2C_FIFO_DI(7:0)" />
        </block>
        <block symbolname="constant" name="XLXI_4">
            <attr value="78" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_18(7:0)" name="O" />
        </block>
        <block symbolname="character_ROM" name="cR0">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="EN_ROM" name="EN" />
            <blockpin signalname="ADDR(6:0)" name="ADDR(6:0)" />
            <blockpin signalname="XLXN_20(7:0)" name="DATA(7:0)" />
        </block>
        <block symbolname="digit_transmitter" name="dt0">
            <blockpin signalname="PRINTER_BUSY" name="PRINTER_BUSY" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RST1" name="RST" />
            <blockpin signalname="BUTTON" name="BUTTON" />
            <blockpin signalname="EN_PRINTER" name="EN_PRINTER" />
            <blockpin signalname="DIGIT(3:0)" name="DIGIT(3:0)" />
        </block>
        <block symbolname="digit_printer" name="dp0">
            <blockpin signalname="EN_PRINTER" name="EN" />
            <blockpin signalname="OLED_BUSY" name="OLED_BUSY" />
            <blockpin signalname="RST1" name="RST" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="DIGIT(3:0)" name="DIGIT(3:0)" />
            <blockpin name="DATA_IN(7:0)" />
            <blockpin signalname="PRINT" name="PRINT" />
            <blockpin signalname="PRINTER_BUSY" name="BUSY" />
            <blockpin signalname="EN_ROM" name="EN_ROM" />
            <blockpin signalname="ADDR(6:0)" name="ADDR(6:0)" />
            <blockpin name="DATA_OUT(7:0)" />
        </block>
        <block symbolname="ifd" name="XLXI_5">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="RST" name="D" />
            <blockpin signalname="RST1" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="RST1">
            <wire x2="560" y1="320" y2="320" x1="368" />
            <wire x2="368" y1="320" y2="1408" x1="368" />
            <wire x2="976" y1="1408" y2="1408" x1="368" />
            <wire x2="1984" y1="1408" y2="1408" x1="976" />
            <wire x2="976" y1="1056" y2="1056" x1="864" />
            <wire x2="976" y1="1056" y2="1408" x1="976" />
            <wire x2="1248" y1="512" y2="512" x1="976" />
            <wire x2="976" y1="512" y2="1056" x1="976" />
            <wire x2="1984" y1="704" y2="1120" x1="1984" />
            <wire x2="2640" y1="1120" y2="1120" x1="1984" />
            <wire x2="1984" y1="1120" y2="1408" x1="1984" />
            <wire x2="2048" y1="704" y2="704" x1="1984" />
            <wire x2="2640" y1="672" y2="1120" x1="2640" />
            <wire x2="2704" y1="672" y2="672" x1="2640" />
        </branch>
        <instance x="2704" y="704" name="IM0" orien="R0">
        </instance>
        <instance x="2048" y="608" name="OC0" orien="R0">
        </instance>
        <branch name="I2C_GO">
            <wire x2="2528" y1="224" y2="448" x1="2528" />
            <wire x2="2704" y1="224" y2="224" x1="2528" />
        </branch>
        <branch name="XLXN_18(7:0)">
            <wire x2="2624" y1="160" y2="160" x1="2496" />
            <wire x2="2624" y1="160" y2="288" x1="2624" />
            <wire x2="2704" y1="288" y2="288" x1="2624" />
        </branch>
        <branch name="I2C_FIFO_DI(7:0)">
            <wire x2="2704" y1="576" y2="576" x1="2528" />
        </branch>
        <branch name="SDA">
            <wire x2="3184" y1="224" y2="224" x1="3168" />
        </branch>
        <branch name="SCL">
            <wire x2="3184" y1="288" y2="288" x1="3168" />
        </branch>
        <branch name="LED7">
            <wire x2="3312" y1="736" y2="736" x1="3168" />
        </branch>
        <branch name="I2C_FIFO_PUSH">
            <wire x2="2704" y1="512" y2="512" x1="2528" />
        </branch>
        <branch name="I2C_BUSY">
            <wire x2="2048" y1="512" y2="512" x1="1920" />
            <wire x2="1920" y1="512" y2="864" x1="1920" />
            <wire x2="3184" y1="864" y2="864" x1="1920" />
            <wire x2="3184" y1="672" y2="672" x1="3168" />
            <wire x2="3184" y1="672" y2="864" x1="3184" />
        </branch>
        <branch name="I2C_FIFO_FULL">
            <wire x2="1856" y1="448" y2="928" x1="1856" />
            <wire x2="3248" y1="928" y2="928" x1="1856" />
            <wire x2="2048" y1="448" y2="448" x1="1856" />
            <wire x2="3248" y1="512" y2="512" x1="3168" />
            <wire x2="3248" y1="512" y2="928" x1="3248" />
        </branch>
        <instance x="2352" y="128" name="XLXI_4" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3184" y="224" name="SDA" orien="R0" />
        <iomarker fontsize="28" x="3184" y="288" name="SCL" orien="R0" />
        <branch name="PRINT">
            <wire x2="2048" y1="640" y2="640" x1="1632" />
        </branch>
        <branch name="ADDR(6:0)">
            <wire x2="1168" y1="1248" y2="1344" x1="1168" />
            <wire x2="1696" y1="1344" y2="1344" x1="1168" />
            <wire x2="1248" y1="1248" y2="1248" x1="1168" />
            <wire x2="1696" y1="448" y2="448" x1="1632" />
            <wire x2="1696" y1="448" y2="1344" x1="1696" />
        </branch>
        <branch name="OLED_BUSY">
            <wire x2="1248" y1="320" y2="320" x1="1104" />
            <wire x2="1104" y1="320" y2="992" x1="1104" />
            <wire x2="2528" y1="992" y2="992" x1="1104" />
            <wire x2="2528" y1="704" y2="992" x1="2528" />
        </branch>
        <branch name="CLK">
            <wire x2="432" y1="1472" y2="1472" x1="128" />
            <wire x2="2048" y1="1472" y2="1472" x1="432" />
            <wire x2="560" y1="256" y2="256" x1="432" />
            <wire x2="432" y1="256" y2="576" x1="432" />
            <wire x2="1040" y1="576" y2="576" x1="432" />
            <wire x2="1248" y1="576" y2="576" x1="1040" />
            <wire x2="1040" y1="576" y2="1120" x1="1040" />
            <wire x2="1248" y1="1120" y2="1120" x1="1040" />
            <wire x2="432" y1="576" y2="1184" x1="432" />
            <wire x2="432" y1="1184" y2="1472" x1="432" />
            <wire x2="480" y1="1184" y2="1184" x1="432" />
            <wire x2="2048" y1="768" y2="1184" x1="2048" />
            <wire x2="2704" y1="1184" y2="1184" x1="2048" />
            <wire x2="2048" y1="1184" y2="1472" x1="2048" />
            <wire x2="2704" y1="736" y2="1184" x1="2704" />
        </branch>
        <instance x="1248" y="1280" name="cR0" orien="R0">
        </instance>
        <branch name="EN_ROM">
            <wire x2="1168" y1="928" y2="1184" x1="1168" />
            <wire x2="1248" y1="1184" y2="1184" x1="1168" />
            <wire x2="1632" y1="928" y2="928" x1="1168" />
            <wire x2="1632" y1="704" y2="928" x1="1632" />
        </branch>
        <branch name="EN_PRINTER">
            <wire x2="1168" y1="256" y2="256" x1="1024" />
            <wire x2="1248" y1="256" y2="256" x1="1168" />
            <wire x2="1168" y1="160" y2="256" x1="1168" />
        </branch>
        <branch name="DIGIT(3:0)">
            <wire x2="1248" y1="384" y2="384" x1="1024" />
        </branch>
        <branch name="PRINTER_BUSY">
            <wire x2="560" y1="192" y2="192" x1="496" />
            <wire x2="496" y1="192" y2="800" x1="496" />
            <wire x2="1760" y1="800" y2="800" x1="496" />
            <wire x2="1760" y1="320" y2="320" x1="1632" />
            <wire x2="1760" y1="320" y2="800" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="128" y="1472" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="3312" y="736" name="LED7" orien="R0" />
        <instance x="560" y="416" name="dt0" orien="R0">
        </instance>
        <instance x="1248" y="544" name="dp0" orien="R0">
        </instance>
        <instance x="480" y="1312" name="XLXI_5" orien="R0" />
        <branch name="RST">
            <wire x2="480" y1="1056" y2="1056" x1="128" />
        </branch>
        <iomarker fontsize="28" x="128" y="1056" name="RST" orien="R180" />
        <branch name="BUTTON">
            <wire x2="560" y1="512" y2="512" x1="224" />
        </branch>
        <iomarker fontsize="28" x="224" y="512" name="BUTTON" orien="R180" />
        <iomarker fontsize="28" x="1168" y="160" name="EN_PRINTER" orien="R270" />
        <branch name="XLXN_20(7:0)">
            <wire x2="1808" y1="1120" y2="1120" x1="1632" />
            <wire x2="1808" y1="576" y2="1120" x1="1808" />
            <wire x2="2048" y1="576" y2="576" x1="1808" />
        </branch>
    </sheet>
</drawing>