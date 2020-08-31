execute store result score Global clo8_scratch0 run data get entity @s Pos[0] 1000
execute store result score Global clo8_scratch1 run data get entity @s Pos[1] 1000
execute store result score Global clo8_scratch2 run data get entity @s Pos[2] 1000
scoreboard players operation Global clo8_scratch0 += Global _move_by_0
scoreboard players operation Global clo8_scratch1 += Global _move_by_1
scoreboard players operation Global clo8_scratch2 += Global _move_by_2
execute store result entity @s Pos[0] double 0.001 run scoreboard players get Global clo8_scratch0
execute store result entity @s Pos[1] double 0.001 run scoreboard players get Global clo8_scratch1
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global clo8_scratch2