scoreboard players operation Global mai_scratch1 = Global ymin
scoreboard players operation Global mai_scratch1 += Global ymax
scoreboard players operation Global mai_scratch1 /= c2 Constant
scoreboard players operation @s y = Global mai_scratch1
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @s y