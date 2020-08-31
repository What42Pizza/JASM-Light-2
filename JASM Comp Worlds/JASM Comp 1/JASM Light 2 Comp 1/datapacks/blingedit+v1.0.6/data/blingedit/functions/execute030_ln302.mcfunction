execute if score Global first matches 1.. run function blingedit:execute029_ln303
execute store result score Global x run data get entity @s Pos[0] 1000
execute store result score Global y run data get entity @s Pos[1] 1000
execute store result score Global z run data get entity @s Pos[2] 1000
execute if score Global x > Global dest_xmax run scoreboard players operation Global dest_xmax = Global x
execute if score Global y > Global dest_ymax run scoreboard players operation Global dest_ymax = Global y
execute if score Global z > Global dest_zmax run scoreboard players operation Global dest_zmax = Global z