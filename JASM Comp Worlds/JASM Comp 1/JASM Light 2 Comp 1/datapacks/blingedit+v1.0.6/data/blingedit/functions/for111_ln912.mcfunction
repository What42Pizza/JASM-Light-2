scoreboard players operation Global dz = Global start_dz
scoreboard players operation Global per2_scratch4 = Global end_dz
scoreboard players operation Global per2_scratch5 = Global step_dz
execute if score Global per2_scratch5 matches ..-1 if score Global dz >= Global per2_scratch4 run function blingedit:for112_ln913
execute if score Global per2_scratch5 matches 1.. if score Global dz <= Global per2_scratch4 run function blingedit:for112_ln913
scoreboard players operation Global dy += Global per2_scratch3
execute if score Global per2_scratch3 matches ..-1 if score Global dy >= Global per2_scratch2 run function blingedit:for111_ln912
execute if score Global per2_scratch3 matches 1.. if score Global dy <= Global per2_scratch2 run function blingedit:for111_ln912