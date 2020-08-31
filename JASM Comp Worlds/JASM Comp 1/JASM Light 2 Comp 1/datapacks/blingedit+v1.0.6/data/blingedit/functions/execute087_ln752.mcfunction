scoreboard players operation Global con_scratch0 = Global dest_xmin
scoreboard players operation Global con_scratch0 += Global dest_xmax
scoreboard players operation Global con_scratch0 /= c2 Constant
scoreboard players operation @s x = Global con_scratch0
execute store result entity @s Pos[0] double 0.001 run scoreboard players get @s x