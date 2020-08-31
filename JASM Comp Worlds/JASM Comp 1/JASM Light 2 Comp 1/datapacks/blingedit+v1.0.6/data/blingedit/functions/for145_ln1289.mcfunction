execute store result entity @s Pos[0] double 0.001 run scoreboard players get Global x
execute store result entity @s Pos[1] double 0.001 run scoreboard players get Global p_ymin
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global p_zmin
execute at @s run particle fishing ~ ~ ~ 0 0 0 0 1 force
execute store result entity @s Pos[0] double 0.001 run scoreboard players get Global x
execute store result entity @s Pos[1] double 0.001 run scoreboard players get Global p_ymin
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global p_zmax
execute at @s run particle fishing ~ ~ ~ 0 0 0 0 1 force
execute store result entity @s Pos[0] double 0.001 run scoreboard players get Global x
execute store result entity @s Pos[1] double 0.001 run scoreboard players get Global p_ymax
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global p_zmin
execute at @s run particle fishing ~ ~ ~ 0 0 0 0 1 force
execute store result entity @s Pos[0] double 0.001 run scoreboard players get Global x
execute store result entity @s Pos[1] double 0.001 run scoreboard players get Global p_ymax
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global p_zmax
execute at @s run particle fishing ~ ~ ~ 0 0 0 0 1 force
scoreboard players operation Global x += Global dra_scratch1
execute if score Global dra_scratch1 matches ..-1 if score Global x >= Global dra_scratch0 run function blingedit:for145_ln1289
execute if score Global dra_scratch1 matches 1.. if score Global x <= Global dra_scratch0 run function blingedit:for145_ln1289