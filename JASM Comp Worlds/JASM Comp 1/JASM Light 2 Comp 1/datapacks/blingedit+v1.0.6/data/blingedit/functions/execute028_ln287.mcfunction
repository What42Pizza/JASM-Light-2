execute if score Global first matches 1.. run function blingedit:execute027_ln288
execute store result score Global x run data get entity @s Pos[0] 1000
execute store result score Global y run data get entity @s Pos[1] 1000
execute store result score Global z run data get entity @s Pos[2] 1000
execute if score Global x < Global dest_xmin run scoreboard players operation Global dest_xmin = Global x
execute if score Global y < Global dest_ymin run scoreboard players operation Global dest_ymin = Global y
execute if score Global z < Global dest_zmin run scoreboard players operation Global dest_zmin = Global z