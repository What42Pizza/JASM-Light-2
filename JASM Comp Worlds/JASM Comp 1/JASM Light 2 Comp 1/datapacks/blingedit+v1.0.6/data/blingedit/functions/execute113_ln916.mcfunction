clone ~ ~ ~ ~ ~ ~ 0 1 0
scoreboard players set Global skip 0
execute if block ~ ~ ~ minecraft:air unless score Global clone_air matches 1.. run scoreboard players set Global skip 1