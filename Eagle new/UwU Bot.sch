<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="yes" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="frames" urn="urn:adsk.eagle:library:229">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="DINA4_P" urn="urn:adsk.eagle:symbol:13866/1" library_version="1">
<frame x1="0" y1="0" x2="180.34" y2="264.16" columns="4" rows="4" layer="94" border-left="no" border-top="no" border-right="no" border-bottom="no"/>
</symbol>
<symbol name="DOCFIELD" urn="urn:adsk.eagle:symbol:13864/1" library_version="1">
<wire x1="0" y1="0" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="87.63" y2="15.24" width="0.1016" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="71.12" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="0" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="87.63" y1="5.08" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="22.86" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="15.24" width="0.1016" layer="94"/>
<text x="1.27" y="1.27" size="2.54" layer="94">Date:</text>
<text x="12.7" y="1.27" size="2.54" layer="94">&gt;LAST_DATE_TIME</text>
<text x="72.39" y="1.27" size="2.54" layer="94">Sheet:</text>
<text x="86.36" y="1.27" size="2.54" layer="94">&gt;SHEET</text>
<text x="88.9" y="11.43" size="2.54" layer="94">REV:</text>
<text x="1.27" y="19.05" size="2.54" layer="94">TITLE:</text>
<text x="1.27" y="11.43" size="2.54" layer="94">Document Number:</text>
<text x="17.78" y="19.05" size="2.54" layer="94">&gt;DRAWING_NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="DINA4_P" urn="urn:adsk.eagle:component:13925/1" prefix="FRAME" uservalue="yes" library_version="1">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A4, portrait with extra doc field</description>
<gates>
<gate name="G$1" symbol="DINA4_P" x="0" y="0"/>
<gate name="G$2" symbol="DOCFIELD" x="78.74" y="0" addlevel="must"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ESP32-DEVKITC-32D">
<packages>
<package name="MODULE_ESP32-DEVKITC-32D">
<wire x1="-13.95" y1="27.15" x2="13.95" y2="27.15" width="0.127" layer="51"/>
<wire x1="13.95" y1="27.15" x2="13.95" y2="-27.25" width="0.127" layer="51"/>
<wire x1="13.95" y1="-27.25" x2="-13.95" y2="-27.25" width="0.127" layer="51"/>
<wire x1="-13.95" y1="-27.25" x2="-13.95" y2="27.15" width="0.127" layer="51"/>
<wire x1="-13.95" y1="-27.25" x2="-13.95" y2="27.15" width="0.127" layer="21"/>
<wire x1="-13.95" y1="27.15" x2="13.95" y2="27.15" width="0.127" layer="21"/>
<wire x1="13.95" y1="27.15" x2="13.95" y2="-27.25" width="0.127" layer="21"/>
<wire x1="13.95" y1="-27.25" x2="-13.95" y2="-27.25" width="0.127" layer="21"/>
<wire x1="-14.2" y1="27.4" x2="14.2" y2="27.4" width="0.05" layer="39"/>
<wire x1="14.2" y1="27.4" x2="14.2" y2="-27.5" width="0.05" layer="39"/>
<wire x1="14.2" y1="-27.5" x2="-14.2" y2="-27.5" width="0.05" layer="39"/>
<wire x1="-14.2" y1="-27.5" x2="-14.2" y2="27.4" width="0.05" layer="39"/>
<text x="-14.0054" y="27.8108" size="1.270490625" layer="25">&gt;NAME</text>
<text x="-14.0146" y="-28.9302" size="1.27133125" layer="27">&gt;VALUE</text>
<circle x="-14.6" y="19.9" radius="0.14" width="0.28" layer="27"/>
<circle x="-14.6" y="19.9" radius="0.14" width="0.28" layer="51"/>
<pad name="1" x="-12.7" y="19.76" drill="1.04" shape="square"/>
<pad name="2" x="-12.7" y="17.22" drill="1.04"/>
<pad name="19" x="-12.7" y="-25.96" drill="1.04"/>
<pad name="3" x="-12.7" y="14.68" drill="1.04"/>
<pad name="4" x="-12.7" y="12.14" drill="1.04"/>
<pad name="5" x="-12.7" y="9.6" drill="1.04"/>
<pad name="6" x="-12.7" y="7.06" drill="1.04"/>
<pad name="7" x="-12.7" y="4.52" drill="1.04"/>
<pad name="8" x="-12.7" y="1.98" drill="1.04"/>
<pad name="9" x="-12.7" y="-0.56" drill="1.04"/>
<pad name="10" x="-12.7" y="-3.1" drill="1.04"/>
<pad name="11" x="-12.7" y="-5.64" drill="1.04"/>
<pad name="12" x="-12.7" y="-8.18" drill="1.04"/>
<pad name="13" x="-12.7" y="-10.72" drill="1.04"/>
<pad name="14" x="-12.7" y="-13.26" drill="1.04"/>
<pad name="15" x="-12.7" y="-15.8" drill="1.04"/>
<pad name="16" x="-12.7" y="-18.34" drill="1.04"/>
<pad name="17" x="-12.7" y="-20.88" drill="1.04"/>
<pad name="18" x="-12.7" y="-23.42" drill="1.04"/>
<pad name="20" x="12.7" y="19.76" drill="1.04"/>
<pad name="21" x="12.7" y="17.22" drill="1.04"/>
<pad name="22" x="12.7" y="14.68" drill="1.04"/>
<pad name="23" x="12.7" y="12.14" drill="1.04"/>
<pad name="24" x="12.7" y="9.6" drill="1.04"/>
<pad name="25" x="12.7" y="7.06" drill="1.04"/>
<pad name="26" x="12.7" y="4.52" drill="1.04"/>
<pad name="27" x="12.7" y="1.98" drill="1.04"/>
<pad name="28" x="12.7" y="-0.56" drill="1.04"/>
<pad name="29" x="12.7" y="-3.1" drill="1.04"/>
<pad name="30" x="12.7" y="-5.64" drill="1.04"/>
<pad name="31" x="12.7" y="-8.18" drill="1.04"/>
<pad name="32" x="12.7" y="-10.72" drill="1.04"/>
<pad name="33" x="12.7" y="-13.26" drill="1.04"/>
<pad name="34" x="12.7" y="-15.8" drill="1.04"/>
<pad name="35" x="12.7" y="-18.34" drill="1.04"/>
<pad name="36" x="12.7" y="-20.88" drill="1.04"/>
<pad name="37" x="12.7" y="-23.42" drill="1.04"/>
<pad name="38" x="12.7" y="-25.96" drill="1.04"/>
</package>
</packages>
<symbols>
<symbol name="ESP32-DEVKITC-32D">
<wire x1="-15.24" y1="25.4" x2="15.24" y2="25.4" width="0.254" layer="94"/>
<wire x1="15.24" y1="25.4" x2="15.24" y2="-25.4" width="0.254" layer="94"/>
<wire x1="15.24" y1="-25.4" x2="-15.24" y2="-25.4" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-25.4" x2="-15.24" y2="25.4" width="0.254" layer="94"/>
<text x="-15.2572" y="26.0643" size="1.78" layer="95">&gt;NAME</text>
<text x="-15.2563" y="-27.9698" size="1.7799" layer="96">&gt;VALUE</text>
<pin name="3V3" x="-20.32" y="22.86" length="middle" direction="pwr"/>
<pin name="EN" x="-20.32" y="20.32" length="middle" direction="in"/>
<pin name="SENSOR_VP" x="-20.32" y="17.78" length="middle" direction="in"/>
<pin name="SENSOR_VN" x="-20.32" y="15.24" length="middle" direction="in"/>
<pin name="IO34" x="-20.32" y="12.7" length="middle"/>
<pin name="IO35" x="-20.32" y="10.16" length="middle"/>
<pin name="IO32" x="-20.32" y="7.62" length="middle"/>
<pin name="IO33" x="-20.32" y="5.08" length="middle"/>
<pin name="IO25" x="-20.32" y="2.54" length="middle"/>
<pin name="IO26" x="-20.32" y="0" length="middle"/>
<pin name="IO27" x="-20.32" y="-2.54" length="middle"/>
<pin name="IO14" x="-20.32" y="-5.08" length="middle"/>
<pin name="IO12" x="-20.32" y="-7.62" length="middle"/>
<pin name="GND1" x="-20.32" y="-10.16" length="middle" direction="pwr"/>
<pin name="IO13" x="-20.32" y="-12.7" length="middle"/>
<pin name="SD2" x="-20.32" y="-15.24" length="middle"/>
<pin name="SD3" x="-20.32" y="-17.78" length="middle"/>
<pin name="CMD" x="-20.32" y="-20.32" length="middle"/>
<pin name="EXT_5V" x="-20.32" y="-22.86" length="middle" direction="pwr"/>
<pin name="CLK" x="20.32" y="-22.86" length="middle" direction="in" function="clk" rot="R180"/>
<pin name="SD0" x="20.32" y="-20.32" length="middle" rot="R180"/>
<pin name="SD1" x="20.32" y="-17.78" length="middle" rot="R180"/>
<pin name="IO15" x="20.32" y="-15.24" length="middle" rot="R180"/>
<pin name="IO2" x="20.32" y="-12.7" length="middle" rot="R180"/>
<pin name="IO0" x="20.32" y="-10.16" length="middle" rot="R180"/>
<pin name="IO4" x="20.32" y="-7.62" length="middle" rot="R180"/>
<pin name="IO16" x="20.32" y="-5.08" length="middle" rot="R180"/>
<pin name="IO17" x="20.32" y="-2.54" length="middle" rot="R180"/>
<pin name="IO5" x="20.32" y="0" length="middle" rot="R180"/>
<pin name="IO18" x="20.32" y="2.54" length="middle" rot="R180"/>
<pin name="IO19" x="20.32" y="5.08" length="middle" rot="R180"/>
<pin name="GND2" x="20.32" y="7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="IO21" x="20.32" y="10.16" length="middle" rot="R180"/>
<pin name="RXD0" x="20.32" y="12.7" length="middle" direction="in" rot="R180"/>
<pin name="TXD0" x="20.32" y="15.24" length="middle" direction="out" rot="R180"/>
<pin name="IO22" x="20.32" y="17.78" length="middle" rot="R180"/>
<pin name="IO23" x="20.32" y="20.32" length="middle" rot="R180"/>
<pin name="GND3" x="20.32" y="22.86" length="middle" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ESP32-DEVKITC-32D" prefix="U">
<description>Eval Board For Esp-Wroom-32 &lt;a href="https://pricing.snapeda.com/parts/ESP32-DEVKITC-32D/Espressif%20Systems/view-part?ref=eda"&gt;Check availability&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="ESP32-DEVKITC-32D" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MODULE_ESP32-DEVKITC-32D">
<connects>
<connect gate="G$1" pin="3V3" pad="1"/>
<connect gate="G$1" pin="CLK" pad="38"/>
<connect gate="G$1" pin="CMD" pad="18"/>
<connect gate="G$1" pin="EN" pad="2"/>
<connect gate="G$1" pin="EXT_5V" pad="19"/>
<connect gate="G$1" pin="GND1" pad="14"/>
<connect gate="G$1" pin="GND2" pad="26"/>
<connect gate="G$1" pin="GND3" pad="20"/>
<connect gate="G$1" pin="IO0" pad="33"/>
<connect gate="G$1" pin="IO12" pad="13"/>
<connect gate="G$1" pin="IO13" pad="15"/>
<connect gate="G$1" pin="IO14" pad="12"/>
<connect gate="G$1" pin="IO15" pad="35"/>
<connect gate="G$1" pin="IO16" pad="31"/>
<connect gate="G$1" pin="IO17" pad="30"/>
<connect gate="G$1" pin="IO18" pad="28"/>
<connect gate="G$1" pin="IO19" pad="27"/>
<connect gate="G$1" pin="IO2" pad="34"/>
<connect gate="G$1" pin="IO21" pad="25"/>
<connect gate="G$1" pin="IO22" pad="22"/>
<connect gate="G$1" pin="IO23" pad="21"/>
<connect gate="G$1" pin="IO25" pad="9"/>
<connect gate="G$1" pin="IO26" pad="10"/>
<connect gate="G$1" pin="IO27" pad="11"/>
<connect gate="G$1" pin="IO32" pad="7"/>
<connect gate="G$1" pin="IO33" pad="8"/>
<connect gate="G$1" pin="IO34" pad="5"/>
<connect gate="G$1" pin="IO35" pad="6"/>
<connect gate="G$1" pin="IO4" pad="32"/>
<connect gate="G$1" pin="IO5" pad="29"/>
<connect gate="G$1" pin="RXD0" pad="24"/>
<connect gate="G$1" pin="SD0" pad="37"/>
<connect gate="G$1" pin="SD1" pad="36"/>
<connect gate="G$1" pin="SD2" pad="16"/>
<connect gate="G$1" pin="SD3" pad="17"/>
<connect gate="G$1" pin="SENSOR_VN" pad="4"/>
<connect gate="G$1" pin="SENSOR_VP" pad="3"/>
<connect gate="G$1" pin="TXD0" pad="23"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="In Stock"/>
<attribute name="DESCRIPTION" value=" WiFi Development Tools (802.11) ESP32 General Development Kit, ESP32-WROOM-32D on the board "/>
<attribute name="MF" value="Espressif Systems"/>
<attribute name="MP" value="ESP32-DEVKITC-32D"/>
<attribute name="PACKAGE" value="None"/>
<attribute name="PRICE" value="None"/>
<attribute name="PURCHASE-URL" value="https://pricing.snapeda.com/search/part/ESP32-DEVKITC-32D/?ref=eda"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-lstb" urn="urn:adsk.eagle:library:162">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA08-2" urn="urn:adsk.eagle:footprint:8269/1" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-9.525" y1="2.54" x2="-8.255" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="2.54" x2="-7.62" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-6.985" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="2.54" x2="-5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.54" x2="-5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="2.54" x2="-10.16" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.905" x2="-4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="-3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0" y2="1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="1.905" x2="0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.905" x2="3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="2.54" x2="5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-8.255" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.54" x2="-6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-2.54" x2="-7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.905" x2="-10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-9.525" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-2.54" x2="-9.525" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-2.54" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-2.54" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.54" x2="6.985" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.985" y1="2.54" x2="7.62" y2="1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="1.905" x2="8.255" y2="2.54" width="0.1524" layer="21"/>
<wire x1="8.255" y1="2.54" x2="9.525" y2="2.54" width="0.1524" layer="21"/>
<wire x1="9.525" y1="2.54" x2="10.16" y2="1.905" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.54" x2="5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="10.16" y1="1.905" x2="10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="9.525" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-2.54" x2="8.255" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.54" x2="7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-2.54" x2="5.715" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-8.89" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="3" x="-6.35" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="-3.81" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="7" x="-1.27" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="9" x="1.27" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="11" x="3.81" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="2" x="-8.89" y="1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="-6.35" y="1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="-3.81" y="1.27" drill="1.016" shape="octagon"/>
<pad name="8" x="-1.27" y="1.27" drill="1.016" shape="octagon"/>
<pad name="10" x="1.27" y="1.27" drill="1.016" shape="octagon"/>
<pad name="12" x="3.81" y="1.27" drill="1.016" shape="octagon"/>
<pad name="13" x="6.35" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="15" x="8.89" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="14" x="6.35" y="1.27" drill="1.016" shape="octagon"/>
<pad name="16" x="8.89" y="1.27" drill="1.016" shape="octagon"/>
<text x="-9.398" y="-4.191" size="1.27" layer="21" ratio="10">1</text>
<text x="-10.16" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="7.62" y="2.921" size="1.27" layer="21" ratio="10">16</text>
<text x="0" y="-4.191" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-6.604" y1="-1.524" x2="-6.096" y2="-1.016" layer="51"/>
<rectangle x1="-9.144" y1="-1.524" x2="-8.636" y2="-1.016" layer="51"/>
<rectangle x1="-4.064" y1="-1.524" x2="-3.556" y2="-1.016" layer="51"/>
<rectangle x1="1.016" y1="-1.524" x2="1.524" y2="-1.016" layer="51"/>
<rectangle x1="-1.524" y1="-1.524" x2="-1.016" y2="-1.016" layer="51"/>
<rectangle x1="3.556" y1="-1.524" x2="4.064" y2="-1.016" layer="51"/>
<rectangle x1="-9.144" y1="1.016" x2="-8.636" y2="1.524" layer="51"/>
<rectangle x1="-6.604" y1="1.016" x2="-6.096" y2="1.524" layer="51"/>
<rectangle x1="-4.064" y1="1.016" x2="-3.556" y2="1.524" layer="51"/>
<rectangle x1="-1.524" y1="1.016" x2="-1.016" y2="1.524" layer="51"/>
<rectangle x1="1.016" y1="1.016" x2="1.524" y2="1.524" layer="51"/>
<rectangle x1="3.556" y1="1.016" x2="4.064" y2="1.524" layer="51"/>
<rectangle x1="8.636" y1="-1.524" x2="9.144" y2="-1.016" layer="51"/>
<rectangle x1="6.096" y1="-1.524" x2="6.604" y2="-1.016" layer="51"/>
<rectangle x1="6.096" y1="1.016" x2="6.604" y2="1.524" layer="51"/>
<rectangle x1="8.636" y1="1.016" x2="9.144" y2="1.524" layer="51"/>
</package>
<package name="MA04-1" urn="urn:adsk.eagle:footprint:8285/1" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-5.08" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.223" y="-0.635" size="1.27" layer="21" ratio="10">1</text>
<text x="0.635" y="1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="5.334" y="-0.635" size="1.27" layer="21" ratio="10">4</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="MA08-2" urn="urn:adsk.eagle:package:8335/1" type="box" library_version="2">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="MA08-2"/>
</packageinstances>
</package3d>
<package3d name="MA04-1" urn="urn:adsk.eagle:package:8337/1" type="box" library_version="2">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="MA04-1"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MA08-2" urn="urn:adsk.eagle:symbol:8268/1" library_version="2">
<wire x1="3.81" y1="-10.16" x2="-3.81" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-1.27" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-1.27" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-7.62" x2="-1.27" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-1.27" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="10.16" x2="2.54" y2="10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="7.62" x2="2.54" y2="7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="10.16" x2="-1.27" y2="10.16" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="7.62" x2="-1.27" y2="7.62" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-1.27" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-3.81" y1="12.7" x2="-3.81" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-10.16" x2="3.81" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="12.7" x2="3.81" y2="12.7" width="0.4064" layer="94"/>
<text x="-3.81" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="13.462" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="-7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="4" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="6" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="7" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="9" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="-7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="10" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="11" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="13" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="15" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="12" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="14" x="-7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="16" x="-7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="MA04-1" urn="urn:adsk.eagle:symbol:8284/1" library_version="2">
<wire x1="3.81" y1="-7.62" x2="-1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="-1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-7.62" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<text x="-1.27" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA08-2" urn="urn:adsk.eagle:component:8373/2" prefix="SV" uservalue="yes" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MA08-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA08-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8335/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MA04-1" urn="urn:adsk.eagle:component:8375/2" prefix="SV" uservalue="yes" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="MA04-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA04-1">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8337/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="41" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="A4988_STEPPER_MOTOR_DRIVER_CARRIER_BLACK">
<packages>
<package name="MODULE_A4988_STEPPER_MOTOR_DRIVER_CARRIER_BLACK">
<wire x1="-7.62" y1="10.16" x2="7.62" y2="10.16" width="0.127" layer="21"/>
<wire x1="7.62" y1="10.16" x2="7.62" y2="-10.16" width="0.127" layer="21"/>
<wire x1="7.62" y1="-10.16" x2="-7.62" y2="-10.16" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-10.16" x2="-7.62" y2="10.16" width="0.127" layer="21"/>
<wire x1="-7.87" y1="10.41" x2="-7.87" y2="-10.41" width="0.05" layer="39"/>
<wire x1="-7.87" y1="-10.41" x2="7.87" y2="-10.41" width="0.05" layer="39"/>
<wire x1="7.87" y1="-10.41" x2="7.87" y2="10.41" width="0.05" layer="39"/>
<wire x1="7.87" y1="10.41" x2="-7.87" y2="10.41" width="0.05" layer="39"/>
<text x="-7.75" y="10.5" size="1.27" layer="25">&gt;NAME</text>
<text x="-7.75" y="-11.7" size="1.27" layer="27">&gt;VALUE</text>
<circle x="-8.4" y="9.45" radius="0.1" width="0.2" layer="21"/>
<wire x1="-7.62" y1="10.16" x2="7.62" y2="10.16" width="0.127" layer="51"/>
<wire x1="7.62" y1="10.16" x2="7.62" y2="-10.16" width="0.127" layer="51"/>
<wire x1="7.62" y1="-10.16" x2="-7.62" y2="-10.16" width="0.127" layer="51"/>
<wire x1="-7.62" y1="-10.16" x2="-7.62" y2="10.16" width="0.127" layer="51"/>
<circle x="-8.4" y="9.45" radius="0.1" width="0.2" layer="51"/>
<pad name="1" x="-6.35" y="8.89" drill="1.02" shape="square"/>
<pad name="2" x="-6.35" y="6.35" drill="1.02"/>
<pad name="3" x="-6.35" y="3.81" drill="1.02"/>
<pad name="4" x="-6.35" y="1.27" drill="1.02"/>
<pad name="5" x="-6.35" y="-1.27" drill="1.02"/>
<pad name="6" x="-6.35" y="-3.81" drill="1.02"/>
<pad name="7" x="-6.35" y="-6.35" drill="1.02"/>
<pad name="8" x="-6.35" y="-8.89" drill="1.02"/>
<pad name="9" x="6.35" y="-8.89" drill="1.02" rot="R180"/>
<pad name="10" x="6.35" y="-6.35" drill="1.02" rot="R180"/>
<pad name="11" x="6.35" y="-3.81" drill="1.02" rot="R180"/>
<pad name="12" x="6.35" y="-1.27" drill="1.02" rot="R180"/>
<pad name="13" x="6.35" y="1.27" drill="1.02" rot="R180"/>
<pad name="14" x="6.35" y="3.81" drill="1.02" rot="R180"/>
<pad name="15" x="6.35" y="6.35" drill="1.02" rot="R180"/>
<pad name="16" x="6.35" y="8.89" drill="1.02" rot="R180"/>
</package>
</packages>
<symbols>
<symbol name="A4988_STEPPER_MOTOR_DRIVER_CARRIER_BLACK">
<wire x1="12.7" y1="17.78" x2="12.7" y2="-17.78" width="0.254" layer="94"/>
<wire x1="12.7" y1="-17.78" x2="-12.7" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-17.78" x2="-12.7" y2="17.78" width="0.254" layer="94"/>
<wire x1="-12.7" y1="17.78" x2="12.7" y2="17.78" width="0.254" layer="94"/>
<text x="-12.7" y="19.05" size="1.778" layer="95">&gt;NAME</text>
<text x="-12.7" y="-21.59" size="1.778" layer="96">&gt;VALUE</text>
<pin name="!ENABLE" x="-17.78" y="7.62" length="middle" direction="in"/>
<pin name="1A" x="17.78" y="7.62" length="middle" direction="out" rot="R180"/>
<pin name="!RESET" x="-17.78" y="5.08" length="middle" direction="in"/>
<pin name="!SLEEP" x="-17.78" y="2.54" length="middle" direction="in"/>
<pin name="STEP" x="-17.78" y="0" length="middle" direction="in"/>
<pin name="DIR" x="-17.78" y="-2.54" length="middle" direction="in"/>
<pin name="MS1" x="-17.78" y="-7.62" length="middle" direction="in"/>
<pin name="MS2" x="-17.78" y="-10.16" length="middle" direction="in"/>
<pin name="MS3" x="-17.78" y="-12.7" length="middle" direction="in"/>
<pin name="1B" x="17.78" y="5.08" length="middle" direction="out" rot="R180"/>
<pin name="2A" x="17.78" y="2.54" length="middle" direction="out" rot="R180"/>
<pin name="2B" x="17.78" y="0" length="middle" direction="out" rot="R180"/>
<pin name="VDD" x="17.78" y="15.24" length="middle" direction="pwr" rot="R180"/>
<pin name="VMOT" x="17.78" y="12.7" length="middle" direction="pwr" rot="R180"/>
<pin name="GND" x="17.78" y="-15.24" length="middle" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A4988_STEPPER_MOTOR_DRIVER_CARRIER_BLACK" prefix="U">
<description>Stepper motor controler; IC: A4988; 1A; Uin mot: 8÷35V   &lt;a href="https://pricing.snapeda.com/parts/A4988%20STEPPER%20MOTOR%20DRIVER%20CARRIER%20BLACK/Pololu/view-part?ref=eda"&gt;Check availability&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="A4988_STEPPER_MOTOR_DRIVER_CARRIER_BLACK" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MODULE_A4988_STEPPER_MOTOR_DRIVER_CARRIER_BLACK">
<connects>
<connect gate="G$1" pin="!ENABLE" pad="1"/>
<connect gate="G$1" pin="!RESET" pad="5"/>
<connect gate="G$1" pin="!SLEEP" pad="6"/>
<connect gate="G$1" pin="1A" pad="12"/>
<connect gate="G$1" pin="1B" pad="11"/>
<connect gate="G$1" pin="2A" pad="13"/>
<connect gate="G$1" pin="2B" pad="14"/>
<connect gate="G$1" pin="DIR" pad="8"/>
<connect gate="G$1" pin="GND" pad="9 15"/>
<connect gate="G$1" pin="MS1" pad="2"/>
<connect gate="G$1" pin="MS2" pad="3"/>
<connect gate="G$1" pin="MS3" pad="4"/>
<connect gate="G$1" pin="STEP" pad="7"/>
<connect gate="G$1" pin="VDD" pad="10"/>
<connect gate="G$1" pin="VMOT" pad="16"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Not in stock"/>
<attribute name="DESCRIPTION" value=" Stepper motor controler; IC: A4988; 1.2A; Uin mot: 8÷35V "/>
<attribute name="MF" value="Pololu"/>
<attribute name="MP" value="A4988 STEPPER MOTOR DRIVER CARRIER BLACK"/>
<attribute name="PACKAGE" value="None"/>
<attribute name="PRICE" value="None"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="DC-DC Converter" urn="urn:adsk.eagle:library:20810979">
<description>&lt;h3&gt; PCBLayout.com - Frequently Used &lt;i&gt;DC-DC CONVERTER&lt;/i&gt;&lt;/h3&gt;

Visit us at &lt;a href="http://www.PCBLayout.com"&gt;PCBLayout.com&lt;/a&gt; for quick and hassle-free PCB Layout/Manufacturing ordering experience.
&lt;BR&gt;
&lt;BR&gt;
This library has been generated by our experienced pcb layout engineers using current IPC and/or industry standards. We &lt;b&gt;believe&lt;/b&gt; the content to be accurate, complete and current. But, this content is provided as a courtesy and &lt;u&gt;user assumes all risk and responsiblity of it's usage&lt;/u&gt;.
&lt;BR&gt;
&lt;BR&gt;
Feel free to contact us at &lt;a href="mailto:Support@PCBLayout.com"&gt;Support@PCBLayout.com&lt;/a&gt; if you have any questions/concerns regarding any of our content or services.</description>
<packages>
<package name="173010535" urn="urn:adsk.eagle:footprint:20779875/2" library_version="1">
<pad name="1" x="-2.54" y="0" drill="1" diameter="2" shape="square"/>
<pad name="2" x="0" y="0" drill="1" diameter="2"/>
<pad name="3" x="2.54" y="0" drill="1" diameter="2"/>
<wire x1="-5.8" y1="5.7" x2="5.8" y2="5.7" width="0.127" layer="51"/>
<wire x1="5.8" y1="5.7" x2="5.8" y2="-2.3" width="0.127" layer="51"/>
<wire x1="5.8" y1="-2.3" x2="-5.8" y2="-2.3" width="0.127" layer="51"/>
<wire x1="-5.8" y1="-2.3" x2="-5.8" y2="5.7" width="0.127" layer="51"/>
<wire x1="-5.8" y1="5.7" x2="5.8" y2="5.7" width="0.127" layer="21"/>
<wire x1="5.8" y1="5.7" x2="5.8" y2="-2.3" width="0.127" layer="21"/>
<wire x1="5.8" y1="-2.3" x2="-5.8" y2="-2.3" width="0.127" layer="21"/>
<wire x1="-5.8" y1="-2.3" x2="-5.8" y2="5.7" width="0.127" layer="21"/>
<wire x1="-6.15" y1="6.05" x2="-6.15" y2="-2.65" width="0.05" layer="39"/>
<wire x1="-6.15" y1="-2.65" x2="6.15" y2="-2.65" width="0.05" layer="39"/>
<wire x1="6.15" y1="-2.65" x2="6.15" y2="6.05" width="0.05" layer="39"/>
<wire x1="6.15" y1="6.05" x2="-6.15" y2="6.05" width="0.05" layer="39"/>
<text x="-5.08" y="6.35" size="1.27" layer="25">&gt;NAME</text>
<text x="-4.98" y="-4.818" size="1.27" layer="27">&gt;VALUE</text>
<circle x="-2.5" y="-3.2" radius="0.1" width="0.2" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="173010535" urn="urn:adsk.eagle:package:20779907/3" type="model" library_version="1">
<packageinstances>
<packageinstance name="173010535"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="173010535" urn="urn:adsk.eagle:symbol:20810994/1" library_version="1">
<pin name="VIN" x="-15.24" y="0" length="middle" direction="pwr"/>
<pin name="VOUT" x="15.24" y="0" length="middle" direction="pwr" rot="R180"/>
<pin name="GND" x="0" y="-12.7" length="middle" direction="pwr" rot="R90"/>
<wire x1="-10.16" y1="2.54" x2="10.16" y2="2.54" width="0.254" layer="94"/>
<wire x1="10.16" y1="2.54" x2="10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="-10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-7.62" x2="-10.16" y2="2.54" width="0.254" layer="94"/>
<text x="-7.62" y="3.81" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-11.43" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="173010535" urn="urn:adsk.eagle:component:20811009/1" prefix="U" library_version="1">
<description>&lt;h3&gt; FDSM FIXED STEP DOWN REGULATOR M &lt;/h3&gt;
&lt;BR&gt;
&lt;a href="https://www.we-online.com/catalog/datasheet/173010335.pdf"&gt; Manufacturer's datasheet&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="173010535" x="0" y="0"/>
</gates>
<devices>
<device name="" package="173010535">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="VIN" pad="1"/>
<connect gate="G$1" pin="VOUT" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:20779907/3"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="CREATED_BY" value="PCBLayout.com" constant="no"/>
<attribute name="DIGIKEY_PARTNO" value="732-173010535-ND" constant="no"/>
<attribute name="MANUFACTURER" value="Würth Elektronik" constant="no"/>
<attribute name="MPN" value="173010535" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="buchse">
<packages>
<package name="BUCHSE">
<wire x1="0" y1="0" x2="14.6" y2="0" width="0.1524" layer="21"/>
<wire x1="14.6" y1="0" x2="14.6" y2="8.9" width="0.1524" layer="21"/>
<wire x1="14.6" y1="8.9" x2="0" y2="8.9" width="0.1524" layer="21"/>
<wire x1="0" y1="8.9" x2="0" y2="0" width="0.1524" layer="21"/>
<smd name="P$1" x="5" y="9.95" dx="3" dy="2" layer="1" rot="R90"/>
<smd name="P$2" x="9.7" y="9.95" dx="3" dy="2" layer="1" rot="R90"/>
<smd name="P$3" x="5" y="-1.05" dx="3" dy="2" layer="1" rot="R90"/>
<smd name="P$4" x="9.7" y="-1.05" dx="3" dy="2" layer="1" rot="R90"/>
<text x="3.81" y="3.81" size="1.778" layer="21">socket</text>
</package>
</packages>
<symbols>
<symbol name="BUCHSE">
<wire x1="0" y1="0" x2="20.32" y2="0" width="0.1524" layer="94"/>
<wire x1="20.32" y1="0" x2="20.32" y2="25.4" width="0.1524" layer="94"/>
<wire x1="20.32" y1="25.4" x2="0" y2="25.4" width="0.1524" layer="94"/>
<wire x1="0" y1="25.4" x2="0" y2="0" width="0.1524" layer="94"/>
<pin name="P$1" x="-5.08" y="7.62" length="middle"/>
<pin name="P$2" x="-5.08" y="17.78" length="middle"/>
<pin name="P$3" x="25.4" y="17.78" length="middle" rot="R180"/>
<pin name="P$4" x="25.4" y="7.62" length="middle" rot="R180"/>
<text x="7.62" y="0" size="1.778" layer="94">socket</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="BUCHSE">
<gates>
<gate name="G$1" symbol="BUCHSE" x="0" y="0"/>
</gates>
<devices>
<device name="DC" package="BUCHSE">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
<connect gate="G$1" pin="P$3" pad="P$3"/>
<connect gate="G$1" pin="P$4" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="DINA4_P" device=""/>
<part name="ESP32" library="ESP32-DEVKITC-32D" deviceset="ESP32-DEVKITC-32D" device=""/>
<part name="DISPLAY_CON" library="con-lstb" library_urn="urn:adsk.eagle:library:162" deviceset="MA08-2" device="" package3d_urn="urn:adsk.eagle:package:8335/1"/>
<part name="MOTOR_R" library="con-lstb" library_urn="urn:adsk.eagle:library:162" deviceset="MA04-1" device="" package3d_urn="urn:adsk.eagle:package:8337/1"/>
<part name="MOTOR_L" library="con-lstb" library_urn="urn:adsk.eagle:library:162" deviceset="MA04-1" device="" package3d_urn="urn:adsk.eagle:package:8337/1"/>
<part name="STEPPER_MOTOR_DRIVER_R" library="A4988_STEPPER_MOTOR_DRIVER_CARRIER_BLACK" deviceset="A4988_STEPPER_MOTOR_DRIVER_CARRIER_BLACK" device="" value="A4988_STEPPER_MOTOR_DRIVER"/>
<part name="STEPPER_MOTOR_DRIVER_L" library="A4988_STEPPER_MOTOR_DRIVER_CARRIER_BLACK" deviceset="A4988_STEPPER_MOTOR_DRIVER_CARRIER_BLACK" device="" value="A4988_STEPPER_MOTOR_DRIVER"/>
<part name="U1" library="DC-DC Converter" library_urn="urn:adsk.eagle:library:20810979" deviceset="173010535" device="" package3d_urn="urn:adsk.eagle:package:20779907/3"/>
<part name="U$1" library="buchse" deviceset="BUCHSE" device="DC"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="92.202" y="19.05" size="2.54" layer="94">UwU Bot</text>
<text x="172.72" y="7.62" size="2.54" layer="94">2</text>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="0" y="0" smashed="yes"/>
<instance part="FRAME1" gate="G$2" x="78.74" y="0" smashed="yes">
<attribute name="LAST_DATE_TIME" x="91.44" y="1.27" size="2.54" layer="94"/>
<attribute name="SHEET" x="165.1" y="1.27" size="2.54" layer="94"/>
</instance>
<instance part="ESP32" gate="G$1" x="129.54" y="205.74" smashed="yes">
<attribute name="NAME" x="124.4428" y="231.8043" size="1.78" layer="95"/>
<attribute name="VALUE" x="114.2837" y="177.7702" size="1.7799" layer="96"/>
</instance>
<instance part="DISPLAY_CON" gate="G$1" x="35.56" y="127" smashed="yes">
<attribute name="VALUE" x="31.75" y="114.3" size="1.778" layer="96"/>
<attribute name="NAME" x="29.21" y="140.462" size="1.778" layer="95"/>
</instance>
<instance part="MOTOR_R" gate="1" x="78.74" y="218.44" smashed="yes" rot="MR0">
<attribute name="VALUE" x="80.01" y="208.28" size="1.778" layer="96" rot="MR0"/>
<attribute name="NAME" x="82.55" y="224.282" size="1.778" layer="95" rot="MR0"/>
</instance>
<instance part="MOTOR_L" gate="1" x="78.74" y="172.72" smashed="yes" rot="MR0">
<attribute name="VALUE" x="80.01" y="162.56" size="1.778" layer="96" rot="MR0"/>
<attribute name="NAME" x="82.55" y="178.562" size="1.778" layer="95" rot="MR0"/>
</instance>
<instance part="STEPPER_MOTOR_DRIVER_R" gate="G$1" x="40.64" y="213.36" smashed="yes">
<attribute name="NAME" x="25.4" y="232.41" size="1.778" layer="95"/>
</instance>
<instance part="STEPPER_MOTOR_DRIVER_L" gate="G$1" x="40.64" y="167.64" smashed="yes">
<attribute name="NAME" x="25.4" y="186.69" size="1.778" layer="95"/>
</instance>
<instance part="U1" gate="G$1" x="81.28" y="137.16" smashed="yes">
<attribute name="NAME" x="73.66" y="140.97" size="1.778" layer="95"/>
<attribute name="VALUE" x="71.12" y="125.73" size="1.778" layer="96"/>
</instance>
<instance part="U$1" gate="G$1" x="124.46" y="119.38" smashed="yes"/>
</instances>
<busses>
</busses>
<nets>
<net name="IO25" class="0">
<segment>
<pinref part="DISPLAY_CON" gate="G$1" pin="16"/>
<wire x1="27.94" y1="137.16" x2="20.32" y2="137.16" width="0.1524" layer="91"/>
<label x="20.32" y="137.16" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="ESP32" gate="G$1" pin="IO25"/>
<wire x1="109.22" y1="208.28" x2="104.14" y2="208.28" width="0.1524" layer="91"/>
<label x="104.14" y="208.28" size="1.778" layer="95"/>
</segment>
</net>
<net name="IO27" class="0">
<segment>
<pinref part="DISPLAY_CON" gate="G$1" pin="14"/>
<wire x1="27.94" y1="134.62" x2="20.32" y2="134.62" width="0.1524" layer="91"/>
<label x="20.32" y="134.62" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="ESP32" gate="G$1" pin="IO27"/>
<wire x1="109.22" y1="203.2" x2="104.14" y2="203.2" width="0.1524" layer="91"/>
<label x="104.14" y="203.2" size="1.778" layer="95"/>
</segment>
</net>
<net name="IO21" class="0">
<segment>
<pinref part="DISPLAY_CON" gate="G$1" pin="12"/>
<wire x1="27.94" y1="132.08" x2="20.32" y2="132.08" width="0.1524" layer="91"/>
<label x="20.32" y="132.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="ESP32" gate="G$1" pin="IO21"/>
<wire x1="149.86" y1="215.9" x2="154.94" y2="215.9" width="0.1524" layer="91"/>
<label x="149.86" y="215.9" size="1.778" layer="95"/>
</segment>
</net>
<net name="IO23" class="0">
<segment>
<pinref part="DISPLAY_CON" gate="G$1" pin="10"/>
<wire x1="27.94" y1="129.54" x2="20.32" y2="129.54" width="0.1524" layer="91"/>
<label x="20.32" y="129.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="ESP32" gate="G$1" pin="IO23"/>
<wire x1="149.86" y1="226.06" x2="154.94" y2="226.06" width="0.1524" layer="91"/>
<label x="149.86" y="226.06" size="1.778" layer="95"/>
</segment>
</net>
<net name="IO12" class="0">
<segment>
<pinref part="DISPLAY_CON" gate="G$1" pin="8"/>
<wire x1="27.94" y1="127" x2="20.32" y2="127" width="0.1524" layer="91"/>
<label x="20.32" y="127" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="ESP32" gate="G$1" pin="IO12"/>
<wire x1="109.22" y1="198.12" x2="104.14" y2="198.12" width="0.1524" layer="91"/>
<label x="104.14" y="198.12" size="1.778" layer="95"/>
</segment>
</net>
<net name="IO17" class="0">
<segment>
<pinref part="DISPLAY_CON" gate="G$1" pin="6"/>
<wire x1="27.94" y1="124.46" x2="20.32" y2="124.46" width="0.1524" layer="91"/>
<label x="20.32" y="124.46" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="ESP32" gate="G$1" pin="IO17"/>
<wire x1="149.86" y1="203.2" x2="154.94" y2="203.2" width="0.1524" layer="91"/>
<label x="149.86" y="203.2" size="1.778" layer="95"/>
</segment>
</net>
<net name="IO15" class="0">
<segment>
<pinref part="DISPLAY_CON" gate="G$1" pin="4"/>
<wire x1="27.94" y1="121.92" x2="20.32" y2="121.92" width="0.1524" layer="91"/>
<label x="20.32" y="121.92" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="ESP32" gate="G$1" pin="IO15"/>
<wire x1="149.86" y1="190.5" x2="154.94" y2="190.5" width="0.1524" layer="91"/>
<label x="149.86" y="190.5" size="1.778" layer="95"/>
</segment>
</net>
<net name="IO33" class="0">
<segment>
<pinref part="DISPLAY_CON" gate="G$1" pin="2"/>
<wire x1="27.94" y1="119.38" x2="20.32" y2="119.38" width="0.1524" layer="91"/>
<label x="20.32" y="119.38" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="ESP32" gate="G$1" pin="IO33"/>
<wire x1="109.22" y1="210.82" x2="104.14" y2="210.82" width="0.1524" layer="91"/>
<label x="104.14" y="210.82" size="1.778" layer="95"/>
</segment>
</net>
<net name="IO32" class="0">
<segment>
<pinref part="DISPLAY_CON" gate="G$1" pin="3"/>
<wire x1="43.18" y1="121.92" x2="50.8" y2="121.92" width="0.1524" layer="91"/>
<label x="48.26" y="121.92" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="ESP32" gate="G$1" pin="IO32"/>
<wire x1="109.22" y1="213.36" x2="104.14" y2="213.36" width="0.1524" layer="91"/>
<label x="104.14" y="213.36" size="1.778" layer="95"/>
</segment>
</net>
<net name="IO18" class="0">
<segment>
<pinref part="DISPLAY_CON" gate="G$1" pin="5"/>
<wire x1="43.18" y1="124.46" x2="50.8" y2="124.46" width="0.1524" layer="91"/>
<label x="48.26" y="124.46" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="ESP32" gate="G$1" pin="IO18"/>
<wire x1="149.86" y1="208.28" x2="154.94" y2="208.28" width="0.1524" layer="91"/>
<label x="149.86" y="208.28" size="1.778" layer="95"/>
</segment>
</net>
<net name="IO16" class="0">
<segment>
<pinref part="DISPLAY_CON" gate="G$1" pin="7"/>
<wire x1="43.18" y1="127" x2="50.8" y2="127" width="0.1524" layer="91"/>
<label x="48.26" y="127" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="ESP32" gate="G$1" pin="IO16"/>
<wire x1="149.86" y1="200.66" x2="154.94" y2="200.66" width="0.1524" layer="91"/>
<label x="149.86" y="200.66" size="1.778" layer="95"/>
</segment>
</net>
<net name="IO22" class="0">
<segment>
<pinref part="DISPLAY_CON" gate="G$1" pin="11"/>
<wire x1="43.18" y1="132.08" x2="50.8" y2="132.08" width="0.1524" layer="91"/>
<label x="48.26" y="132.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="ESP32" gate="G$1" pin="IO22"/>
<wire x1="149.86" y1="223.52" x2="154.94" y2="223.52" width="0.1524" layer="91"/>
<label x="149.86" y="223.52" size="1.778" layer="95"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="DISPLAY_CON" gate="G$1" pin="13"/>
<wire x1="43.18" y1="134.62" x2="50.8" y2="134.62" width="0.1524" layer="91"/>
<label x="48.26" y="134.62" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="DISPLAY_CON" gate="G$1" pin="9"/>
<wire x1="43.18" y1="129.54" x2="50.8" y2="129.54" width="0.1524" layer="91"/>
<label x="48.26" y="129.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="DISPLAY_CON" gate="G$1" pin="1"/>
<wire x1="43.18" y1="119.38" x2="50.8" y2="119.38" width="0.1524" layer="91"/>
<label x="48.26" y="119.38" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="ESP32" gate="G$1" pin="GND1"/>
<wire x1="109.22" y1="195.58" x2="104.14" y2="195.58" width="0.1524" layer="91"/>
<label x="104.14" y="195.58" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="STEPPER_MOTOR_DRIVER_R" gate="G$1" pin="GND"/>
<wire x1="58.42" y1="198.12" x2="66.04" y2="198.12" width="0.1524" layer="91"/>
<label x="60.96" y="198.12" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="STEPPER_MOTOR_DRIVER_L" gate="G$1" pin="GND"/>
<wire x1="58.42" y1="152.4" x2="66.04" y2="152.4" width="0.1524" layer="91"/>
<label x="60.96" y="152.4" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="GND"/>
<wire x1="81.28" y1="124.46" x2="81.28" y2="119.38" width="0.1524" layer="91"/>
<label x="81.28" y="119.38" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="P$1"/>
<wire x1="119.38" y1="127" x2="114.3" y2="127" width="0.1524" layer="91"/>
<label x="111.76" y="127" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="P$2"/>
<wire x1="119.38" y1="137.16" x2="114.3" y2="137.16" width="0.1524" layer="91"/>
<label x="111.76" y="137.16" size="1.778" layer="95"/>
</segment>
</net>
<net name="IO26" class="0">
<segment>
<pinref part="DISPLAY_CON" gate="G$1" pin="15"/>
<wire x1="43.18" y1="137.16" x2="50.8" y2="137.16" width="0.1524" layer="91"/>
<label x="48.26" y="137.16" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="ESP32" gate="G$1" pin="IO26"/>
<wire x1="109.22" y1="205.74" x2="104.14" y2="205.74" width="0.1524" layer="91"/>
<label x="104.14" y="205.74" size="1.778" layer="95"/>
</segment>
</net>
<net name="MS3" class="0">
<segment>
<pinref part="ESP32" gate="G$1" pin="IO19"/>
<wire x1="149.86" y1="210.82" x2="154.94" y2="210.82" width="0.1524" layer="91"/>
<label x="149.86" y="210.82" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="STEPPER_MOTOR_DRIVER_R" gate="G$1" pin="MS3"/>
<wire x1="22.86" y1="200.66" x2="17.78" y2="200.66" width="0.1524" layer="91"/>
<label x="17.78" y="200.66" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="STEPPER_MOTOR_DRIVER_L" gate="G$1" pin="MS3"/>
<wire x1="22.86" y1="154.94" x2="17.78" y2="154.94" width="0.1524" layer="91"/>
<label x="17.78" y="154.94" size="1.778" layer="95"/>
</segment>
</net>
<net name="MS2" class="0">
<segment>
<pinref part="ESP32" gate="G$1" pin="IO5"/>
<wire x1="149.86" y1="205.74" x2="154.94" y2="205.74" width="0.1524" layer="91"/>
<label x="149.86" y="205.74" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="STEPPER_MOTOR_DRIVER_R" gate="G$1" pin="MS2"/>
<wire x1="22.86" y1="203.2" x2="17.78" y2="203.2" width="0.1524" layer="91"/>
<label x="17.78" y="203.2" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="STEPPER_MOTOR_DRIVER_L" gate="G$1" pin="MS2"/>
<wire x1="22.86" y1="157.48" x2="17.78" y2="157.48" width="0.1524" layer="91"/>
<label x="17.78" y="157.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="3V3" class="0">
<segment>
<pinref part="ESP32" gate="G$1" pin="3V3"/>
<wire x1="109.22" y1="228.6" x2="104.14" y2="228.6" width="0.1524" layer="91"/>
<label x="104.14" y="228.6" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="STEPPER_MOTOR_DRIVER_R" gate="G$1" pin="VDD"/>
<wire x1="58.42" y1="228.6" x2="66.04" y2="228.6" width="0.1524" layer="91"/>
<label x="60.96" y="228.6" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="STEPPER_MOTOR_DRIVER_L" gate="G$1" pin="VDD"/>
<wire x1="58.42" y1="182.88" x2="66.04" y2="182.88" width="0.1524" layer="91"/>
<label x="60.96" y="182.88" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="STEPPER_MOTOR_DRIVER_R" gate="G$1" pin="!SLEEP"/>
<wire x1="22.86" y1="215.9" x2="20.32" y2="215.9" width="0.1524" layer="91"/>
<wire x1="20.32" y1="215.9" x2="20.32" y2="218.44" width="0.1524" layer="91"/>
<pinref part="STEPPER_MOTOR_DRIVER_R" gate="G$1" pin="!RESET"/>
<wire x1="20.32" y1="218.44" x2="22.86" y2="218.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="STEPPER_MOTOR_DRIVER_L" gate="G$1" pin="!RESET"/>
<wire x1="22.86" y1="172.72" x2="20.32" y2="172.72" width="0.1524" layer="91"/>
<wire x1="20.32" y1="172.72" x2="20.32" y2="170.18" width="0.1524" layer="91"/>
<pinref part="STEPPER_MOTOR_DRIVER_L" gate="G$1" pin="!SLEEP"/>
<wire x1="20.32" y1="170.18" x2="22.86" y2="170.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="STEP_L" class="0">
<segment>
<pinref part="STEPPER_MOTOR_DRIVER_L" gate="G$1" pin="STEP"/>
<wire x1="22.86" y1="167.64" x2="17.78" y2="167.64" width="0.1524" layer="91"/>
<label x="12.7" y="167.64" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="ESP32" gate="G$1" pin="IO13"/>
<wire x1="109.22" y1="193.04" x2="104.14" y2="193.04" width="0.1524" layer="91"/>
<label x="99.06" y="193.04" size="1.778" layer="95"/>
</segment>
</net>
<net name="STEP_R" class="0">
<segment>
<pinref part="STEPPER_MOTOR_DRIVER_R" gate="G$1" pin="STEP"/>
<wire x1="22.86" y1="213.36" x2="17.78" y2="213.36" width="0.1524" layer="91"/>
<label x="12.7" y="213.36" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="ESP32" gate="G$1" pin="IO34"/>
<wire x1="109.22" y1="218.44" x2="104.14" y2="218.44" width="0.1524" layer="91"/>
<label x="99.06" y="218.44" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="ESP32" gate="G$1" pin="IO4"/>
<wire x1="149.86" y1="198.12" x2="154.94" y2="198.12" width="0.1524" layer="91"/>
<label x="149.86" y="198.12" size="1.778" layer="95"/>
</segment>
</net>
<net name="DIR_R" class="0">
<segment>
<pinref part="STEPPER_MOTOR_DRIVER_R" gate="G$1" pin="DIR"/>
<wire x1="22.86" y1="210.82" x2="17.78" y2="210.82" width="0.1524" layer="91"/>
<label x="15.24" y="210.82" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="ESP32" gate="G$1" pin="IO35"/>
<wire x1="109.22" y1="215.9" x2="104.14" y2="215.9" width="0.1524" layer="91"/>
<label x="101.6" y="215.9" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="ESP32" gate="G$1" pin="IO2"/>
<wire x1="149.86" y1="193.04" x2="154.94" y2="193.04" width="0.1524" layer="91"/>
<label x="149.86" y="193.04" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="STEPPER_MOTOR_DRIVER_L" gate="G$1" pin="2A"/>
<pinref part="MOTOR_L" gate="1" pin="2"/>
<wire x1="58.42" y1="170.18" x2="71.12" y2="170.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="STEPPER_MOTOR_DRIVER_L" gate="G$1" pin="2B"/>
<pinref part="MOTOR_L" gate="1" pin="1"/>
<wire x1="58.42" y1="167.64" x2="71.12" y2="167.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="STEPPER_MOTOR_DRIVER_R" gate="G$1" pin="2B"/>
<pinref part="MOTOR_R" gate="1" pin="1"/>
<wire x1="58.42" y1="213.36" x2="71.12" y2="213.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="STEPPER_MOTOR_DRIVER_R" gate="G$1" pin="2A"/>
<pinref part="MOTOR_R" gate="1" pin="2"/>
<wire x1="58.42" y1="215.9" x2="71.12" y2="215.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="12V" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="VIN"/>
<wire x1="66.04" y1="137.16" x2="60.96" y2="137.16" width="0.1524" layer="91"/>
<label x="60.96" y="137.16" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="P$3"/>
<wire x1="149.86" y1="137.16" x2="154.94" y2="137.16" width="0.1524" layer="91"/>
<label x="152.4" y="137.16" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="P$4"/>
<wire x1="149.86" y1="127" x2="154.94" y2="127" width="0.1524" layer="91"/>
<label x="152.4" y="127" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="STEPPER_MOTOR_DRIVER_L" gate="G$1" pin="VMOT"/>
<wire x1="58.42" y1="180.34" x2="66.04" y2="180.34" width="0.1524" layer="91"/>
<label x="60.96" y="180.34" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="STEPPER_MOTOR_DRIVER_R" gate="G$1" pin="VMOT"/>
<wire x1="58.42" y1="226.06" x2="66.04" y2="226.06" width="0.1524" layer="91"/>
<label x="60.96" y="226.06" size="1.778" layer="95"/>
</segment>
</net>
<net name="5V" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="VOUT"/>
<wire x1="96.52" y1="137.16" x2="101.6" y2="137.16" width="0.1524" layer="91"/>
<label x="96.52" y="137.16" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="ESP32" gate="G$1" pin="EXT_5V"/>
<wire x1="109.22" y1="182.88" x2="104.14" y2="182.88" width="0.1524" layer="91"/>
<label x="106.68" y="182.88" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="STEPPER_MOTOR_DRIVER_R" gate="G$1" pin="1B"/>
<wire x1="58.42" y1="218.44" x2="66.04" y2="218.44" width="0.1524" layer="91"/>
<wire x1="66.04" y1="218.44" x2="66.04" y2="220.98" width="0.1524" layer="91"/>
<pinref part="MOTOR_R" gate="1" pin="4"/>
<wire x1="66.04" y1="220.98" x2="71.12" y2="220.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="1A" class="0">
<segment>
<pinref part="MOTOR_R" gate="1" pin="3"/>
<wire x1="71.12" y1="218.44" x2="68.58" y2="218.44" width="0.1524" layer="91"/>
<label x="68.58" y="218.44" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="STEPPER_MOTOR_DRIVER_R" gate="G$1" pin="1A"/>
<wire x1="58.42" y1="220.98" x2="60.96" y2="220.98" width="0.1524" layer="91"/>
<label x="58.42" y="220.98" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="STEPPER_MOTOR_DRIVER_L" gate="G$1" pin="1B"/>
<wire x1="58.42" y1="172.72" x2="66.04" y2="172.72" width="0.1524" layer="91"/>
<wire x1="66.04" y1="172.72" x2="66.04" y2="175.26" width="0.1524" layer="91"/>
<pinref part="MOTOR_L" gate="1" pin="4"/>
<wire x1="66.04" y1="175.26" x2="71.12" y2="175.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="1A#2" class="0">
<segment>
<pinref part="STEPPER_MOTOR_DRIVER_L" gate="G$1" pin="1A"/>
<wire x1="58.42" y1="175.26" x2="60.96" y2="175.26" width="0.1524" layer="91"/>
<label x="58.42" y="175.26" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="MOTOR_L" gate="1" pin="3"/>
<wire x1="71.12" y1="172.72" x2="68.58" y2="172.72" width="0.1524" layer="91"/>
<label x="66.04" y="172.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="MS1" class="0">
<segment>
<pinref part="STEPPER_MOTOR_DRIVER_L" gate="G$1" pin="MS1"/>
<wire x1="22.86" y1="160.02" x2="17.78" y2="160.02" width="0.1524" layer="91"/>
<label x="17.78" y="160.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="STEPPER_MOTOR_DRIVER_R" gate="G$1" pin="MS1"/>
<wire x1="22.86" y1="205.74" x2="17.78" y2="205.74" width="0.1524" layer="91"/>
<label x="17.78" y="205.74" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="ESP32" gate="G$1" pin="IO0"/>
<wire x1="149.86" y1="195.58" x2="154.94" y2="195.58" width="0.1524" layer="91"/>
<label x="149.86" y="195.58" size="1.778" layer="95"/>
</segment>
</net>
<net name="DIR_L" class="0">
<segment>
<pinref part="STEPPER_MOTOR_DRIVER_L" gate="G$1" pin="DIR"/>
<wire x1="22.86" y1="165.1" x2="17.78" y2="165.1" width="0.1524" layer="91"/>
<label x="15.24" y="165.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="ESP32" gate="G$1" pin="IO14"/>
<wire x1="109.22" y1="200.66" x2="104.14" y2="200.66" width="0.1524" layer="91"/>
<label x="101.6" y="200.66" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="202,1,109.22,160.02,ESP32,EN,,,,"/>
<approved hash="202,1,109.22,157.48,ESP32,SENSOR_VP,,,,"/>
<approved hash="202,1,109.22,154.94,ESP32,SENSOR_VN,,,,"/>
<approved hash="104,1,109.22,129.54,ESP32,GND1,GND,,,"/>
<approved hash="104,1,109.22,116.84,ESP32,EXT_5V,VOUT,,,"/>
<approved hash="202,1,149.86,116.84,ESP32,CLK,,,,"/>
<approved hash="204,1,149.86,147.32,ESP32,GND2,,,,"/>
<approved hash="202,1,149.86,152.4,ESP32,RXD0,,,,"/>
<approved hash="204,1,149.86,162.56,ESP32,GND3,,,,"/>
<approved hash="202,1,22.86,154.94,STEPPER_MOTOR_DRIVER1,!ENABLE,,,,"/>
<approved hash="104,1,58.42,162.56,STEPPER_MOTOR_DRIVER1,VDD,3V3,,,"/>
<approved hash="104,1,58.42,160.02,STEPPER_MOTOR_DRIVER1,VMOT,VIN,,,"/>
<approved hash="202,1,22.86,109.22,STEPPER_MOTOR_DRIVER2,!ENABLE,,,,"/>
<approved hash="104,1,58.42,116.84,STEPPER_MOTOR_DRIVER2,VDD,3V3,,,"/>
<approved hash="104,1,58.42,114.3,STEPPER_MOTOR_DRIVER2,VMOT,VIN,,,"/>
<approved hash="209,1,22.86,149.86,N$2,,,,,"/>
<approved hash="209,1,22.86,152.4,N$2,,,,,"/>
<approved hash="209,1,22.86,106.68,N$3,,,,,"/>
<approved hash="209,1,22.86,104.14,N$3,,,,,"/>
<approved hash="113,1,131.976,90.066,FRAME1,,,,,"/>
<approved hash="113,1,190.5,150.15,DISPLAY_CON,,,,,"/>
<approved hash="113,1,74.9723,152.69,MOTOR1,,,,,"/>
<approved hash="113,1,74.9723,106.97,MOTOR2,,,,,"/>
</errors>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
