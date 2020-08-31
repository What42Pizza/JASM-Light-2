scoreboard players set Global x_offset 500
execute if score Global clone_rotation matches 90..90 run scoreboard players set Global x_offset -500
execute if score Global clone_rotation matches 180..180 run scoreboard players set Global x_offset -500
scoreboard players set Global z_offset 500
execute if score Global clone_rotation matches 180..180 run scoreboard players set Global z_offset -500
execute if score Global clone_rotation matches 270..270 run scoreboard players set Global z_offset -500