$give @s $(item)[minecraft:custom_data={ajjgui:{widget:"button",command:"$(command)",exit:$(exit_mode)b,page:$(page)b,relative:$(relative)b,fixed:$(fixed)b}},minecraft:custom_name=$(name),$(data)]
$execute as @s run title @s times 5 40 10
$execute as @s run title @s actionbar [{"text":"✓ Button Created","color":"green","bold":true}]
$execute as @s run tellraw @s {"text":"━━━━━━━━━━━━━━━━━━━━━━","color":"dark_gray"}
$execute as @s run tellraw @s [{"text":"📦 Item: ","color":"gold"},{"text":"$(item)","color":"yellow"}]
$execute as @s run tellraw @s [{"text":"🏷️ Name: ","color":"gold"},$(name)]
$execute as @s run tellraw @s [{"text":"⚙️ Type: ","color":"gold"},{"text":"Button","color":"aqua"}]
$execute as @s run tellraw @s [{"text":"💬 Command: ","color":"gold"},{"text":"$(command)","color":"white"}]
$execute as @s run tellraw @s [{"text":"🔧 Exit: ","color":"gold"},{"text":"$(exit_mode)","color":"red"}]
$execute as @s run tellraw @s [{"text":"🚪 Relative: ","color":"gold"},{"text":"$(relative)","color":"green"}]
$execute as @s run tellraw @s [{"text":"🌐 Fixed: ","color":"gold"},{"text":"$(fixed)","color":"gold"}]
$execute as @s run tellraw @s {"text":"━━━━━━━━━━━━━━━━━━━━━━","color":"dark_gray"}
$execute as @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5 1.5
