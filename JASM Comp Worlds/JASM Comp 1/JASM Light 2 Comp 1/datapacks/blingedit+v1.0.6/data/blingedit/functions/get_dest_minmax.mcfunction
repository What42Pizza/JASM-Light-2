scoreboard players add Global _unique 1
execute unless score @s _id matches 0.. run scoreboard players operation @s _id = Global _unique
scoreboard players operation Global player = @s _id
scoreboard players set Global has_dest_box 0
scoreboard players set Global first 1
execute as @e[type=minecraft:magma_cube,tag=Corner] if score @s player = Global player if score @s type matches 2..2 run function blingedit:execute028_ln287
scoreboard players operation Global _dest_min_0 = Global dest_xmin
scoreboard players operation Global _dest_min_1 = Global dest_ymin
scoreboard players operation Global _dest_min_2 = Global dest_zmin
scoreboard players set Global first 1
execute as @e[type=minecraft:magma_cube,tag=Corner] if score @s player = Global player if score @s type matches 2..2 run function blingedit:execute030_ln302
scoreboard players operation Global _dest_max_0 = Global dest_xmax
scoreboard players operation Global _dest_max_1 = Global dest_ymax
scoreboard players operation Global _dest_max_2 = Global dest_zmax