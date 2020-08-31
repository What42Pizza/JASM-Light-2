scoreboard players operation Global percent = Global dx
scoreboard players operation Global percent -= Global start_dx
scoreboard players operation Global per2_scratch2 = Global end_dx
scoreboard players operation Global per2_scratch2 -= Global start_dx
scoreboard players operation Global per2_scratch2 /= c100 Constant
scoreboard players operation Global percent /= Global per2_scratch2
execute store result bossbar progress value run scoreboard players get Global percent
scoreboard players operation Global dy = Global start_dy
scoreboard players operation Global per2_scratch2 = Global end_dy
scoreboard players operation Global per2_scratch3 = Global step_dy
execute if score Global per2_scratch3 matches ..-1 if score Global dy >= Global per2_scratch2 run function blingedit:for111_ln912
execute if score Global per2_scratch3 matches 1.. if score Global dy <= Global per2_scratch2 run function blingedit:for111_ln912
scoreboard players operation Global dx += Global per2_scratch1
execute if score Global per2_scratch1 matches ..-1 if score Global dx >= Global per2_scratch0 run function blingedit:for110_ln909
execute if score Global per2_scratch1 matches 1.. if score Global dx <= Global per2_scratch0 run function blingedit:for110_ln909