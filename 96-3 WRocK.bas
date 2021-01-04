Declare init as "BASS_Init" of "bass.dll"
device As Long
freq As Long
flags As Long
win As Long
clsid As Long
result  As Long
end declare
Declare openstream as BASS_StreamCreateURL of "bass.dll"
url As long
offset As Long
flags As Long
proc As Long
user As Long
result As Long
end declare
Declare pla as "BASS_ChannelPlay" of "bass.dll"
handle As Long
restart As Long
result as long
end declare
Declare release as "BASS_StreamFree" of "bass.dll" 
handle As Long 
end declare
Declare volu as "BASS_SetVolume" of "bass.dll" 
volume As Single
end declare
dim vv as integer
dim url as string
dim a as string
a ="https://wrockceb.radioca.st/stream"
object myform as form
  center
caption="96.3 WRocK"

  object mylist as listbox
    align=alleft
    additem("96.3 WRocK")
    onclick=mylistbox_click
  end object
  object b1 as button
    align=alleft
    caption="Play"
    onclick=hraj
end object
  object but as button
    align=alleft
    caption="Stop"
    onclick=stoop
  end object
  object tlac as button
    align=alleft
    caption="End"
    onclick=konec
  end object
end object
myform.showmodal
sub mylistbox_click(s as listbox)
vv =s.itemindex 
end sub
  sub hraj(b as button)
init.device=-1
init.freq=44100
init.clsid=0
init.win=0
init.execute
select case vv
case 0
release.handle=openstream.result
release.execute
url =a+chr$(0)
openstream.url = varptr(url)
openstream.execute
pla.handle=openstream.result
pla.execute
end select

end sub
sub stoop (tlacitko1 as button)
release.handle=openstream.result
release.execute
end sub
sub konec (tlac as button)
end
end sub