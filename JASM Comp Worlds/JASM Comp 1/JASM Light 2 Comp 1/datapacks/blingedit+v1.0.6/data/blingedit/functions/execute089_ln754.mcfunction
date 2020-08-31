scoreboard players operation Global con_scratch0 = Global dest_zmin
scoreboard players operation Global con_scratch0 += Global dest_zmax
scoreboard players operation Global con_scratch0 /= c2 Constant
scoreboard players operation @s z = Global con_scratch0
execute store result entity @s Pos[2] double 0.001 run scoreboard players get @s z