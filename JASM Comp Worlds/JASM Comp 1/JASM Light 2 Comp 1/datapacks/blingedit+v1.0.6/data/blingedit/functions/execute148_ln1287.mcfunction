scoreboard players operation Global x = Global p_xmin
scoreboard players operation Global dra_scratch0 = Global p_xmax
scoreboard players set Global dra_scratch1 200
execute if score Global dra_scratch1 matches ..-1 if score Global x >= Global dra_scratch0 run function blingedit:for145_ln1289
execute if score Global dra_scratch1 matches 1.. if score Global x <= Global dra_scratch0 run function blingedit:for145_ln1289
scoreboard players operation Global z = Global p_zmin
scoreboard players operation Global dra_scratch0 = Global p_zmax
scoreboard players set Global dra_scratch1 200
execute if score Global dra_scratch1 matches ..-1 if score Global z >= Global dra_scratch0 run function blingedit:for146_ln1307
execute if score Global dra_scratch1 matches 1.. if score Global z <= Global dra_scratch0 run function blingedit:for146_ln1307
scoreboard players operation Global y = Global p_ymin
scoreboard players operation Global dra_scratch0 = Global p_ymax
scoreboard players set Global dra_scratch1 200
execute if score Global dra_scratch1 matches ..-1 if score Global y >= Global dra_scratch0 run function blingedit:for147_ln1325
execute if score Global dra_scratch1 matches 1.. if score Global y <= Global dra_scratch0 run function blingedit:for147_ln1325
kill @s