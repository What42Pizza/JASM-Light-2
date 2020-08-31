scoreboard players operation Global dx = Global cx
execute store result score @s x run data get entity @s Pos[0] 1000
scoreboard players operation Global rot_scratch0 = @s x
scoreboard players operation Global dx -= Global rot_scratch0
scoreboard players operation Global dz = Global cz
execute store result score @s z run data get entity @s Pos[2] 1000
scoreboard players operation Global rot_scratch0 = @s z
scoreboard players operation Global dz -= Global rot_scratch0
scoreboard players operation Global rot_scratch0 = Global cx
scoreboard players operation Global rot_scratch0 -= Global dz
scoreboard players operation Global rot_scratch0 += Global x_offset
scoreboard players operation @s x = Global rot_scratch0
execute store result entity @s Pos[0] double 0.001 run scoreboard players get @s x
scoreboard players operation Global rot_scratch0 = Global cz
scoreboard players operation Global rot_scratch0 -= Global dx
scoreboard players operation Global rot_scratch0 += Global z_offset
scoreboard players operation @s z = Global rot_scratch0
execute store result entity @s Pos[2] double 0.001 run scoreboard players get @s z