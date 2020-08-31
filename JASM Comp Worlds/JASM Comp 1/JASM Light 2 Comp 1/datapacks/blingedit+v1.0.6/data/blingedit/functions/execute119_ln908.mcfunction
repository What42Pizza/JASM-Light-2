scoreboard players operation Global dx = Global start_dx
scoreboard players operation Global per2_scratch0 = Global end_dx
scoreboard players operation Global per2_scratch1 = Global step_dx
execute if score Global per2_scratch1 matches ..-1 if score Global dx >= Global per2_scratch0 run function blingedit:for110_ln909
execute if score Global per2_scratch1 matches 1.. if score Global dx <= Global per2_scratch0 run function blingedit:for110_ln909
kill @s