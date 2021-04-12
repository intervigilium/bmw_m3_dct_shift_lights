<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="mil" style="lines" multiple="1" display="yes" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
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
<layer number="46" name="Milling" color="3" fill="1" visible="yes" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<attributes/>
<variantdefs/>
<libraries>
<library name="common">
<packages>
<package name="TO92D">
<pad name="B" x="0" y="1.905" drill="0.813" diameter="1.321" rot="R90" stop="yes" thermals="no"/>
<pad name="E" x="-1.27" y="0" drill="0.813" diameter="1.321" rot="R90" stop="yes" thermals="no"/>
<pad name="C" x="1.27" y="0" drill="0.813" diameter="1.321" rot="R90" stop="yes" thermals="no"/>
<wire layer="21" width="0.152" x1="-0.786" y1="2.549" x2="-2.095" y2="-1.651" curve="111.085705"/>
<wire layer="21" width="0.152" x1="2.095" y1="-1.651" x2="0.787" y2="2.548" curve="111.097872"/>
<wire layer="21" width="0.152" x1="-2.095" y1="-1.651" x2="2.095" y2="-1.651"/>
<wire layer="51" width="0.152" x1="-2.254" y1="-0.254" x2="-0.286" y2="-0.254"/>
<wire layer="51" width="0.152" x1="0.286" y1="-0.254" x2="2.254" y2="-0.254"/>
<wire layer="51" width="0.152" x1="0.786" y1="2.549" x2="-0.786" y2="2.549" curve="34.234935"/>
</package>
<package name="RESAD1490W55L950D360_AD1">
<pad name="1" x="-7.45" y="0" drill="0.8" diameter="1.2" rot="R0" stop="yes" thermals="no"/>
<pad name="2" x="7.45" y="0" drill="0.8" diameter="1.2" rot="R180" stop="yes" thermals="no"/>
<wire layer="21" width="0.12" x1="-3.17" y1="1.8" x2="-4.75" y2="1.8"/>
<wire layer="21" width="0.12" x1="-4.75" y1="1.8" x2="-4.75" y2="-1.8"/>
<wire layer="21" width="0.12" x1="-4.75" y1="-1.8" x2="-3.17" y2="-1.8"/>
<wire layer="21" width="0.12" x1="3.17" y1="1.8" x2="4.75" y2="1.8"/>
<wire layer="21" width="0.12" x1="4.75" y1="1.8" x2="4.75" y2="-1.8"/>
<wire layer="21" width="0.12" x1="4.75" y1="-1.8" x2="3.17" y2="-1.8"/>
<wire layer="21" width="0.12" x1="-6.67" y1="0" x2="-4.75" y2="0"/>
<wire layer="21" width="0.12" x1="4.75" y1="0" x2="6.67" y2="0"/>
<wire layer="51" width="0.12" x1="-4.75" y1="1.8" x2="4.75" y2="1.8"/>
<wire layer="51" width="0.12" x1="4.75" y1="1.8" x2="4.75" y2="-1.8"/>
<wire layer="51" width="0.12" x1="4.75" y1="-1.8" x2="-4.75" y2="-1.8"/>
<wire layer="51" width="0.12" x1="-4.75" y1="-1.8" x2="-4.75" y2="1.8"/>
<wire layer="51" width="0.12" x1="-6.85" y1="0" x2="-4.75" y2="0"/>
<wire layer="51" width="0.12" x1="4.75" y1="0" x2="6.85" y2="0"/>
</package>
<package name="RESAD1640W50L1112D360">
<pad name="1" x="-8.2" y="0" drill="0.76" diameter="1.16" rot="R0" stop="yes" thermals="no"/>
<pad name="2" x="8.2" y="0" drill="0.76" diameter="1.16" rot="R180" stop="yes" thermals="no"/>
<wire layer="21" width="0.12" x1="-3.71" y1="1.801" x2="-5.56" y2="1.801"/>
<wire layer="21" width="0.12" x1="-5.56" y1="1.801" x2="-5.56" y2="-1.801"/>
<wire layer="21" width="0.12" x1="-5.56" y1="-1.801" x2="-3.71" y2="-1.801"/>
<wire layer="21" width="0.12" x1="3.71" y1="1.801" x2="5.56" y2="1.801"/>
<wire layer="21" width="0.12" x1="5.56" y1="1.801" x2="5.56" y2="-1.801"/>
<wire layer="21" width="0.12" x1="5.56" y1="-1.801" x2="3.71" y2="-1.801"/>
<wire layer="21" width="0.12" x1="-7.44" y1="0" x2="-5.56" y2="0"/>
<wire layer="21" width="0.12" x1="5.56" y1="0" x2="7.44" y2="0"/>
<wire layer="51" width="0.12" x1="-5.56" y1="1.8" x2="5.56" y2="1.8"/>
<wire layer="51" width="0.12" x1="5.56" y1="1.8" x2="5.56" y2="-1.8"/>
<wire layer="51" width="0.12" x1="5.56" y1="-1.8" x2="-5.56" y2="-1.8"/>
<wire layer="51" width="0.12" x1="-5.56" y1="-1.8" x2="-5.56" y2="1.8"/>
<wire layer="51" width="0.12" x1="-7.62" y1="0" x2="-5.56" y2="0"/>
<wire layer="51" width="0.12" x1="5.56" y1="0" x2="7.62" y2="0"/>
</package>
<package name="DIP794W45P254L1969H508Q16">
<pad name="7" x="-3.97" y="-6.35" drill="0.78" diameter="1.13" rot="R90" stop="yes" thermals="no"/>
<pad name="8" x="-3.97" y="-8.89" drill="0.78" diameter="1.13" rot="R90" stop="yes" thermals="no"/>
<pad name="10" x="3.97" y="-6.35" drill="0.78" diameter="1.13" rot="R90" stop="yes" thermals="no"/>
<pad name="2" x="-3.97" y="6.35" drill="0.78" diameter="1.13" rot="R90" stop="yes" thermals="no"/>
<pad name="15" x="3.97" y="6.35" drill="0.78" diameter="1.13" rot="R90" stop="yes" thermals="no"/>
<pad name="1" x="-3.97" y="8.89" drill="0.78" shape="square" diameter="1.13" rot="R90" stop="yes" thermals="no"/>
<pad name="3" x="-3.97" y="3.81" drill="0.78" diameter="1.13" rot="R90" stop="yes" thermals="no"/>
<pad name="4" x="-3.97" y="1.27" drill="0.78" diameter="1.13" rot="R90" stop="yes" thermals="no"/>
<pad name="5" x="-3.97" y="-1.27" drill="0.78" diameter="1.13" rot="R90" stop="yes" thermals="no"/>
<pad name="6" x="-3.97" y="-3.81" drill="0.78" diameter="1.13" rot="R90" stop="yes" thermals="no"/>
<pad name="11" x="3.97" y="-3.81" drill="0.78" diameter="1.13" rot="R90" stop="yes" thermals="no"/>
<pad name="12" x="3.97" y="-1.27" drill="0.78" diameter="1.13" rot="R90" stop="yes" thermals="no"/>
<pad name="13" x="3.97" y="1.27" drill="0.78" diameter="1.13" rot="R90" stop="yes" thermals="no"/>
<pad name="14" x="3.97" y="3.81" drill="0.78" diameter="1.13" rot="R90" stop="yes" thermals="no"/>
<pad name="9" x="3.97" y="-8.89" drill="0.78" diameter="1.13" rot="R90" stop="yes" thermals="no"/>
<pad name="16" x="3.97" y="8.89" drill="0.78" diameter="1.13" rot="R90" stop="yes" thermals="no"/>
<circle layer="21" x="-5.035" y="8.89" radius="0.1" width="0"/>
<circle layer="51" x="-5.035" y="8.89" radius="0.1" width="0"/>
<wire layer="51" width="0.127" x1="-3.175" y1="9.652" x2="3.175" y2="9.652"/>
<wire layer="51" width="0.127" x1="-3.175" y1="-9.652" x2="3.175" y2="-9.652"/>
<wire layer="21" width="0.127" x1="-3.175" y1="9.775" x2="3.175" y2="9.775"/>
<wire layer="21" width="0.127" x1="-3.175" y1="-9.775" x2="3.175" y2="-9.775"/>
<wire layer="51" width="0.127" x1="-3.175" y1="9.652" x2="-3.175" y2="-9.652"/>
<wire layer="51" width="0.127" x1="3.175" y1="9.652" x2="3.175" y2="-9.652"/>
</package>
<package name="DO35-10">
<pad name="A" x="5.08" y="0" drill="0.61" shape="long" diameter="1.27" rot="R180" stop="yes" thermals="no"/>
<pad name="C" x="-5.08" y="0" drill="0.61" shape="long" diameter="1.27" rot="R180" stop="yes" thermals="no"/>
<wire layer="51" width="0.508" x1="5.08" y1="0" x2="4.191" y2="0"/>
<wire layer="51" width="0.508" x1="-5.08" y1="0" x2="-4.191" y2="0"/>
<wire layer="21" width="0.152" x1="-0.635" y1="0" x2="0" y2="0"/>
<wire layer="21" width="0.152" x1="1.016" y1="0.635" x2="1.016" y2="-0.635"/>
<wire layer="21" width="0.152" x1="1.016" y1="-0.635" x2="0" y2="0"/>
<wire layer="21" width="0.152" x1="0" y1="0" x2="1.524" y2="0"/>
<wire layer="21" width="0.152" x1="0" y1="0" x2="1.016" y2="0.635"/>
<wire layer="21" width="0.152" x1="0" y1="0.635" x2="0" y2="0"/>
<wire layer="21" width="0.152" x1="0" y1="0" x2="0" y2="-0.635"/>
<wire layer="21" width="0.152" x1="2.286" y1="0.762" x2="2.032" y2="1.016" curve="90.094781"/>
<wire layer="21" width="0.152" x1="-2.032" y1="1.016" x2="-2.286" y2="0.762" curve="90.094781"/>
<wire layer="21" width="0.152" x1="-2.286" y1="-0.762" x2="-2.032" y2="-1.016" curve="90.094781"/>
<wire layer="21" width="0.152" x1="2.032" y1="-1.016" x2="2.286" y2="-0.762" curve="90.094781"/>
<wire layer="21" width="0.152" x1="2.286" y1="-0.762" x2="2.286" y2="0.762"/>
<wire layer="21" width="0.152" x1="-2.286" y1="0.762" x2="-2.286" y2="-0.762"/>
<wire layer="21" width="0.152" x1="-2.032" y1="1.016" x2="2.032" y2="1.016"/>
<wire layer="21" width="0.152" x1="-2.032" y1="-1.016" x2="2.032" y2="-1.016"/>
<rectangle x1="-1.905" y1="1.016" x2="-1.397" y2="-1.016" layer="21" rot="R0"/>
<rectangle x1="2.286" y1="0.254" x2="4.191" y2="-0.254" layer="21" rot="R0"/>
</package>
<package name="MODULE_A000005">
<pad name="2" x="-7.62" y="15.24" drill="1" diameter="1.508" rot="R90" stop="yes" thermals="no"/>
<pad name="1" x="-7.62" y="17.78" drill="1" shape="square" diameter="1.508" rot="R90" stop="yes" thermals="no"/>
<pad name="5" x="-7.62" y="7.62" drill="1" diameter="1.508" rot="R90" stop="yes" thermals="no"/>
<pad name="6" x="-7.62" y="5.08" drill="1" diameter="1.508" rot="R90" stop="yes" thermals="no"/>
<pad name="7" x="-7.62" y="2.54" drill="1" diameter="1.508" rot="R90" stop="yes" thermals="no"/>
<pad name="8" x="-7.62" y="0" drill="1" diameter="1.508" rot="R90" stop="yes" thermals="no"/>
<pad name="9" x="-7.62" y="-2.54" drill="1" diameter="1.508" rot="R90" stop="yes" thermals="no"/>
<pad name="10" x="-7.62" y="-5.08" drill="1" diameter="1.508" rot="R90" stop="yes" thermals="no"/>
<pad name="11" x="-7.62" y="-7.62" drill="1" diameter="1.508" rot="R90" stop="yes" thermals="no"/>
<pad name="12" x="-7.62" y="-10.16" drill="1" diameter="1.508" rot="R90" stop="yes" thermals="no"/>
<pad name="13" x="-7.62" y="-12.7" drill="1" diameter="1.508" rot="R90" stop="yes" thermals="no"/>
<pad name="14" x="-7.62" y="-15.24" drill="1" diameter="1.508" rot="R90" stop="yes" thermals="no"/>
<pad name="15" x="-7.62" y="-17.78" drill="1" diameter="1.508" rot="R90" stop="yes" thermals="no"/>
<pad name="16" x="7.62" y="-17.78" drill="1" diameter="1.508" rot="R270" stop="yes" thermals="no"/>
<pad name="26" x="7.62" y="7.62" drill="1" diameter="1.508" rot="R270" stop="yes" thermals="no"/>
<pad name="25" x="7.62" y="5.08" drill="1" diameter="1.508" rot="R270" stop="yes" thermals="no"/>
<pad name="24" x="7.62" y="2.54" drill="1" diameter="1.508" rot="R270" stop="yes" thermals="no"/>
<pad name="23" x="7.62" y="0" drill="1" diameter="1.508" rot="R270" stop="yes" thermals="no"/>
<pad name="22" x="7.62" y="-2.54" drill="1" diameter="1.508" rot="R270" stop="yes" thermals="no"/>
<pad name="21" x="7.62" y="-5.08" drill="1" diameter="1.508" rot="R270" stop="yes" thermals="no"/>
<pad name="20" x="7.62" y="-7.62" drill="1" diameter="1.508" rot="R270" stop="yes" thermals="no"/>
<pad name="19" x="7.62" y="-10.16" drill="1" diameter="1.508" rot="R270" stop="yes" thermals="no"/>
<pad name="18" x="7.62" y="-12.7" drill="1" diameter="1.508" rot="R270" stop="yes" thermals="no"/>
<pad name="3" x="-7.62" y="12.7" drill="1" diameter="1.508" rot="R90" stop="yes" thermals="no"/>
<pad name="30" x="7.62" y="17.78" drill="1" diameter="1.508" rot="R270" stop="yes" thermals="no"/>
<pad name="29" x="7.62" y="15.24" drill="1" diameter="1.508" rot="R270" stop="yes" thermals="no"/>
<pad name="17" x="7.62" y="-15.24" drill="1" diameter="1.508" rot="R270" stop="yes" thermals="no"/>
<pad name="27" x="7.62" y="10.16" drill="1" diameter="1.508" rot="R270" stop="yes" thermals="no"/>
<pad name="4" x="-7.62" y="10.16" drill="1" diameter="1.508" rot="R90" stop="yes" thermals="no"/>
<pad name="28" x="7.62" y="12.7" drill="1" diameter="1.508" rot="R270" stop="yes" thermals="no"/>
<hole x="-7.62" y="-20.32" drill="1.651"/>
<hole x="7.62" y="-20.32" drill="1.651"/>
<hole x="-7.62" y="20.32" drill="1.651"/>
<hole x="7.62" y="20.32" drill="1.651"/>
<wire layer="21" width="0.127" x1="-8.89" y1="21.59" x2="8.89" y2="21.59"/>
<wire layer="21" width="0.127" x1="8.89" y1="21.59" x2="8.89" y2="-21.59"/>
<wire layer="21" width="0.127" x1="8.89" y1="-21.59" x2="-8.89" y2="-21.59"/>
<wire layer="21" width="0.127" x1="-8.89" y1="-21.59" x2="-8.89" y2="21.59"/>
<wire layer="51" width="0.127" x1="-8.89" y1="21.59" x2="8.89" y2="21.59"/>
<wire layer="51" width="0.127" x1="-8.89" y1="-21.59" x2="-8.89" y2="21.59"/>
<wire layer="51" width="0.127" x1="8.89" y1="21.59" x2="8.89" y2="-21.59"/>
<wire layer="51" width="0.127" x1="8.89" y1="-21.59" x2="-8.89" y2="-21.59"/>
<circle layer="51" x="-9.75" y="18" radius="0.1" width="0"/>
</package>
<package name="DIP762W50P254L458H480Q4">
<pad name="1" x="-3.81" y="1.27" drill="0.85" shape="square" diameter="1.35" rot="R90" stop="yes" thermals="no"/>
<pad name="2" x="-3.81" y="-1.27" drill="0.85" diameter="1.35" rot="R90" stop="yes" thermals="no"/>
<pad name="3" x="3.81" y="-1.27" drill="0.85" diameter="1.35" rot="R90" stop="yes" thermals="no"/>
<pad name="4" x="3.81" y="1.27" drill="0.85" diameter="1.35" rot="R90" stop="yes" thermals="no"/>
<wire layer="21" width="0.2" x1="-2.8" y1="2.3" x2="2.8" y2="2.3"/>
<wire layer="21" width="0.2" x1="2.8" y1="2.29" x2="2.8" y2="-2.29"/>
<wire layer="21" width="0.2" x1="2.8" y1="-2.29" x2="-2.8" y2="-2.29"/>
<wire layer="21" width="0.2" x1="-2.8" y1="-2.29" x2="-2.8" y2="2.29"/>
<circle layer="21" x="-4.003" y="2.33" radius="0.1" width="0.127"/>
</package>
</packages>
<symbols>
<symbol name="GND">
<wire layer="94" width="0.25" x1="-1.905" y1="1.016" x2="1.905" y2="1.016"/>
<wire layer="94" width="0.25" x1="-1.27" y1="0" x2="1.27" y2="0"/>
<wire layer="94" width="0.25" x1="-0.508" y1="-1.016" x2="0.508" y2="-1.016"/>
<pin name="GND" visible="pad" length="short" direction="sup" rot="R270" x="0" y="3.556"/>
</symbol>
<symbol name="2N3906">
<wire layer="94" width="0.152" x1="2.54" y1="-2.54" x2="0" y2="0"/>
<wire layer="94" width="0.152" x1="0" y1="0" x2="1.016" y2="1.016"/>
<wire layer="94" width="0.152" x1="1.651" y1="2.413" x2="1.016" y2="1.016"/>
<wire layer="94" width="0.152" x1="1.016" y1="1.016" x2="1.27" y2="1.27"/>
<wire layer="94" width="0.152" x1="1.27" y1="1.27" x2="2.54" y2="2.54"/>
<wire layer="94" width="0.152" x1="1.016" y1="1.016" x2="2.413" y2="1.651"/>
<wire layer="94" width="0.152" x1="2.413" y1="1.651" x2="1.651" y2="2.413"/>
<wire layer="94" width="0.254" x1="1.27" y1="1.27" x2="1.651" y2="2.159"/>
<wire layer="94" width="0.254" x1="1.651" y1="2.159" x2="2.159" y2="1.651"/>
<wire layer="94" width="0.254" x1="2.159" y1="1.651" x2="1.27" y2="1.27"/>
<wire layer="94" width="0.254" x1="1.651" y1="1.905" x2="1.905" y2="1.651"/>
<rectangle x1="-0.382" y1="2.54" x2="0.381" y2="-2.544" layer="94" rot="R0"/>
<pin name="B" visible="pad" length="short" direction="pas" x="-2.54" y="0"/>
<pin name="E" visible="pad" length="short" direction="pas" rot="R270" x="2.54" y="5.08"/>
<pin name="C" visible="pad" length="short" direction="pas" rot="R90" x="2.54" y="-5.08"/>
</symbol>
<symbol name="+5V">
<wire layer="94" width="0.25" x1="-2.54" y1="0" x2="2.54" y2="0"/>
<pin name="+5V" visible="pad" length="short" direction="sup" rot="R90" x="0" y="-2.54"/>
</symbol>
<symbol name="CFR1WSJT-52-10K">
<wire layer="94" width="0.25" x1="3.175" y1="-1.27" x2="3.81" y2="0"/>
<wire layer="94" width="0.25" x1="1.905" y1="1.27" x2="3.175" y2="-1.27"/>
<wire layer="94" width="0.25" x1="0.635" y1="-1.27" x2="1.905" y2="1.27"/>
<wire layer="94" width="0.25" x1="-0.635" y1="1.27" x2="0.635" y2="-1.27"/>
<wire layer="94" width="0.25" x1="-1.905" y1="-1.27" x2="-0.635" y2="1.27"/>
<wire layer="94" width="0.25" x1="-3.175" y1="1.27" x2="-1.905" y2="-1.27"/>
<wire layer="94" width="0.25" x1="-3.81" y1="0" x2="-3.175" y2="1.27"/>
<pin name="2" visible="pad" length="short" direction="pas" rot="R180" x="6.35" y="0"/>
<pin name="1" visible="pad" length="short" direction="pas" x="-6.35" y="0"/>
</symbol>
<symbol name="ALSR0110R00JE12">
<wire layer="94" width="0.25" x1="3.175" y1="-1.27" x2="3.81" y2="0"/>
<wire layer="94" width="0.25" x1="1.905" y1="1.27" x2="3.175" y2="-1.27"/>
<wire layer="94" width="0.25" x1="0.635" y1="-1.27" x2="1.905" y2="1.27"/>
<wire layer="94" width="0.25" x1="-0.635" y1="1.27" x2="0.635" y2="-1.27"/>
<wire layer="94" width="0.25" x1="-1.905" y1="-1.27" x2="-0.635" y2="1.27"/>
<wire layer="94" width="0.25" x1="-3.175" y1="1.27" x2="-1.905" y2="-1.27"/>
<wire layer="94" width="0.25" x1="-3.81" y1="0" x2="-3.175" y2="1.27"/>
<pin name="2" visible="pad" length="short" direction="pas" rot="R180" x="6.35" y="0"/>
<pin name="1" visible="pad" length="short" direction="pas" x="-6.35" y="0"/>
</symbol>
<symbol name="TPIC6C596N">
<wire layer="94" width="0.41" x1="-12.7" y1="20.32" x2="12.7" y2="20.32"/>
<wire layer="94" width="0.41" x1="12.7" y1="20.32" x2="12.7" y2="-20.32"/>
<wire layer="94" width="0.41" x1="12.7" y1="-20.32" x2="-12.7" y2="-20.32"/>
<wire layer="94" width="0.41" x1="-12.7" y1="-20.32" x2="-12.7" y2="20.32"/>
<pin name="CLR" visible="both" length="short" direction="in" x="-15.24" y="12.7"/>
<pin name="G" visible="both" length="short" direction="in" x="-15.24" y="10.16"/>
<pin name="RCK" visible="both" length="short" direction="in" x="-15.24" y="7.62"/>
<pin name="SERIN" visible="both" length="short" direction="in" x="-15.24" y="5.08"/>
<pin name="SRCK" visible="both" length="short" direction="in" x="-15.24" y="2.54"/>
<pin name="VCC" visible="both" length="short" direction="pwr" rot="R180" x="15.24" y="17.78"/>
<pin name="DRAIN0" visible="both" length="short" direction="out" rot="R180" x="15.24" y="12.7"/>
<pin name="DRAIN1" visible="both" length="short" direction="out" rot="R180" x="15.24" y="10.16"/>
<pin name="DRAIN2" visible="both" length="short" direction="out" rot="R180" x="15.24" y="7.62"/>
<pin name="DRAIN3" visible="both" length="short" direction="out" rot="R180" x="15.24" y="5.08"/>
<pin name="DRAIN4" visible="both" length="short" direction="out" rot="R180" x="15.24" y="2.54"/>
<pin name="DRAIN5" visible="both" length="short" direction="out" rot="R180" x="15.24" y="0"/>
<pin name="DRAIN6" visible="both" length="short" direction="out" rot="R180" x="15.24" y="-2.54"/>
<pin name="DRAIN7" visible="both" length="short" direction="out" rot="R180" x="15.24" y="-5.08"/>
<pin name="SEROUT" visible="both" length="short" direction="out" rot="R180" x="15.24" y="-7.62"/>
<pin name="GND" visible="both" length="short" direction="pwr" rot="R180" x="15.24" y="-15.24"/>
</symbol>
<symbol name="DIO_LED_1">
<wire layer="94" width="0.25" x1="-0.61" y1="2.248" x2="0.083" y2="3.294"/>
<polygon layer="94" width="0.002">
<vertex x="0.635" y="4.128"/>
<vertex x="-0.126" y="3.432"/>
<vertex x="0.291" y="3.156"/>
</polygon>
<wire layer="94" width="0.25" x1="1.575" y1="-1.905" x2="1.575" y2="1.905"/>
<wire layer="94" width="0.25" x1="0.343" y1="1.613" x2="1.035" y2="2.659"/>
<polygon layer="94" width="0.002">
<vertex x="1.588" y="3.492"/>
<vertex x="0.827" y="2.797"/>
<vertex x="1.244" y="2.521"/>
</polygon>
<wire layer="94" width="0.25" x1="1.575" y1="0" x2="2.54" y2="0"/>
<wire layer="94" width="0.25" x1="-2.54" y1="0" x2="-1.6" y2="0"/>
<wire layer="94" width="0.25" x1="1.575" y1="0" x2="-1.6" y2="1.905"/>
<wire layer="94" width="0.25" x1="-1.6" y1="1.905" x2="-1.6" y2="-1.905"/>
<wire layer="94" width="0.25" x1="-1.6" y1="-1.905" x2="1.575" y2="0"/>
<pin name="K" visible="pad" length="short" direction="pas" rot="R180" x="5.08" y="0"/>
<pin name="A" visible="pad" length="short" direction="pas" x="-5.08" y="0"/>
</symbol>
<symbol name="VCC">
<wire layer="94" width="0.25" x1="-2.54" y1="0" x2="2.54" y2="0"/>
<pin name="VCC" visible="pad" length="short" direction="sup" rot="R90" x="0" y="-2.54"/>
</symbol>
<symbol name="+12V">
<wire layer="94" width="0.25" x1="-2.54" y1="0" x2="2.54" y2="0"/>
<pin name="+12V" visible="pad" length="short" direction="sup" rot="R90" x="0" y="-2.54"/>
</symbol>
<symbol name="1N4148">
<wire layer="94" width="0.254" x1="-1.27" y1="-1.27" x2="1.27" y2="0"/>
<wire layer="94" width="0.254" x1="1.27" y1="0" x2="-1.27" y2="1.27"/>
<wire layer="94" width="0.254" x1="1.27" y1="1.27" x2="1.27" y2="0"/>
<wire layer="94" width="0.254" x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27"/>
<wire layer="94" width="0.254" x1="1.27" y1="0" x2="1.27" y2="-1.27"/>
<pin name="A" visible="pad" length="short" direction="pas" x="-2.54" y="0"/>
<pin name="C" visible="pad" length="short" direction="pas" rot="R180" x="2.54" y="0"/>
</symbol>
<symbol name="A000005">
<wire layer="94" width="0.254" x1="-15.24" y1="20.32" x2="15.24" y2="20.32"/>
<wire layer="94" width="0.254" x1="15.24" y1="20.32" x2="15.24" y2="-20.32"/>
<wire layer="94" width="0.254" x1="15.24" y1="-20.32" x2="-15.24" y2="-20.32"/>
<wire layer="94" width="0.254" x1="-15.24" y1="-20.32" x2="-15.24" y2="20.32"/>
<pin name="D1/RX" visible="both" length="short" direction="io" x="-17.78" y="15.24"/>
<pin name="D0/TX" visible="both" length="short" direction="io" x="-17.78" y="17.78"/>
<pin name="D2" visible="both" length="short" direction="io" x="-17.78" y="7.62"/>
<pin name="D3" visible="both" length="short" direction="io" x="-17.78" y="5.08"/>
<pin name="D4" visible="both" length="short" direction="io" x="-17.78" y="2.54"/>
<pin name="D5" visible="both" length="short" direction="io" x="-17.78" y="0"/>
<pin name="D6" visible="both" length="short" direction="io" x="-17.78" y="-2.54"/>
<pin name="D7" visible="both" length="short" direction="io" x="-17.78" y="-5.08"/>
<pin name="D8" visible="both" length="short" direction="io" x="-17.78" y="-7.62"/>
<pin name="D9" visible="both" length="short" direction="io" x="-17.78" y="-10.16"/>
<pin name="D10" visible="both" length="short" direction="io" x="-17.78" y="-12.7"/>
<pin name="D11" visible="both" length="short" direction="io" x="-17.78" y="-15.24"/>
<pin name="D12" visible="both" length="short" direction="io" x="-17.78" y="-17.78"/>
<pin name="D13" visible="both" length="short" direction="io" rot="R180" x="17.78" y="-17.78"/>
<pin name="A7" visible="both" length="short" direction="in" rot="R180" x="17.78" y="7.62"/>
<pin name="A6" visible="both" length="short" direction="in" rot="R180" x="17.78" y="5.08"/>
<pin name="A5" visible="both" length="short" direction="in" rot="R180" x="17.78" y="2.54"/>
<pin name="A4" visible="both" length="short" direction="in" rot="R180" x="17.78" y="0"/>
<pin name="A3" visible="both" length="short" direction="in" rot="R180" x="17.78" y="-2.54"/>
<pin name="A2" visible="both" length="short" direction="in" rot="R180" x="17.78" y="-5.08"/>
<pin name="A1" visible="both" length="short" direction="in" rot="R180" x="17.78" y="-7.62"/>
<pin name="A0" visible="both" length="short" direction="in" rot="R180" x="17.78" y="-10.16"/>
<pin name="AREF" visible="both" length="short" direction="in" rot="R180" x="17.78" y="-12.7"/>
<pin name="RESET_1" visible="both" length="short" direction="in" x="-17.78" y="12.7"/>
<pin name="VIN" visible="both" length="short" direction="pwr" rot="R180" x="17.78" y="17.78"/>
<pin name="GND_2" visible="both" length="short" direction="pwr" rot="R180" x="17.78" y="15.24"/>
<pin name="3V3" visible="both" length="short" direction="pwr" rot="R180" x="17.78" y="-15.24"/>
<pin name="5V" visible="both" length="short" direction="pwr" rot="R180" x="17.78" y="10.16"/>
<pin name="GND_1" visible="both" length="short" direction="pwr" x="-17.78" y="10.16"/>
<pin name="RESET_2" visible="both" length="short" direction="in" rot="R180" x="17.78" y="12.7"/>
</symbol>
<symbol name="SFH618A-2">
<wire layer="94" width="0.254" x1="-3.81" y1="1.27" x2="-5.08" y2="-1.27"/>
<wire layer="94" width="0.254" x1="-5.08" y1="-1.27" x2="-6.35" y2="1.27"/>
<wire layer="94" width="0.254" x1="-3.81" y1="-1.27" x2="-5.08" y2="-1.27"/>
<wire layer="94" width="0.254" x1="-5.08" y1="-1.27" x2="-6.35" y2="-1.27"/>
<wire layer="94" width="0.254" x1="-3.81" y1="1.27" x2="-5.08" y2="1.27"/>
<wire layer="94" width="0.254" x1="-5.08" y1="1.27" x2="-6.35" y2="1.27"/>
<wire layer="94" width="0.152" x1="-5.08" y1="1.27" x2="-5.08" y2="-1.27"/>
<wire layer="94" width="0.254" x1="-5.08" y1="-1.27" x2="-5.08" y2="-2.54"/>
<wire layer="94" width="0.254" x1="4.826" y1="0" x2="7.366" y2="2.54"/>
<wire layer="94" width="0.254" x1="-5.08" y1="1.27" x2="-5.08" y2="2.54"/>
<rectangle x1="4.448" y1="2.032" x2="5.207" y2="-2.033" layer="94" rot="R0"/>
<wire layer="94" width="0.406" x1="-10.16" y1="-2.54" x2="-10.16" y2="2.54"/>
<wire layer="94" width="0.254" x1="-10.16" y1="2.54" x2="-5.08" y2="2.54"/>
<wire layer="94" width="0.254" x1="-5.08" y1="-2.54" x2="-10.16" y2="-2.54"/>
<polygon layer="94" width="0.002">
<vertex x="6.731" y="-1.397"/>
<vertex x="6.096" y="-2.032"/>
<vertex x="7.112" y="-2.286"/>
<vertex x="6.731" y="-1.397"/>
</polygon>
<wire layer="94" width="0.254" x1="9.906" y1="2.54" x2="7.366" y2="2.54"/>
<wire layer="94" width="0.406" x1="-10.16" y1="2.54" x2="-10.16" y2="5.08"/>
<wire layer="94" width="0.406" x1="-10.16" y1="5.08" x2="10.16" y2="5.08"/>
<wire layer="94" width="0.254" x1="4.826" y1="0" x2="7.366" y2="-2.54"/>
<wire layer="94" width="0.406" x1="-10.16" y1="-2.54" x2="-10.16" y2="-5.08"/>
<wire layer="94" width="0.406" x1="-10.16" y1="-5.08" x2="10.16" y2="-5.08"/>
<wire layer="94" width="0.406" x1="10.16" y1="-5.08" x2="10.16" y2="-2.54"/>
<polygon layer="94" width="0.002">
<vertex x="-0.889" y="0.635"/>
<vertex x="0" y="-0.254"/>
<vertex x="-1.27" y="0"/>
<vertex x="-0.889" y="0.635"/>
</polygon>
<wire layer="94" width="0.406" x1="10.16" y1="-2.54" x2="10.16" y2="5.08"/>
<wire layer="94" width="0.254" x1="7.366" y1="-2.54" x2="10.16" y2="-2.54"/>
<wire layer="94" width="0.254" x1="-3.048" y1="1.016" x2="-1.016" y2="0.254"/>
<polygon layer="94" width="0.002">
<vertex x="-1.397" y="-0.889"/>
<vertex x="-0.508" y="-1.778"/>
<vertex x="-1.778" y="-1.524"/>
<vertex x="-1.397" y="-0.889"/>
</polygon>
<wire layer="94" width="0.254" x1="-3.556" y1="-0.508" x2="-1.524" y2="-1.27"/>
<pin name="A" visible="pad" length="short" direction="pas" x="-12.7" y="2.54"/>
<pin name="C" visible="pad" length="short" direction="pas" x="-12.7" y="-2.54"/>
<pin name="E" visible="pad" length="short" direction="pas" rot="R180" x="12.7" y="-2.54"/>
<pin name="CO" visible="pad" length="short" direction="pas" rot="R180" x="12.7" y="2.54"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="NetPort">
<gates>
<gate name="PART_1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<connects/>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="2N3906" prefix="Q">
<gates>
<gate name="PART_1" symbol="2N3906" x="-1.079" y="0.002"/>
</gates>
<devices>
<device name="" package="TO92D">
<connects>
<connect gate="PART_1" pin="B" pad="B"/>
<connect gate="PART_1" pin="E" pad="E"/>
<connect gate="PART_1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Trans GP BJT PNP 40V 0.2A 625mW Automotive 3-Pin TO-92 Ammo"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+5V" prefix="NetPort">
<gates>
<gate name="PART_1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<connects/>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CFR1WSJT-52-10K" prefix="R">
<gates>
<gate name="PART_1" symbol="CFR1WSJT-52-10K" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RESAD1490W55L950D360_AD1">
<connects>
<connect gate="PART_1" pin="2" pad="2"/>
<connect gate="PART_1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER" value="Yageo"/>
<attribute name="DATASHEET" value="http://datasheets.diptrace.com/yageo/cfr.pdf"/>
<attribute name="PART_NUMBER_(DIGI-KEY)" value="CFR1WSJT-52-10K-ND"/>
<attribute name="UNIQUE_NAME" value="YAGEO_CFR1WS"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ALSR0110R00JE12" prefix="R">
<gates>
<gate name="PART_1" symbol="ALSR0110R00JE12" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RESAD1640W50L1112D360">
<connects>
<connect gate="PART_1" pin="2" pad="2"/>
<connect gate="PART_1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER" value="Vishay"/>
<attribute name="DATASHEET" value="http://datasheets.diptrace.com/vishay/alsralvr.pdf"/>
<attribute name="PART_NUMBER_(DIGI-KEY)" value="ALSR1J-10-ND"/>
<attribute name="UNIQUE_NAME" value="VISHAY_ALSR01"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TPIC6C596N" prefix="U">
<gates>
<gate name="PART_1" symbol="TPIC6C596N" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIP794W45P254L1969H508Q16">
<connects>
<connect gate="PART_1" pin="CLR" pad="7"/>
<connect gate="PART_1" pin="G" pad="8"/>
<connect gate="PART_1" pin="RCK" pad="10"/>
<connect gate="PART_1" pin="SERIN" pad="2"/>
<connect gate="PART_1" pin="SRCK" pad="15"/>
<connect gate="PART_1" pin="VCC" pad="1"/>
<connect gate="PART_1" pin="DRAIN0" pad="3"/>
<connect gate="PART_1" pin="DRAIN1" pad="4"/>
<connect gate="PART_1" pin="DRAIN2" pad="5"/>
<connect gate="PART_1" pin="DRAIN3" pad="6"/>
<connect gate="PART_1" pin="DRAIN4" pad="11"/>
<connect gate="PART_1" pin="DRAIN5" pad="12"/>
<connect gate="PART_1" pin="DRAIN6" pad="13"/>
<connect gate="PART_1" pin="DRAIN7" pad="14"/>
<connect gate="PART_1" pin="SEROUT" pad="9"/>
<connect gate="PART_1" pin="GND" pad="16"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Automotive 8-bit shift register 16-PDIP -40 to 125"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="DIO_LED_1" prefix="D">
<gates>
<gate name="PART_1" symbol="DIO_LED_1" x="0" y="-1.111"/>
</gates>
<devices>
<device name="">
<connects/>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="LED"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VCC" prefix="NetPort">
<gates>
<gate name="PART_1" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<connects/>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+12V" prefix="NetPort">
<gates>
<gate name="PART_1" symbol="+12V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<connects/>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="1N4148" prefix="D">
<gates>
<gate name="PART_1" symbol="1N4148" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DO35-10">
<connects>
<connect gate="PART_1" pin="A" pad="A"/>
<connect gate="PART_1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Diode Standard 75V 300mA (DC) Through Hole DO-35"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="A000005" prefix="U">
<gates>
<gate name="PART_1" symbol="A000005" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MODULE_A000005">
<connects>
<connect gate="PART_1" pin="D1/RX" pad="2"/>
<connect gate="PART_1" pin="D0/TX" pad="1"/>
<connect gate="PART_1" pin="D2" pad="5"/>
<connect gate="PART_1" pin="D3" pad="6"/>
<connect gate="PART_1" pin="D4" pad="7"/>
<connect gate="PART_1" pin="D5" pad="8"/>
<connect gate="PART_1" pin="D6" pad="9"/>
<connect gate="PART_1" pin="D7" pad="10"/>
<connect gate="PART_1" pin="D8" pad="11"/>
<connect gate="PART_1" pin="D9" pad="12"/>
<connect gate="PART_1" pin="D10" pad="13"/>
<connect gate="PART_1" pin="D11" pad="14"/>
<connect gate="PART_1" pin="D12" pad="15"/>
<connect gate="PART_1" pin="D13" pad="16"/>
<connect gate="PART_1" pin="A7" pad="26"/>
<connect gate="PART_1" pin="A6" pad="25"/>
<connect gate="PART_1" pin="A5" pad="24"/>
<connect gate="PART_1" pin="A4" pad="23"/>
<connect gate="PART_1" pin="A3" pad="22"/>
<connect gate="PART_1" pin="A2" pad="21"/>
<connect gate="PART_1" pin="A1" pad="20"/>
<connect gate="PART_1" pin="A0" pad="19"/>
<connect gate="PART_1" pin="AREF" pad="18"/>
<connect gate="PART_1" pin="RESET_1" pad="3"/>
<connect gate="PART_1" pin="VIN" pad="30"/>
<connect gate="PART_1" pin="GND_2" pad="29"/>
<connect gate="PART_1" pin="3V3" pad="17"/>
<connect gate="PART_1" pin="5V" pad="27"/>
<connect gate="PART_1" pin="GND_1" pad="4"/>
<connect gate="PART_1" pin="RESET_2" pad="28"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="ATmega328 Arduino Nano AVR&#174; ATmega AVR MCU 8-Bit Embedded Evaluation Board"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SFH618A-2" prefix="U">
<gates>
<gate name="PART_1" symbol="SFH618A-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIP762W50P254L458H480Q4">
<connects>
<connect gate="PART_1" pin="A" pad="1"/>
<connect gate="PART_1" pin="C" pad="2"/>
<connect gate="PART_1" pin="E" pad="3"/>
<connect gate="PART_1" pin="CO" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Optoisolator Transistor Output 5300Vrms 1 Channel 4-DIP"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<classes>
<class number="0" name="Default" width="0" drill="0"/>
</classes>
<parts>
<part name="U1" library="common" deviceset="TPIC6C596N" device=""/>
<part name="U2" library="common" deviceset="A000005" device=""/>
<part name="U3" library="common" deviceset="SFH618A-2" device=""/>
<part name="Q1" library="common" deviceset="2N3906" device=""/>
<part name="D1" library="common" deviceset="1N4148" device=""/>
<part name="R1" library="common" deviceset="CFR1WSJT-52-10K" device=""/>
<part name="R2" library="common" deviceset="CFR1WSJT-52-10K" device=""/>
<part name="R3" library="common" deviceset="CFR1WSJT-52-10K" device=""/>
<part name="R4" library="common" deviceset="CFR1WSJT-52-10K" device=""/>
<part name="NetPort1" library="common" deviceset="VCC" device=""/>
<part name="NetPort2" library="common" deviceset="VCC" device=""/>
<part name="NetPort3" library="common" deviceset="VCC" device=""/>
<part name="NetPort4" library="common" deviceset="VCC" device=""/>
<part name="NetPort5" library="common" deviceset="GND" device=""/>
<part name="NetPort6" library="common" deviceset="GND" device=""/>
<part name="NetPort7" library="common" deviceset="GND" device=""/>
<part name="NetPort8" library="common" deviceset="GND" device=""/>
<part name="NetPort9" library="common" deviceset="+12V" device=""/>
<part name="D2" library="common" deviceset="DIO_LED_1" device=""/>
<part name="D3" library="common" deviceset="DIO_LED_1" device=""/>
<part name="D4" library="common" deviceset="DIO_LED_1" device=""/>
<part name="D5" library="common" deviceset="DIO_LED_1" device=""/>
<part name="D6" library="common" deviceset="DIO_LED_1" device=""/>
<part name="D7" library="common" deviceset="DIO_LED_1" device=""/>
<part name="D8" library="common" deviceset="DIO_LED_1" device=""/>
<part name="R5" library="common" deviceset="ALSR0110R00JE12" device=""/>
<part name="R6" library="common" deviceset="ALSR0110R00JE12" device=""/>
<part name="R7" library="common" deviceset="ALSR0110R00JE12" device=""/>
<part name="R8" library="common" deviceset="ALSR0110R00JE12" device=""/>
<part name="R9" library="common" deviceset="ALSR0110R00JE12" device=""/>
<part name="R10" library="common" deviceset="ALSR0110R00JE12" device=""/>
<part name="R11" library="common" deviceset="ALSR0110R00JE12" device=""/>
<part name="R12" library="common" deviceset="ALSR0110R00JE12" device=""/>
<part name="D9" library="common" deviceset="DIO_LED_1" device=""/>
<part name="D10" library="common" deviceset="DIO_LED_1" device=""/>
<part name="D11" library="common" deviceset="DIO_LED_1" device=""/>
<part name="D12" library="common" deviceset="DIO_LED_1" device=""/>
<part name="D13" library="common" deviceset="DIO_LED_1" device=""/>
<part name="D14" library="common" deviceset="DIO_LED_1" device=""/>
<part name="D15" library="common" deviceset="DIO_LED_1" device=""/>
<part name="D16" library="common" deviceset="DIO_LED_1" device=""/>
<part name="D17" library="common" deviceset="DIO_LED_1" device=""/>
<part name="NetPort10" library="common" deviceset="+5V" device=""/>
</parts>
<modules/>
<sheets>
<sheet>
<plain>
<text x="-85.09" y="16.51" size="2.22" layer="97" font="vector" ratio="10" rot="R0" align="top-left" distance="92">7.5K</text>
<text x="-58.42" y="38.1" size="2.22" layer="97" font="vector" ratio="10" rot="R0" align="top-left" distance="92">47K</text>
<text x="-78.74" y="-8.89" size="2.22" layer="97" font="vector" ratio="10" rot="R0" align="top-left" distance="92">1N4148</text>
<text x="-46.99" y="36.83" size="2.22" layer="97" font="vector" ratio="10" rot="R0" align="top-left" distance="92">2N3906</text>
<text x="-29.21" y="48.26" size="2.22" layer="97" font="vector" ratio="10" rot="R0" align="top-left" distance="92">10K</text>
<text x="-50.8" y="-13.97" size="2.22" layer="97" font="vector" ratio="10" rot="R0" align="top-left" distance="92">SFH618A</text>
<text x="-8.89" y="-7.62" size="2.467" layer="97" font="vector" ratio="10" rot="R0" align="top-left" distance="92">10K</text>
<text x="-3.81" y="26.67" size="2.467" layer="97" font="vector" ratio="10" rot="R0" align="top-left" distance="92">NANO</text>
<text x="67.31" y="13.97" size="2.22" layer="97" font="vector" ratio="10" rot="R0" align="top-left" distance="92">TPIC6C596</text>
<text x="-95.25" y="30.48" size="2.22" layer="97" font="vector" ratio="10" rot="R90" align="top-left" distance="92">TACH FROM OBBD2 PIN9</text>
<text x="113.03" y="-10.16" size="1.727" layer="97" font="vector" ratio="10" rot="R0" align="top-left" distance="92">127Ohm</text>
<text x="105.41" y="-13.97" size="1.974" layer="97" font="vector" ratio="10" rot="R0" align="top-left" distance="92">(On cluster board)</text>
<text x="148.59" y="72.39" size="1.974" layer="97" font="vector" ratio="10" rot="R0" align="top-left" distance="92">(On cluster board)</text>
<text x="128.27" y="62.23" size="1.727" layer="97" font="vector" ratio="10" rot="R0" align="top-left" distance="92">Board LED pairs
(8 pairs total)</text>
<text x="75.271" y="43.18" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">U1</text>
<text x="3.824" y="43.18" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">U2</text>
<text x="-35.557" y="-4.317" size="1.233" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="92">C</text>
<text x="-50.802" y="-4.571" size="1.233" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="92">A</text>
<text x="-35.56" y="-10.668" size="1.233" layer="97" font="vector" ratio="10" rot="R0" align="top-right" distance="92">E</text>
<text x="-50.806" y="-11.942" size="1.233" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="92">C</text>
<text x="-44.436" y="-2.54" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">U3</text>
<text x="-41.68" y="39.638" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="top-left" distance="76">Q1</text>
<text x="-73.89" y="-8.549" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">D1</text>
<text x="-55.539" y="42.14" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">R1</text>
<text x="-89.13" y="13.984" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">R2</text>
<text x="-7.606" y="-3.58" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">R3</text>
<text x="-31.98" y="45.698" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">R4</text>
<text x="-42.787" y="66.27" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">VCC</text>
<text x="27.063" y="66.27" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">VCC</text>
<text x="93.103" y="66.27" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">VCC</text>
<text x="3.58" y="-33.897" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">VCC</text>
<text x="-89.535" y="-34.804" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">GND</text>
<text x="-24.765" y="-34.804" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">GND</text>
<text x="2.788" y="66.675" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">GND</text>
<text x="93.345" y="-34.804" size="1.48" layer="97" font="vector" ratio="10" rot="R90" align="bottom-left" distance="76">GND</text>
<text x="-90.268" y="31.98" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">+12V</text>
<text x="130.824" y="51.276" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">D2</text>
<text x="143.524" y="51.276" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">D3</text>
<text x="130.788" y="43.656" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">D4</text>
<text x="143.524" y="43.656" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">D5</text>
<text x="130.861" y="36.036" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">D6</text>
<text x="143.524" y="36.036" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">D7</text>
<text x="130.825" y="28.416" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">D8</text>
<text x="115.584" y="49.76" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">R5</text>
<text x="115.621" y="42.14" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">R6</text>
<text x="115.584" y="34.52" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">R7</text>
<text x="116.855" y="26.9" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">R8</text>
<text x="116.89" y="19.28" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">R9</text>
<text x="116.436" y="11.66" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">R10</text>
<text x="116.763" y="4.04" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">R11</text>
<text x="116.436" y="-4.85" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">R12</text>
<text x="143.56" y="28.416" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">D9</text>
<text x="130.406" y="20.796" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">D10</text>
<text x="143.433" y="20.796" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">D11</text>
<text x="130.406" y="13.176" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">D12</text>
<text x="143.106" y="13.176" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">D13</text>
<text x="130.37" y="5.556" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">D14</text>
<text x="143.106" y="5.556" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">D15</text>
<text x="130.443" y="-3.334" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">D16</text>
<text x="143.106" y="-3.334" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">D17</text>
<text x="159.07" y="66.27" size="1.48" layer="97" font="vector" ratio="10" rot="R0" align="bottom-left" distance="76">+5V</text>
</plain>
<moduleinsts/>
<instances>
<instance part="U1" gate="PART_1" x="76.2" y="22.86" smashed="yes"/>
<instance part="U2" gate="PART_1" x="5.08" y="22.86" smashed="yes"/>
<instance part="U3" gate="PART_1" x="-43.18" y="-7.62" smashed="yes"/>
<instance part="Q1" gate="PART_1" x="-43.18" y="40.64" smashed="yes"/>
<instance part="D1" gate="PART_1" x="-72.39" y="-7.62" rot="R90.0002104591496" smashed="yes"/>
<instance part="R1" gate="PART_1" x="-54.61" y="40.64" smashed="yes"/>
<instance part="R2" gate="PART_1" x="-87.63" y="15.24" rot="R90.0002104591496" smashed="yes"/>
<instance part="R3" gate="PART_1" x="-6.35" y="-5.08" rot="R180.000420918299" smashed="yes"/>
<instance part="R4" gate="PART_1" x="-30.48" y="46.99" rot="R90.0002104591496" smashed="yes"/>
<instance part="NetPort1" gate="PART_1" x="-40.64" y="64.77" smashed="yes"/>
<instance part="NetPort2" gate="PART_1" x="29.21" y="64.77" smashed="yes"/>
<instance part="NetPort3" gate="PART_1" x="95.25" y="64.77" smashed="yes"/>
<instance part="NetPort4" gate="PART_1" x="5.08" y="-31.75" rot="R90.0002104591496" smashed="yes"/>
<instance part="NetPort5" gate="PART_1" x="-87.63" y="-32.766" smashed="yes"/>
<instance part="NetPort6" gate="PART_1" x="-22.86" y="-32.766" smashed="yes"/>
<instance part="NetPort7" gate="PART_1" x="4.826" y="64.77" rot="R90.0002104591496" smashed="yes"/>
<instance part="NetPort8" gate="PART_1" x="95.25" y="-32.766" smashed="yes"/>
<instance part="NetPort9" gate="PART_1" x="-87.63" y="30.48" smashed="yes"/>
<instance part="D2" gate="PART_1" x="132.08" y="48.26" smashed="yes"/>
<instance part="D3" gate="PART_1" x="144.78" y="48.26" smashed="yes"/>
<instance part="D4" gate="PART_1" x="132.08" y="40.64" smashed="yes"/>
<instance part="D5" gate="PART_1" x="144.78" y="40.64" smashed="yes"/>
<instance part="D6" gate="PART_1" x="132.08" y="33.02" smashed="yes"/>
<instance part="D7" gate="PART_1" x="144.78" y="33.02" smashed="yes"/>
<instance part="D8" gate="PART_1" x="132.08" y="25.4" smashed="yes"/>
<instance part="R5" gate="PART_1" x="116.84" y="48.26" smashed="yes"/>
<instance part="R6" gate="PART_1" x="116.84" y="40.64" smashed="yes"/>
<instance part="R7" gate="PART_1" x="116.84" y="33.02" smashed="yes"/>
<instance part="R8" gate="PART_1" x="118.11" y="25.4" smashed="yes"/>
<instance part="R9" gate="PART_1" x="118.11" y="17.78" smashed="yes"/>
<instance part="R10" gate="PART_1" x="118.11" y="10.16" smashed="yes"/>
<instance part="R11" gate="PART_1" x="118.11" y="2.54" smashed="yes"/>
<instance part="R12" gate="PART_1" x="118.11" y="-6.35" smashed="yes"/>
<instance part="D9" gate="PART_1" x="144.78" y="25.4" smashed="yes"/>
<instance part="D10" gate="PART_1" x="132.08" y="17.78" smashed="yes"/>
<instance part="D11" gate="PART_1" x="144.78" y="17.78" smashed="yes"/>
<instance part="D12" gate="PART_1" x="132.08" y="10.16" smashed="yes"/>
<instance part="D13" gate="PART_1" x="144.78" y="10.16" smashed="yes"/>
<instance part="D14" gate="PART_1" x="132.08" y="2.54" smashed="yes"/>
<instance part="D15" gate="PART_1" x="144.78" y="2.54" smashed="yes"/>
<instance part="D16" gate="PART_1" x="132.08" y="-6.35" smashed="yes"/>
<instance part="D17" gate="PART_1" x="144.78" y="-6.35" smashed="yes"/>
<instance part="NetPort10" gate="PART_1" x="161.29" y="64.77" smashed="yes"/>
</instances>
<busses/>
<nets>
<net name="Net_0" class="0">
<segment>
<wire layer="91" width="0.25" x1="-12.7" y1="27.94" x2="-16.51" y2="27.94"/>
<wire layer="91" width="0.25" x1="-16.51" y1="27.94" x2="-16.51" y2="44.45"/>
<wire layer="91" width="0.25" x1="-16.51" y1="44.45" x2="35.56" y2="44.45"/>
<wire layer="91" width="0.25" x1="35.56" y1="44.45" x2="35.56" y2="25.4"/>
<wire layer="91" width="0.25" x1="35.56" y1="25.4" x2="60.96" y2="25.4"/>
<pinref part="U2" gate="PART_1" pin="D3"/>
<pinref part="U1" gate="PART_1" pin="SRCK"/>
</segment>
</net>
<net name="Net_1" class="0">
<segment>
<wire layer="91" width="0.25" x1="60.96" y1="27.94" x2="36.83" y2="27.94"/>
<wire layer="91" width="0.25" x1="36.83" y1="27.94" x2="36.83" y2="45.72"/>
<wire layer="91" width="0.25" x1="36.83" y1="45.72" x2="-17.78" y2="45.72"/>
<wire layer="91" width="0.25" x1="-17.78" y1="45.72" x2="-17.78" y2="22.86"/>
<wire layer="91" width="0.25" x1="-17.78" y1="22.86" x2="-12.7" y2="22.86"/>
<pinref part="U1" gate="PART_1" pin="SERIN"/>
<pinref part="U2" gate="PART_1" pin="D5"/>
</segment>
</net>
<net name="Net_2" class="0">
<segment>
<wire layer="91" width="0.25" x1="60.96" y1="30.48" x2="38.1" y2="30.48"/>
<wire layer="91" width="0.25" x1="38.1" y1="30.48" x2="38.1" y2="46.99"/>
<wire layer="91" width="0.25" x1="38.1" y1="46.99" x2="-19.05" y2="46.99"/>
<wire layer="91" width="0.25" x1="-19.05" y1="46.99" x2="-19.05" y2="20.32"/>
<wire layer="91" width="0.25" x1="-19.05" y1="20.32" x2="-12.7" y2="20.32"/>
<pinref part="U1" gate="PART_1" pin="RCK"/>
<pinref part="U2" gate="PART_1" pin="D6"/>
</segment>
</net>
<net name="Net_3" class="0">
<segment>
<wire layer="91" width="0.25" x1="22.86" y1="20.32" x2="58.42" y2="20.32"/>
<wire layer="91" width="0.25" x1="58.42" y1="20.32" x2="58.42" y2="35.56"/>
<wire layer="91" width="0.25" x1="58.42" y1="35.56" x2="60.96" y2="35.56"/>
<pinref part="U2" gate="PART_1" pin="A3"/>
<pinref part="U1" gate="PART_1" pin="CLR"/>
</segment>
</net>
<net name="Net_4" class="0">
<segment>
<wire layer="91" width="0.25" x1="59.69" y1="33.02" x2="60.96" y2="33.02"/>
<wire layer="91" width="0.25" x1="59.69" y1="33.02" x2="59.69" y2="17.78"/>
<wire layer="91" width="0.25" x1="59.69" y1="17.78" x2="22.86" y2="17.78"/>
<pinref part="U1" gate="PART_1" pin="G"/>
<pinref part="U2" gate="PART_1" pin="A2"/>
</segment>
</net>
<net name="Net_5" class="0">
<segment>
<wire layer="91" width="0.25" x1="-30.48" y1="30.48" x2="-40.64" y2="30.48"/>
<wire layer="91" width="0.25" x1="-12.7" y1="30.48" x2="-30.48" y2="30.48"/>
<wire layer="91" width="0.25" x1="-40.64" y1="30.48" x2="-40.64" y2="35.56"/>
<pinref part="U2" gate="PART_1" pin="D2"/>
<pinref part="Q1" gate="PART_1" pin="C"/>
<wire layer="91" width="0.25" x1="-30.48" y1="40.64" x2="-30.48" y2="30.48"/>
<pinref part="R4" gate="PART_1" pin="1"/>
<junction x="-30.48" y="30.48"/>
</segment>
</net>
<net name="Net_6" class="0">
<segment>
<wire layer="91" width="0.25" x1="-72.39" y1="-5.08" x2="-72.39" y2="0"/>
<wire layer="91" width="0.25" x1="-72.39" y1="0" x2="-59.69" y2="0"/>
<wire layer="91" width="0.25" x1="-59.69" y1="0" x2="-59.69" y2="-5.08"/>
<wire layer="91" width="0.25" x1="-59.69" y1="-5.08" x2="-55.88" y2="-5.08"/>
<pinref part="D1" gate="PART_1" pin="C"/>
<pinref part="U3" gate="PART_1" pin="A"/>
<wire layer="91" width="0.25" x1="-87.63" y1="8.89" x2="-87.63" y2="0"/>
<wire layer="91" width="0.25" x1="-87.63" y1="0" x2="-72.39" y2="0"/>
<pinref part="R2" gate="PART_1" pin="1"/>
<junction x="-72.39" y="0"/>
</segment>
</net>
<net name="Net_7" class="0">
<segment>
<wire layer="91" width="0.25" x1="-72.39" y1="-10.16" x2="-72.39" y2="-15.24"/>
<wire layer="91" width="0.25" x1="-72.39" y1="-15.24" x2="-59.69" y2="-15.24"/>
<wire layer="91" width="0.25" x1="-59.69" y1="-15.24" x2="-59.69" y2="-10.16"/>
<wire layer="91" width="0.25" x1="-59.69" y1="-10.16" x2="-55.88" y2="-10.16"/>
<pinref part="D1" gate="PART_1" pin="A"/>
<pinref part="U3" gate="PART_1" pin="C"/>
<wire layer="91" width="0.25" x1="-87.63" y1="-29.21" x2="-87.63" y2="-15.24"/>
<wire layer="91" width="0.25" x1="-87.63" y1="-15.24" x2="-72.39" y2="-15.24"/>
<pinref part="NetPort5" gate="PART_1" pin="GND"/>
<junction x="-72.39" y="-15.24"/>
</segment>
<segment>
<wire layer="91" width="0.25" x1="-30.48" y1="53.34" x2="-30.48" y2="64.49"/>
<wire layer="91" width="0.25" x1="-30.48" y1="64.49" x2="-21.59" y2="64.49"/>
<wire layer="91" width="0.25" x1="-21.59" y1="64.49" x2="0" y2="64.49"/>
<wire layer="91" width="0.25" x1="0" y1="64.77" x2="1.27" y2="64.77"/>
<wire layer="91" width="0.25" x1="0" y1="64.49" x2="0" y2="64.77"/>
<pinref part="R4" gate="PART_1" pin="2"/>
<pinref part="NetPort7" gate="PART_1" pin="GND"/>
<wire layer="91" width="0.25" x1="-21.59" y1="64.49" x2="-21.59" y2="33.02"/>
<wire layer="91" width="0.25" x1="-21.59" y1="33.02" x2="-12.7" y2="33.02"/>
<pinref part="U2" gate="PART_1" pin="GND_1"/>
<junction x="-21.59" y="64.49"/>
</segment>
<segment>
<wire layer="91" width="0.25" x1="-30.48" y1="-10.16" x2="-22.86" y2="-10.16"/>
<wire layer="91" width="0.25" x1="-22.86" y1="-10.16" x2="-22.86" y2="-29.21"/>
<pinref part="U3" gate="PART_1" pin="E"/>
<pinref part="NetPort6" gate="PART_1" pin="GND"/>
</segment>
<segment>
<wire layer="91" width="0.25" x1="91.44" y1="7.62" x2="95.25" y2="7.62"/>
<wire layer="91" width="0.25" x1="95.25" y1="7.62" x2="95.25" y2="-29.21"/>
<pinref part="U1" gate="PART_1" pin="GND"/>
<pinref part="NetPort8" gate="PART_1" pin="GND"/>
</segment>
</net>
<net name="Net_8" class="0">
<segment>
<wire layer="91" width="0.25" x1="-48.26" y1="40.64" x2="-45.72" y2="40.64"/>
<pinref part="R1" gate="PART_1" pin="2"/>
<pinref part="Q1" gate="PART_1" pin="B"/>
</segment>
</net>
<net name="Net_9" class="0">
<segment>
<wire layer="91" width="0.25" x1="-60.96" y1="40.64" x2="-64.77" y2="40.64"/>
<wire layer="91" width="0.25" x1="-64.77" y1="40.64" x2="-64.77" y2="21.59"/>
<wire layer="91" width="0.25" x1="-64.77" y1="21.59" x2="-22.86" y2="21.59"/>
<wire layer="91" width="0.25" x1="-22.86" y1="21.59" x2="-22.86" y2="-5.08"/>
<wire layer="91" width="0.25" x1="-22.86" y1="-5.08" x2="-30.48" y2="-5.08"/>
<pinref part="R1" gate="PART_1" pin="1"/>
<pinref part="U3" gate="PART_1" pin="CO"/>
<wire layer="91" width="0.25" x1="-22.86" y1="-5.08" x2="-12.7" y2="-5.08"/>
<pinref part="R3" gate="PART_1" pin="2"/>
<junction x="-22.86" y="-5.08"/>
</segment>
</net>
<net name="Net_10" class="0">
<segment>
<wire layer="91" width="0.25" x1="-40.64" y1="62.23" x2="-40.64" y2="45.72"/>
<pinref part="NetPort1" gate="PART_1" pin="VCC"/>
<pinref part="Q1" gate="PART_1" pin="E"/>
</segment>
<segment>
<wire layer="91" width="0.25" x1="0" y1="-5.08" x2="8.89" y2="-5.08"/>
<wire layer="91" width="0.25" x1="8.89" y1="-31.75" x2="7.62" y2="-31.75"/>
<wire layer="91" width="0.25" x1="8.89" y1="-5.08" x2="8.89" y2="-31.75"/>
<pinref part="R3" gate="PART_1" pin="1"/>
<pinref part="NetPort4" gate="PART_1" pin="VCC"/>
</segment>
<segment>
<wire layer="91" width="0.25" x1="95.25" y1="62.23" x2="95.25" y2="40.64"/>
<wire layer="91" width="0.25" x1="95.25" y1="40.64" x2="91.44" y2="40.64"/>
<pinref part="NetPort3" gate="PART_1" pin="VCC"/>
<pinref part="U1" gate="PART_1" pin="VCC"/>
</segment>
<segment>
<wire layer="91" width="0.25" x1="22.86" y1="40.64" x2="29.21" y2="40.64"/>
<wire layer="91" width="0.25" x1="29.21" y1="40.64" x2="29.21" y2="62.23"/>
<pinref part="U2" gate="PART_1" pin="VIN"/>
<pinref part="NetPort2" gate="PART_1" pin="VCC"/>
</segment>
</net>
<net name="Net_11" class="0">
<segment>
<wire layer="91" width="0.25" x1="-87.63" y1="27.94" x2="-87.63" y2="21.59"/>
<pinref part="NetPort9" gate="PART_1" pin="+12V"/>
<pinref part="R2" gate="PART_1" pin="2"/>
</segment>
</net>
<net name="Net_20" class="0">
<segment>
<wire layer="91" width="0.25" x1="91.44" y1="17.78" x2="101.6" y2="17.78"/>
<wire layer="91" width="0.25" x1="101.6" y1="17.78" x2="101.6" y2="-6.35"/>
<wire layer="91" width="0.25" x1="101.6" y1="-6.35" x2="111.76" y2="-6.35"/>
<pinref part="U1" gate="PART_1" pin="DRAIN7"/>
<pinref part="R12" gate="PART_1" pin="1"/>
</segment>
</net>
<net name="Net_21" class="0">
<segment>
<wire layer="91" width="0.25" x1="111.76" y1="2.54" x2="102.87" y2="2.54"/>
<wire layer="91" width="0.25" x1="102.87" y1="2.54" x2="102.87" y2="20.32"/>
<wire layer="91" width="0.25" x1="102.87" y1="20.32" x2="91.44" y2="20.32"/>
<pinref part="R11" gate="PART_1" pin="1"/>
<pinref part="U1" gate="PART_1" pin="DRAIN6"/>
</segment>
</net>
<net name="Net_22" class="0">
<segment>
<wire layer="91" width="0.25" x1="111.76" y1="10.16" x2="104.14" y2="10.16"/>
<wire layer="91" width="0.25" x1="104.14" y1="10.16" x2="104.14" y2="22.86"/>
<wire layer="91" width="0.25" x1="104.14" y1="22.86" x2="91.44" y2="22.86"/>
<pinref part="R10" gate="PART_1" pin="1"/>
<pinref part="U1" gate="PART_1" pin="DRAIN5"/>
</segment>
</net>
<net name="Net_23" class="0">
<segment>
<wire layer="91" width="0.25" x1="111.76" y1="17.78" x2="105.41" y2="17.78"/>
<wire layer="91" width="0.25" x1="105.41" y1="17.78" x2="105.41" y2="25.4"/>
<wire layer="91" width="0.25" x1="105.41" y1="25.4" x2="91.44" y2="25.4"/>
<pinref part="R9" gate="PART_1" pin="1"/>
<pinref part="U1" gate="PART_1" pin="DRAIN4"/>
</segment>
</net>
<net name="Net_24" class="0">
<segment>
<wire layer="91" width="0.25" x1="111.76" y1="25.4" x2="106.68" y2="25.4"/>
<wire layer="91" width="0.25" x1="106.68" y1="25.4" x2="106.68" y2="27.94"/>
<wire layer="91" width="0.25" x1="106.68" y1="27.94" x2="91.44" y2="27.94"/>
<pinref part="R8" gate="PART_1" pin="1"/>
<pinref part="U1" gate="PART_1" pin="DRAIN3"/>
</segment>
</net>
<net name="Net_25" class="0">
<segment>
<wire layer="91" width="0.25" x1="91.44" y1="30.48" x2="106.68" y2="30.48"/>
<wire layer="91" width="0.25" x1="106.68" y1="30.48" x2="106.68" y2="33.02"/>
<wire layer="91" width="0.25" x1="106.68" y1="33.02" x2="110.49" y2="33.02"/>
<pinref part="U1" gate="PART_1" pin="DRAIN2"/>
<pinref part="R7" gate="PART_1" pin="1"/>
</segment>
</net>
<net name="Net_26" class="0">
<segment>
<wire layer="91" width="0.25" x1="91.44" y1="33.02" x2="106.68" y2="33.02"/>
<wire layer="91" width="0.25" x1="106.68" y1="33.02" x2="106.68" y2="40.64"/>
<wire layer="91" width="0.25" x1="106.68" y1="40.64" x2="110.49" y2="40.64"/>
<pinref part="U1" gate="PART_1" pin="DRAIN1"/>
<pinref part="R6" gate="PART_1" pin="1"/>
</segment>
</net>
<net name="Net_27" class="0">
<segment>
<wire layer="91" width="0.25" x1="91.44" y1="35.56" x2="105.41" y2="35.56"/>
<wire layer="91" width="0.25" x1="105.41" y1="35.56" x2="105.41" y2="48.26"/>
<wire layer="91" width="0.25" x1="105.41" y1="48.26" x2="110.49" y2="48.26"/>
<pinref part="U1" gate="PART_1" pin="DRAIN0"/>
<pinref part="R5" gate="PART_1" pin="1"/>
</segment>
</net>
<net name="Net_12" class="0">
<segment>
<wire layer="91" width="0.25" x1="123.19" y1="48.26" x2="127" y2="48.26"/>
<pinref part="R5" gate="PART_1" pin="2"/>
<pinref part="D2" gate="PART_1" pin="A"/>
</segment>
</net>
<net name="Net_13" class="0">
<segment>
<wire layer="91" width="0.25" x1="123.19" y1="40.64" x2="127" y2="40.64"/>
<pinref part="R6" gate="PART_1" pin="2"/>
<pinref part="D4" gate="PART_1" pin="A"/>
</segment>
</net>
<net name="Net_14" class="0">
<segment>
<wire layer="91" width="0.25" x1="123.19" y1="33.02" x2="127" y2="33.02"/>
<pinref part="R7" gate="PART_1" pin="2"/>
<pinref part="D6" gate="PART_1" pin="A"/>
</segment>
</net>
<net name="Net_15" class="0">
<segment>
<wire layer="91" width="0.25" x1="124.46" y1="25.4" x2="127" y2="25.4"/>
<pinref part="R8" gate="PART_1" pin="2"/>
<pinref part="D8" gate="PART_1" pin="A"/>
</segment>
</net>
<net name="Net_16" class="0">
<segment>
<wire layer="91" width="0.25" x1="127" y1="17.78" x2="124.46" y2="17.78"/>
<pinref part="D10" gate="PART_1" pin="A"/>
<pinref part="R9" gate="PART_1" pin="2"/>
</segment>
</net>
<net name="Net_17" class="0">
<segment>
<wire layer="91" width="0.25" x1="127" y1="10.16" x2="124.46" y2="10.16"/>
<pinref part="D12" gate="PART_1" pin="A"/>
<pinref part="R10" gate="PART_1" pin="2"/>
</segment>
</net>
<net name="Net_18" class="0">
<segment>
<wire layer="91" width="0.25" x1="127" y1="2.54" x2="124.46" y2="2.54"/>
<pinref part="D14" gate="PART_1" pin="A"/>
<pinref part="R11" gate="PART_1" pin="2"/>
</segment>
</net>
<net name="Net_19" class="0">
<segment>
<wire layer="91" width="0.25" x1="127" y1="-6.35" x2="124.46" y2="-6.35"/>
<pinref part="D16" gate="PART_1" pin="A"/>
<pinref part="R12" gate="PART_1" pin="2"/>
</segment>
</net>
<net name="Net_28" class="0">
<segment>
<wire layer="91" width="0.25" x1="139.7" y1="-6.35" x2="137.16" y2="-6.35"/>
<pinref part="D17" gate="PART_1" pin="A"/>
<pinref part="D16" gate="PART_1" pin="K"/>
</segment>
</net>
<net name="Net_29" class="0">
<segment>
<wire layer="91" width="0.25" x1="139.7" y1="2.54" x2="137.16" y2="2.54"/>
<pinref part="D15" gate="PART_1" pin="A"/>
<pinref part="D14" gate="PART_1" pin="K"/>
</segment>
</net>
<net name="Net_30" class="0">
<segment>
<wire layer="91" width="0.25" x1="139.7" y1="10.16" x2="137.16" y2="10.16"/>
<pinref part="D13" gate="PART_1" pin="A"/>
<pinref part="D12" gate="PART_1" pin="K"/>
</segment>
</net>
<net name="Net_31" class="0">
<segment>
<wire layer="91" width="0.25" x1="139.7" y1="17.78" x2="137.16" y2="17.78"/>
<pinref part="D11" gate="PART_1" pin="A"/>
<pinref part="D10" gate="PART_1" pin="K"/>
</segment>
</net>
<net name="Net_32" class="0">
<segment>
<wire layer="91" width="0.25" x1="139.7" y1="25.4" x2="137.16" y2="25.4"/>
<pinref part="D9" gate="PART_1" pin="A"/>
<pinref part="D8" gate="PART_1" pin="K"/>
</segment>
</net>
<net name="Net_33" class="0">
<segment>
<wire layer="91" width="0.25" x1="139.7" y1="33.02" x2="137.16" y2="33.02"/>
<pinref part="D7" gate="PART_1" pin="A"/>
<pinref part="D6" gate="PART_1" pin="K"/>
</segment>
</net>
<net name="Net_34" class="0">
<segment>
<wire layer="91" width="0.25" x1="139.7" y1="40.64" x2="137.16" y2="40.64"/>
<pinref part="D5" gate="PART_1" pin="A"/>
<pinref part="D4" gate="PART_1" pin="K"/>
</segment>
</net>
<net name="Net_35" class="0">
<segment>
<wire layer="91" width="0.25" x1="139.7" y1="48.26" x2="137.16" y2="48.26"/>
<pinref part="D3" gate="PART_1" pin="A"/>
<pinref part="D2" gate="PART_1" pin="K"/>
</segment>
</net>
<net name="Net_36" class="0">
<segment>
<wire layer="91" width="0.25" x1="161.29" y1="62.23" x2="161.29" y2="48.26"/>
<wire layer="91" width="0.25" x1="161.29" y1="48.26" x2="149.86" y2="48.26"/>
<pinref part="NetPort10" gate="PART_1" pin="+5V"/>
<pinref part="D3" gate="PART_1" pin="K"/>
<wire layer="91" width="0.25" x1="149.86" y1="40.64" x2="161.29" y2="40.64"/>
<wire layer="91" width="0.25" x1="161.29" y1="40.64" x2="161.29" y2="48.26"/>
<pinref part="D5" gate="PART_1" pin="K"/>
<junction x="161.29" y="48.26"/>
<wire layer="91" width="0.25" x1="149.86" y1="33.02" x2="161.29" y2="33.02"/>
<wire layer="91" width="0.25" x1="161.29" y1="33.02" x2="161.29" y2="40.64"/>
<pinref part="D7" gate="PART_1" pin="K"/>
<junction x="161.29" y="40.64"/>
<wire layer="91" width="0.25" x1="149.86" y1="25.4" x2="161.29" y2="25.4"/>
<wire layer="91" width="0.25" x1="161.29" y1="25.4" x2="161.29" y2="33.02"/>
<pinref part="D9" gate="PART_1" pin="K"/>
<junction x="161.29" y="33.02"/>
<wire layer="91" width="0.25" x1="149.86" y1="17.78" x2="161.29" y2="17.78"/>
<wire layer="91" width="0.25" x1="161.29" y1="17.78" x2="161.29" y2="25.4"/>
<pinref part="D11" gate="PART_1" pin="K"/>
<junction x="161.29" y="25.4"/>
<wire layer="91" width="0.25" x1="149.86" y1="10.16" x2="161.29" y2="10.16"/>
<wire layer="91" width="0.25" x1="161.29" y1="10.16" x2="161.29" y2="17.78"/>
<pinref part="D13" gate="PART_1" pin="K"/>
<junction x="161.29" y="17.78"/>
<wire layer="91" width="0.25" x1="149.86" y1="2.54" x2="161.29" y2="2.54"/>
<wire layer="91" width="0.25" x1="161.29" y1="2.54" x2="161.29" y2="10.16"/>
<pinref part="D15" gate="PART_1" pin="K"/>
<junction x="161.29" y="10.16"/>
<wire layer="91" width="0.25" x1="149.86" y1="-6.35" x2="161.29" y2="-6.35"/>
<wire layer="91" width="0.25" x1="161.29" y1="-6.35" x2="161.29" y2="2.54"/>
<pinref part="D17" gate="PART_1" pin="K"/>
<junction x="161.29" y="2.54"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
