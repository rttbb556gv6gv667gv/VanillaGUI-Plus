# Experimental Features Loader
summon minecraft:interaction ~ ~ ~ {Tags:["ajj","ajjgui_experimental.dp"]}
summon minecraft:marker ~ ~ ~ {Tags:["ajj","ajjgui.experimental"],CustomName:'{"text":"AjjGUI Experimental","color":"red","italic":false}'}

execute in minecraft:overworld as @e[type=minecraft:interaction,tag=ajjgui_experimental.dp,limit=1] at @s run say [DP] Loading Experimental Features...

# Experimental widget scoreboard'ları
scoreboard objectives add ajjgui.slider dummy "Slider Value"
scoreboard objectives add ajjgui.textinput dummy "Text Input State"
scoreboard objectives add ajjgui.colorpicker dummy "Color Picker"
scoreboard objectives add ajjgui.dropdown dummy "Dropdown State"
scoreboard objectives add ajjgui.confirm dummy "Confirmation Dialog"

# Başarı mesajı
execute if data storage ajjgui:data version run tellraw @a [{"text":"[⚠] ","color":"yellow","bold":true},{"text":"Experimental Features ","color":"gold"},{"text":"enabled!","color":"green"}]
execute if data storage ajjgui:data version run tellraw @a [{"text":"  ","color":"gray"},{"text":"• Slider Widget","color":"aqua"}]
execute if data storage ajjgui:data version run tellraw @a [{"text":"  ","color":"gray"},{"text":"• Text Input Widget","color":"aqua"}]
execute if data storage ajjgui:data version run tellraw @a [{"text":"  ","color":"gray"},{"text":"• Color Picker Widget","color":"aqua"}]
execute if data storage ajjgui:data version run tellraw @a [{"text":"  ","color":"gray"},{"text":"• Progress Bar Widget","color":"aqua"}]
execute if data storage ajjgui:data version run tellraw @a [{"text":"  ","color":"gray"},{"text":"• Dropdown Widget","color":"aqua"}]
execute if data storage ajjgui:data version run tellraw @a [{"text":"  ","color":"gray"},{"text":"• Confirmation Dialog","color":"aqua"}]

# Cleanup
kill @e[type=minecraft:marker,tag=ajjgui.experimental,tag=ajj]
kill @e[type=minecraft:interaction,tag=ajjgui_experimental.dp,tag=ajj]
