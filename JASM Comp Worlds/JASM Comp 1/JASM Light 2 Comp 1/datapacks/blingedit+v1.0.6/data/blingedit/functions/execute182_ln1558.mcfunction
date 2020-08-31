tp @s ~ ~ ~
execute store result score Global x run data get entity @s Pos[0] 1000
execute store result score Global y run data get entity @s Pos[1] 1000
execute store result score Global z run data get entity @s Pos[2] 1000
scoreboard players set Global edit_xmin 0
scoreboard players set Global edit_ymin 0
scoreboard players set Global edit_zmin 0
scoreboard players set Global edit_xmax 0
scoreboard players set Global edit_ymax 0
scoreboard players set Global edit_zmax 0
execute if score @s edit_xmin matches 1.. run scoreboard players set Global edit_xmin 1
execute if score @s edit_ymin matches 1.. run scoreboard players set Global edit_ymin 1
execute if score @s edit_zmin matches 1.. run scoreboard players set Global edit_zmin 1
execute if score @s edit_xmax matches 1.. run scoreboard players set Global edit_xmax 1
execute if score @s edit_ymax matches 1.. run scoreboard players set Global edit_ymax 1
execute if score @s edit_zmax matches 1.. run scoreboard players set Global edit_zmax 1
execute if score Global click matches 1.. run function blingedit:execute181_ln1569