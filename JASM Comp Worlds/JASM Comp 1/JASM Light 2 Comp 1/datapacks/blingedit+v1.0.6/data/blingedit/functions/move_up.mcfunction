scoreboard players set Global type 0
execute if score @s state matches 3..3 run scoreboard players set Global type 1
execute if score @s state matches 8..8 run scoreboard players set Global type 2
scoreboard players add Global _unique 1
execute unless score @s _id matches 0.. run scoreboard players operation @s _id = Global _unique
scoreboard players operation Global player = @s _id
execute as @e[type=minecraft:magma_cube,tag=Corner] if score @s player = Global player if score @s type = Global type as @s at @s run tp @s ~ ~1 ~
gamerule sendCommandFeedback false