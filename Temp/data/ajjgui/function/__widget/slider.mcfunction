# Slider Widget Creator
# Usage: function ajjgui:__widget/slider {item:"...",name:'...',min:0,max:100,step:5,current:50,command:"",data:""}

$give @s $(item)[minecraft:custom_data={ajjgui:{widget:"slider",min:$(min),max:$(max),step:$(step),current:$(current),command:"$(command)"}},minecraft:custom_name=$(name),$(data)] $(current)
title @s times 5 40 10
title @s actionbar [{"text":"📊 ","color":"gold","bold":true},{"text":"Slider Created","color":"green"}]
$tellraw @s [{"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"dark_gray"},{"text":"\n📦 Item: ","color":"gold"},{"text":"$(item)","color":"yellow"},{"text":"\n🏷️ Name: ","color":"gold"},$(name),{"text":"\n⚙️ Type: ","color":"gold"},{"text":"Slider","color":"aqua"},{"text":"\n📊 Range: ","color":"gold"},{"text":"$(min) - $(max)","color":"white"},{"text":"\n📏 Step: ","color":"gold"},{"text":"$(step)","color":"yellow"},{"text":"\n📌 Current: ","color":"gold"},{"text":"$(current)","color":"green"},{"text":"\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"dark_gray"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5 1.5
