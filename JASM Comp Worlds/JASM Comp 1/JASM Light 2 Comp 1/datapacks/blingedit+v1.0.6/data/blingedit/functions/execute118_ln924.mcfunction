execute if score Global rotation matches 0..0 run function blingedit:execute114_ln925
execute if score Global rotation matches 90..90 run function blingedit:execute115_ln926
execute if score Global rotation matches 180..180 run function blingedit:execute116_ln927
execute if score Global rotation matches 270..270 run function blingedit:execute117_ln928
execute if score Global flip_x matches 1.. run scoreboard players operation Global dest_dx *= minus Constant
execute if score Global flip_z matches 1.. run scoreboard players operation Global dest_dz *= minus Constant
scoreboard players operation Global per2_scratch6 = Global dest_start_x
scoreboard players operation Global per2_scratch7 = Global dest_start_y
scoreboard players operation Global per2_scratch8 = Global dest_start_z
scoreboard players operation Global per2_scratch6 += Global dest_dx
scoreboard players operation Global per2_scratch7 += Global dest_dy
scoreboard players operation Global per2_scratch8 += Global dest_dz
execute store result entity @s Pos[0] double 0.001 run scoreboard players get Global per2_scratch6
execute store result entity @s Pos[1] double 0.001 run scoreboard players get Global per2_scratch7
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global per2_scratch8
execute at @s run clone 0 1 0 0 1 0 ~ ~ ~