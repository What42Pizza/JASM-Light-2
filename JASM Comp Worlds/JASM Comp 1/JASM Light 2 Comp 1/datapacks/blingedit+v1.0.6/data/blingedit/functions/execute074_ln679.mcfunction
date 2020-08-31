scoreboard players set @s type 2
scoreboard players operation Global clo7_scratch0 = Global _cursor_0
scoreboard players operation Global clo7_scratch1 = Global _cursor_1
scoreboard players operation Global clo7_scratch2 = Global _cursor_2
scoreboard players operation Global clo7_scratch0 += Global _dpos_0
scoreboard players operation Global clo7_scratch1 += Global _dpos_1
scoreboard players operation Global clo7_scratch2 += Global _dpos_2
execute store result entity @s Pos[0] double 0.001 run scoreboard players get Global clo7_scratch0
execute store result entity @s Pos[1] double 0.001 run scoreboard players get Global clo7_scratch1
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global clo7_scratch2
team join dest
scoreboard players operation @s player = Global player
execute if score Global bottom_center matches 1.. run function blingedit:execute073_ln684