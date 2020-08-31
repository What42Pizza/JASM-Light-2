execute as @s run function blingedit:get_dest_minmax
scoreboard players operation Global clone_rotation = @s clone_rotation
scoreboard players operation Global cx = Global _dest_min_0
scoreboard players operation Global cy = Global _dest_min_1
scoreboard players operation Global cz = Global _dest_min_2
scoreboard players operation Global cx += Global _dest_max_0
scoreboard players operation Global cy += Global _dest_max_1
scoreboard players operation Global cz += Global _dest_max_2
scoreboard players set Global rot_scratch0 2
scoreboard players operation Global cx /= Global rot_scratch0
scoreboard players operation Global cy /= Global rot_scratch0
scoreboard players operation Global cz /= Global rot_scratch0
scoreboard players operation Global sx = Global _dest_max_0
scoreboard players operation Global sy = Global _dest_max_1
scoreboard players operation Global sz = Global _dest_max_2
scoreboard players operation Global sx -= Global _dest_min_0
scoreboard players operation Global sy -= Global _dest_min_1
scoreboard players operation Global sz -= Global _dest_min_2
scoreboard players operation Global mod = Global cx
scoreboard players operation Global mod += Global cz
scoreboard players operation Global mod %= c1000 Constant
scoreboard players set Global x_offset 0
scoreboard players set Global z_offset 0
execute unless score Global mod matches 0..0 run function blingedit:execute049_ln464
scoreboard players add Global _unique 1
execute unless score @s _id matches 0.. run scoreboard players operation @s _id = Global _unique
scoreboard players operation Global player = @s _id
execute as @e[type=minecraft:magma_cube,tag=Corner] if score @s player = Global player if score @s type matches 2..2 run function blingedit:execute050_ln476