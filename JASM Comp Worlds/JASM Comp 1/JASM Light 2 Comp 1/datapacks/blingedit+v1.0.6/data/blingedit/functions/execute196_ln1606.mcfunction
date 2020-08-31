team join moving
scoreboard players add Global _unique 1
execute unless score @s _id matches 0.. run scoreboard players operation @s _id = Global _unique
scoreboard players operation Global mai_scratch1 = @s _id
scoreboard players operation @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] moving = Global mai_scratch1
scoreboard players set @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] state 9
execute as @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] run function blingedit:create_click