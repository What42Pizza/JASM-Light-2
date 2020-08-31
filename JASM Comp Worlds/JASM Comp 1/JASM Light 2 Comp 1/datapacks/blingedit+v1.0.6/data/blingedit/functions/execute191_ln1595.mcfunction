scoreboard players operation Global mai_scratch1 = Global xmin
scoreboard players operation Global mai_scratch1 += Global xmax
scoreboard players operation Global mai_scratch1 /= c2 Constant
scoreboard players operation @s x = Global mai_scratch1
execute store result entity @s Pos[0] double 0.001 run scoreboard players get @s x