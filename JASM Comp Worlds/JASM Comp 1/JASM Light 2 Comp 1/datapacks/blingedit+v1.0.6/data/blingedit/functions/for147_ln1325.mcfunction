execute store result entity @s Pos[0] double 0.001 run scoreboard players get Global p_xmin
execute store result entity @s Pos[1] double 0.001 run scoreboard players get Global y
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global p_zmin
execute at @s run particle fishing ~ ~ ~ 0 0 0 0 1 force
execute store result entity @s Pos[0] double 0.001 run scoreboard players get Global p_xmin
execute store result entity @s Pos[1] double 0.001 run scoreboard players get Global y
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global p_zmax
execute at @s run particle fishing ~ ~ ~ 0 0 0 0 1 force
execute store result entity @s Pos[0] double 0.001 run scoreboard players get Global p_xmax
execute store result entity @s Pos[1] double 0.001 run scoreboard players get Global y
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global p_zmin
execute at @s run particle fishing ~ ~ ~ 0 0 0 0 1 force
execute store result entity @s Pos[0] double 0.001 run scoreboard players get Global p_xmax
execute store result entity @s Pos[1] double 0.001 run scoreboard players get Global y
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global p_zmax
execute at @s run particle fishing ~ ~ ~ 0 0 0 0 1 force
scoreboard players operation Global y += Global dra_scratch1
execute if score Global dra_scratch1 matches ..-1 if score Global y >= Global dra_scratch0 run function blingedit:for147_ln1325
execute if score Global dra_scratch1 matches 1.. if score Global y <= Global dra_scratch0 run function blingedit:for147_ln1325