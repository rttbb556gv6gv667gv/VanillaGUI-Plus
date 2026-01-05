# Color Picker Widget Creator
# Usage: function ajjgui:__widget/colorpicker {name:'...',selected:"red",display_item:"minecraft:wool",command:"",data:""}

$give @s $(display_item)[minecraft:custom_data={ajjgui:{widget:"colorpicker",selected:"$(selected)",display_item:"$(display_item)",command:"$(command)",colors:["white","orange","magenta","light_blue","yellow","lime","pink","gray","light_gray","cyan","purple","blue","brown","green","red","black"]}},minecraft:custom_name=$(name),$(data)]
colorpicker.mcfunctiontitle @s times 5 40 10
title @s actionbar [{"text":"🎨 ","color":"gold","bold":true},{"text":"Color Picker Created","color":"green"}]
$tellraw @s [{"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"dark_gray"},{"text":"\n🎨 Type: ","color":"gold"},{"text":"Color Picker","color":"aqua"},{"text":"\n🏷️ Name: ","color":"gold"},$(name),{"text":"\n🎯 Selected: ","color":"gold"},{"text":"$(selected)","color":"$(selected)"},{"text":"\n📦 Display: ","color":"gold"},{"text":"$(display_item)","color":"yellow"},{"text":"\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"dark_gray"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5 1.5
