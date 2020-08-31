scoreboard players set Global has_dest_box 1
execute store result score Global dest_xmin run data get entity @s Pos[0] 1000
execute store result score Global dest_ymin run data get entity @s Pos[1] 1000
execute store result score Global dest_zmin run data get entity @s Pos[2] 1000
scoreboard players set Global first 0