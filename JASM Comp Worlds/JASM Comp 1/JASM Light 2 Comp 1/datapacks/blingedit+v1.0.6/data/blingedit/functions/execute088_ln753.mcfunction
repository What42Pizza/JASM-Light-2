scoreboard players operation Global con_scratch0 = Global dest_ymin
scoreboard players operation Global con_scratch0 += Global dest_ymax
scoreboard players operation Global con_scratch0 /= c2 Constant
scoreboard players operation @s y = Global con_scratch0
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @s y