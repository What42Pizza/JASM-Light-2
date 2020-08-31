clone ~ ~ ~ ~ ~ ~ 0 2 0
scoreboard players set @s state 7
setblock ~ ~ ~ air
tellraw @s ["",{"text":"Use "},{"text":"/setblock ~ ~ ~ <block>","clickEvent":{"action":"suggest_command","value":"/setblock ~ ~ ~ minecraft:"},"color":"gray"},{"text":" to pick the block they should be replaced with."}]
tellraw @s ["",{"text":"Or pick "},{"text":"[air]","clickEvent":{"action":"run_command","value":"/function blingedit:replace2_air"},"color":"aqua"}]