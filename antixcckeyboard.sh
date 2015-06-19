#! /bin/bash
# File Name: keyconfig.sh
# Purpose: script to toggle keyboard language
# Authors: OU812 for antiX
# Latest Change: 20 August 2008
# Latest Change: 02 January 2009 and renamed antixcckeyboard.sh
##################################################################################

TEXTDOMAINDIR=/usr/share/locale 
TEXTDOMAIN=antixcckeyboard.sh

export keyconfig=$(cat <<End_of_Text 

<window title="`gettext $"Keyboard Config"`" icon="configuration_section" window-position="1">

<vbox>
  <text use-markup="true">
	<label>"`gettext $"<b>Choose a Language.</b>"`"</label>
  </text>
	
  <frame>
    <radiobutton>
      <label>"`gettext $"No Change"`"</label>
    </radiobutton>
     <radiobutton>
      <label>"`gettext $"Arabic"`"</label>
      <action>setxkbmap ar</action>
    </radiobutton>
    <radiobutton>
      <label>"`gettext $"British"`"</label>
      <action>setxkbmap gb</action>
    </radiobutton>
    <radiobutton>
      <label>"`gettext $"Bulgarian"`"</label>
      <action>setxkbmap bg</action>
    </radiobutton>
    <radiobutton>
      <label>"`gettext $"Czech"`"</label>
      <action>setxkbmap cz</action>
    </radiobutton>
    <radiobutton>
      <label>"`gettext $"Dutch"`"</label>
      <action>setxkbmap nl</action>
    </radiobutton>
    <radiobutton>
      <label>"`gettext $"French"`"</label>
      <action>setxkbmap fr</action>
    </radiobutton>
    <radiobutton>
      <label>"`gettext $"German"`"</label>
      <action>setxkbmap de</action>
    </radiobutton>
    <radiobutton>
      <label>"`gettext $"Greek"`"</label>
      <action>setxkbmap gr</action>
    </radiobutton>
    <radiobutton>
      <label>"`gettext $"Italian"`"</label>
      <action>setxkbmap it</action>
    </radiobutton>
    <radiobutton>
      <label>"`gettext $"Norwegian"`"</label>
      <action>setxkbmap no</action>
    </radiobutton>
    <radiobutton>
      <label>"`gettext $"Polish"`"</label>
      <action>setxkbmap pl</action>
    </radiobutton>
    <radiobutton>
      <label>"`gettext $"Portuguese"`"</label>
      <action>setxkbmap pt</action>
    </radiobutton>
    <radiobutton>
      <label>"`gettext $"Romanian"`"</label>
      <action>setxkbmap -layout ro -variant std</action>
    </radiobutton>
    <radiobutton>
      <label>"`gettext $"Russian"`"</label>
      <action>setxkbmap ru</action>
    </radiobutton>
    <radiobutton>
      <label>"`gettext $"Spanish"`"</label>
      <action>setxkbmap es</action>
    </radiobutton>
    <radiobutton>
      <label>"`gettext $"Turkish"`"</label>
      <action>setxkbmap tr</action>
    </radiobutton>
    <radiobutton>
      <label>"`gettext $"Ukrainian"`"</label>
      <action>setxkbmap ua</action>
    </radiobutton>
    <radiobutton>
      <label>"`gettext $"US"`"</label>
      <action>setxkbmap us</action>
    </radiobutton>
  </frame>
	   
  <hbox>
	<button>
	<label>"`gettext $"Close"`"</label>
	<input file icon="exit"></input>
	<action>EXIT:close</action>
	</button>
  </hbox>
</vbox>

</window>
End_of_Text
)

gtkdialog --program=keyconfig
unset keyconfig
