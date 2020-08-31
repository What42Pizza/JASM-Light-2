scoreboard players set @s state 11
execute as @s run function blingedit:create_click
execute as @e[type=minecraft:magma_cube,tag=Corner] if score @s player = Global player if score @s type matches 2..2 if score @s bottom_center matches 1.. run function blingedit:execute097_ln802
scoreboard players operation @s moving = Global moving
tellraw @s ["",{"text":"Clone Brush activated. Click to paste at destination."}]