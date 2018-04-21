<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SDA" />
        <signal name="SCL" />
        <signal name="XLXN_95(7:0)" />
        <signal name="XLXN_21" />
        <signal name="XLXN_23" />
        <signal name="XLXN_51(7:0)" />
        <signal name="XLXN_25" />
        <signal name="XLXN_53" />
        <signal name="LED7" />
        <signal name="XLXN_12" />
        <signal name="BUTTON" />
        <signal name="CLK" />
        <signal name="Byte(7:0)" />
        <signal name="XLXN_140" />
        <signal name="XLXN_141" />
        <signal name="ROT_B" />
        <signal name="ROT_A" />
        <signal name="SW(3:0)" />
        <signal name="Byte(7:4)" />
        <signal name="Byte(3:0)" />
        <signal name="LED0" />
        <signal name="XLXN_156" />
        <port polarity="BiDirectional" name="SDA" />
        <port polarity="BiDirectional" name="SCL" />
        <port polarity="Output" name="LED7" />
        <port polarity="Input" name="BUTTON" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="ROT_B" />
        <port polarity="Input" name="ROT_A" />
        <port polarity="Input" name="SW(3:0)" />
        <port polarity="Output" name="LED0" />
        <blockdef name="I2C_Master">
            <timestamp>2018-3-21T16:54:46</timestamp>
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
        <blockdef name="ifd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-140" x1="84" />
            <line x2="84" y1="-116" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
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
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
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
        <blockdef name="RotaryEnc">
            <timestamp>2008-8-28T17:16:17</timestamp>
            <rect width="256" x="64" y="-256" height="192" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="constant" name="XLXI_7">
            <attr value="78" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_95(7:0)" name="O" />
        </block>
        <block symbolname="I2C_Master" name="XLXI_1">
            <blockpin signalname="CLK" name="Clk" />
            <blockpin name="FIFO_Pop" />
            <blockpin signalname="XLXN_12" name="Reset" />
            <blockpin signalname="XLXN_21" name="Go" />
            <blockpin signalname="XLXN_23" name="FIFO_Push" />
            <blockpin signalname="XLXN_95(7:0)" name="Address(7:0)" />
            <blockpin signalname="XLXN_51(7:0)" name="FIFO_DI(7:0)" />
            <blockpin name="ReadCnt(3:0)" />
            <blockpin signalname="SDA" name="SDA" />
            <blockpin signalname="SCL" name="SCL" />
            <blockpin signalname="LED7" name="NACK" />
            <blockpin signalname="XLXN_25" name="Busy" />
            <blockpin name="FIFO_Empty" />
            <blockpin signalname="XLXN_53" name="FIFO_Full" />
            <blockpin name="FIFO_DO(7:0)" />
        </block>
        <block symbolname="OLED_Ctrl" name="XLXI_8">
            <blockpin signalname="CLK" name="Clk" />
            <blockpin signalname="XLXN_12" name="Reset" />
            <blockpin signalname="XLXN_156" name="WriteByte" />
            <blockpin signalname="XLXN_53" name="I2C_FIFO_Full" />
            <blockpin signalname="XLXN_25" name="I2C_Busy" />
            <blockpin signalname="Byte(7:0)" name="Byte(7:0)" />
            <blockpin signalname="LED0" name="Busy" />
            <blockpin signalname="XLXN_21" name="I2C_Go" />
            <blockpin signalname="XLXN_23" name="I2C_FIFO_Push" />
            <blockpin signalname="XLXN_51(7:0)" name="I2C_FIFO_DI(7:0)" />
        </block>
        <block symbolname="ifd" name="XLXI_3">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="BUTTON" name="D" />
            <blockpin signalname="XLXN_12" name="Q" />
        </block>
        <block symbolname="or2" name="XLXI_23">
            <blockpin signalname="XLXN_141" name="I0" />
            <blockpin signalname="XLXN_140" name="I1" />
            <blockpin signalname="XLXN_156" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_9(3:0)">
            <blockpin signalname="SW(3:0)" name="I" />
            <blockpin signalname="Byte(7:4)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_10(3:0)">
            <blockpin signalname="SW(3:0)" name="I" />
            <blockpin signalname="Byte(3:0)" name="O" />
        </block>
        <block symbolname="RotaryEnc" name="XLXI_24">
            <blockpin signalname="ROT_A" name="ROT_A" />
            <blockpin signalname="ROT_B" name="ROT_B" />
            <blockpin signalname="XLXN_140" name="RotL" />
            <blockpin signalname="XLXN_141" name="RotR" />
            <blockpin signalname="CLK" name="Clk" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="SDA">
            <wire x2="3152" y1="368" y2="368" x1="2576" />
        </branch>
        <branch name="SCL">
            <wire x2="3152" y1="432" y2="432" x1="2576" />
        </branch>
        <branch name="XLXN_95(7:0)">
            <wire x2="2112" y1="432" y2="432" x1="1760" />
        </branch>
        <instance x="1616" y="400" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_21">
            <wire x2="2112" y1="368" y2="368" x1="1888" />
            <wire x2="1888" y1="368" y2="1168" x1="1888" />
            <wire x2="2848" y1="1168" y2="1168" x1="1888" />
            <wire x2="2848" y1="1168" y2="1456" x1="2848" />
            <wire x2="2848" y1="1456" y2="1456" x1="2608" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="1824" y1="656" y2="1216" x1="1824" />
            <wire x2="2784" y1="1216" y2="1216" x1="1824" />
            <wire x2="2784" y1="1216" y2="1520" x1="2784" />
            <wire x2="2112" y1="656" y2="656" x1="1824" />
            <wire x2="2784" y1="1520" y2="1520" x1="2608" />
        </branch>
        <branch name="XLXN_51(7:0)">
            <wire x2="1760" y1="720" y2="1280" x1="1760" />
            <wire x2="2704" y1="1280" y2="1280" x1="1760" />
            <wire x2="2704" y1="1280" y2="1584" x1="2704" />
            <wire x2="2112" y1="720" y2="720" x1="1760" />
            <wire x2="2704" y1="1584" y2="1584" x1="2608" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1632" y1="1072" y2="1520" x1="1632" />
            <wire x2="2128" y1="1520" y2="1520" x1="1632" />
            <wire x2="2736" y1="1072" y2="1072" x1="1632" />
            <wire x2="2736" y1="816" y2="816" x1="2576" />
            <wire x2="2736" y1="816" y2="1072" x1="2736" />
        </branch>
        <branch name="XLXN_53">
            <wire x2="2800" y1="1008" y2="1008" x1="1696" />
            <wire x2="1696" y1="1008" y2="1456" x1="1696" />
            <wire x2="2128" y1="1456" y2="1456" x1="1696" />
            <wire x2="2800" y1="656" y2="656" x1="2576" />
            <wire x2="2800" y1="656" y2="1008" x1="2800" />
        </branch>
        <instance x="2112" y="848" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2128" y="1616" name="XLXI_8" orien="R0">
        </instance>
        <branch name="LED7">
            <wire x2="3136" y1="880" y2="880" x1="2576" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1952" y1="2000" y2="2000" x1="1200" />
            <wire x2="2112" y1="816" y2="816" x1="1952" />
            <wire x2="1952" y1="816" y2="1712" x1="1952" />
            <wire x2="2128" y1="1712" y2="1712" x1="1952" />
            <wire x2="1952" y1="1712" y2="2000" x1="1952" />
        </branch>
        <branch name="BUTTON">
            <wire x2="816" y1="2000" y2="2000" x1="416" />
        </branch>
        <branch name="Byte(7:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1392" type="branch" />
            <wire x2="1504" y1="1280" y2="1344" x1="1504" />
            <wire x2="1504" y1="1344" y2="1392" x1="1504" />
            <wire x2="1504" y1="1392" y2="1440" x1="1504" />
            <wire x2="1504" y1="1440" y2="1584" x1="1504" />
            <wire x2="2128" y1="1584" y2="1584" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="3152" y="368" name="SDA" orien="R0" />
        <iomarker fontsize="28" x="3152" y="432" name="SCL" orien="R0" />
        <iomarker fontsize="28" x="3136" y="880" name="LED7" orien="R0" />
        <iomarker fontsize="28" x="416" y="2000" name="BUTTON" orien="R180" />
        <iomarker fontsize="28" x="432" y="2384" name="CLK" orien="R180" />
        <branch name="XLXN_140">
            <wire x2="1248" y1="1616" y2="1616" x1="1200" />
        </branch>
        <branch name="XLXN_141">
            <wire x2="1248" y1="1680" y2="1680" x1="1200" />
        </branch>
        <instance x="816" y="2256" name="XLXI_3" orien="R0" />
        <branch name="CLK">
            <wire x2="752" y1="2384" y2="2384" x1="432" />
            <wire x2="2000" y1="2384" y2="2384" x1="752" />
            <wire x2="752" y1="1744" y2="2128" x1="752" />
            <wire x2="816" y1="2128" y2="2128" x1="752" />
            <wire x2="752" y1="2128" y2="2384" x1="752" />
            <wire x2="816" y1="1744" y2="1744" x1="752" />
            <wire x2="2112" y1="880" y2="880" x1="2000" />
            <wire x2="2000" y1="880" y2="1776" x1="2000" />
            <wire x2="2128" y1="1776" y2="1776" x1="2000" />
            <wire x2="2000" y1="1776" y2="2384" x1="2000" />
        </branch>
        <branch name="ROT_B">
            <wire x2="816" y1="1680" y2="1680" x1="416" />
        </branch>
        <branch name="ROT_A">
            <wire x2="816" y1="1616" y2="1616" x1="416" />
        </branch>
        <iomarker fontsize="28" x="416" y="1680" name="ROT_B" orien="R180" />
        <iomarker fontsize="28" x="416" y="1616" name="ROT_A" orien="R180" />
        <bustap x2="1408" y1="1440" y2="1440" x1="1504" />
        <bustap x2="1408" y1="1344" y2="1344" x1="1504" />
        <branch name="SW(3:0)">
            <wire x2="1024" y1="1392" y2="1392" x1="400" />
            <wire x2="1024" y1="1392" y2="1440" x1="1024" />
            <wire x2="1056" y1="1440" y2="1440" x1="1024" />
            <wire x2="1056" y1="1344" y2="1344" x1="1024" />
            <wire x2="1024" y1="1344" y2="1392" x1="1024" />
        </branch>
        <branch name="Byte(7:4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1344" type="branch" />
            <wire x2="1344" y1="1344" y2="1344" x1="1280" />
            <wire x2="1408" y1="1344" y2="1344" x1="1344" />
        </branch>
        <branch name="Byte(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1440" type="branch" />
            <wire x2="1344" y1="1440" y2="1440" x1="1280" />
            <wire x2="1408" y1="1440" y2="1440" x1="1344" />
        </branch>
        <instance x="1056" y="1376" name="XLXI_9(3:0)" orien="R0" />
        <instance x="1056" y="1472" name="XLXI_10(3:0)" orien="R0" />
        <iomarker fontsize="28" x="400" y="1392" name="SW(3:0)" orien="R180" />
        <instance x="1248" y="1744" name="XLXI_23" orien="R0" />
        <instance x="816" y="1840" name="XLXI_24" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3136" y="1712" name="LED0" orien="R0" />
        <branch name="LED0">
            <wire x2="2800" y1="1712" y2="1712" x1="2608" />
            <wire x2="3136" y1="1712" y2="1712" x1="2800" />
        </branch>
        <branch name="XLXN_156">
            <wire x2="2128" y1="1648" y2="1648" x1="1504" />
        </branch>
        <text style="fontsize:64;fontname:Arial" x="2604" y="2256">Test_OLED128x64</text>
        <text style="fontsize:40;fontname:Arial" x="2608" y="2336">J.Sugier 2017</text>
    </sheet>
</drawing>