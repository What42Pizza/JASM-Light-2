execute store result score @s ry run data get entity @s Rotation[0] 1
scoreboard players operation Global ry = @s ry
scoreboard players operation Global ry %= c360 Constant
scoreboard players add Global ry 360
scoreboard players operation Global clo4_scratch0 = @s clone_rotation
scoreboard players operation Global ry += Global clo4_scratch0
scoreboard players operation Global ry %= c360 Constant
execute if score Global ry matches ..44 run function blingedit:execute040_ln388
execute if score Global ry matches 45.. if score Global ry matches ..134 run function blingedit:execute041_ln392
execute if score Global ry matches 135.. if score Global ry matches ..224 run function blingedit:execute042_ln396
execute if score Global ry matches 225.. if score Global ry matches ..314 run function blingedit:execute043_ln400
execute if score Global ry matches 315.. run function blingedit:execute044_ln404
execute if score Global flip_x matches 1.. run function blingedit:execute045_ln409
execute if score Global flip_z matches 1.. run function blingedit:execute046_ln414
scoreboard players operation Global _id = @s to_display
execute as @e if score @s _id = Global _id as @s run function blingedit:clone_flip_horizontal
gamerule sendCommandFeedback false