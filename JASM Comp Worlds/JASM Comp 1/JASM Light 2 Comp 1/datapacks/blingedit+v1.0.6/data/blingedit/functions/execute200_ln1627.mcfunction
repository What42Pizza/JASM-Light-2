execute store result score Global mai_scratch1 run data get entity @s Pos[0] 1000
execute store result score Global mai_scratch2 run data get entity @s Pos[1] 1000
execute store result score Global mai_scratch3 run data get entity @s Pos[2] 1000
scoreboard players operation Global mai_scratch1 += Global _movement_0
scoreboard players operation Global mai_scratch2 += Global _movement_1
scoreboard players operation Global mai_scratch3 += Global _movement_2
execute store result entity @s Pos[0] double 0.001 run scoreboard players get Global mai_scratch1
execute store result entity @s Pos[1] double 0.001 run scoreboard players get Global mai_scratch2
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global mai_scratch3