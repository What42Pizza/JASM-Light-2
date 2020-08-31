scoreboard players set Global type 0
execute if score @s state matches 3..3 run scoreboard players set Global type 1
execute if score @s state matches 8..8 run scoreboard players set Global type 2
scoreboard players add Global _unique 1
execute unless score @s _id matches 0.. run scoreboard players operation @s _id = Global _unique
scoreboard players operation Global player = @s _id
execute store result score @s ry run data get entity @s Rotation[0] 1
scoreboard players operation Global ry = @s ry
scoreboard players operation Global ry %= c360 Constant
scoreboard players add Global ry 360
scoreboard players operation Global ry %= c360 Constant
function blingedit:move_dir
gamerule sendCommandFeedback false