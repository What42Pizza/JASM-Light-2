execute as @s run function blingedit:get_dest_minmax
scoreboard players operation Global size_x = Global _size_0
scoreboard players operation Global size_y = Global _size_1
scoreboard players operation Global size_z = Global _size_2
scoreboard players operation Global clone_air = @s clone_air
execute if score Global dest_xmin <= Global xmin run function blingedit:execute100_ln836
execute if score Global dest_xmin > Global xmin run function blingedit:execute101_ln841
execute if score Global dest_ymin <= Global ymin run function blingedit:execute102_ln846
execute if score Global dest_ymin > Global ymin run function blingedit:execute103_ln851
execute if score Global dest_zmin <= Global zmin run function blingedit:execute104_ln856
execute if score Global dest_zmin > Global zmin run function blingedit:execute105_ln861
bossbar set progress players @s
function blingedit:store_tile_drops
scoreboard players set Global rotation 0
scoreboard players operation Global rotation = @s clone_rotation
scoreboard players operation Global flip_x = @s clone_flip_x
scoreboard players operation Global flip_z = @s clone_flip_z
scoreboard players operation Global dest_start_y = Global dest_ymin
execute if score Global rotation matches 0..0 run function blingedit:execute106_ln877
execute if score Global rotation matches 90..90 run function blingedit:execute107_ln884
execute if score Global rotation matches 180..180 run function blingedit:execute108_ln891
execute if score Global rotation matches 270..270 run function blingedit:execute109_ln898
execute if score Global flip_x matches 1.. run scoreboard players operation Global dest_start_x = Global flipped_x
execute if score Global flip_z matches 1.. run scoreboard players operation Global dest_start_z = Global flipped_z
scoreboard players add @e _age 1
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648}
scoreboard players add @e _age 1
execute as @e[scores={_age=1}] run function blingedit:execute119_ln908
function blingedit:restore_tile_drops