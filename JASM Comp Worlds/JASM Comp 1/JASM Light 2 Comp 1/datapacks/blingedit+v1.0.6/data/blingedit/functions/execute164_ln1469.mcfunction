scoreboard players set @s pick1 0
scoreboard players set @s pick2 0
scoreboard players set @s click 0
scoreboard players set @s moving 0
scoreboard players set @s state 0
execute as @e[type=minecraft:magma_cube,tag=Corner] if score @s player = @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] _id run scoreboard players set @s player 0