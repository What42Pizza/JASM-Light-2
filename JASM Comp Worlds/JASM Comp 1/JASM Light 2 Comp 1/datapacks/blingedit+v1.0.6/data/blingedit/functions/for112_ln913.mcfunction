scoreboard players operation Global _offset_0 = Global dx
scoreboard players operation Global _offset_1 = Global dy
scoreboard players operation Global _offset_2 = Global dz
scoreboard players operation Global per2_scratch6 = Global _min_0
scoreboard players operation Global per2_scratch7 = Global _min_1
scoreboard players operation Global per2_scratch8 = Global _min_2
scoreboard players operation Global per2_scratch6 += Global _offset_0
scoreboard players operation Global per2_scratch7 += Global _offset_1
scoreboard players operation Global per2_scratch8 += Global _offset_2
execute store result entity @s Pos[0] double 0.001 run scoreboard players get Global per2_scratch6
execute store result entity @s Pos[1] double 0.001 run scoreboard players get Global per2_scratch7
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global per2_scratch8
execute at @s run function blingedit:execute113_ln916
execute unless score Global skip matches 1.. run function blingedit:execute118_ln924
scoreboard players operation Global dz += Global per2_scratch5
execute if score Global per2_scratch5 matches ..-1 if score Global dz >= Global per2_scratch4 run function blingedit:for112_ln913
execute if score Global per2_scratch5 matches 1.. if score Global dz <= Global per2_scratch4 run function blingedit:for112_ln913