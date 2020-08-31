scoreboard players add Global _unique 1
execute unless score @s _id matches 0.. run scoreboard players operation @s _id = Global _unique
scoreboard players operation Global player = @s _id
execute as @e[type=minecraft:magma_cube,tag=Corner] if score @s player = Global player if score @s type matches 2..2 run scoreboard players set @s player 0
scoreboard players set @s state 3
scoreboard players set @s moving 0
execute as @s run function blingedit:tell_actions
scoreboard players set Global handled 1