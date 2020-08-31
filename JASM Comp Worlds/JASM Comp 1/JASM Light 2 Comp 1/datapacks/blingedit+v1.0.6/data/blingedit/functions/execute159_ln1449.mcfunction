scoreboard players add Global _unique 1
execute unless score @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] _id matches 0.. run scoreboard players operation @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] _id = Global _unique
scoreboard players operation Global mai_scratch1 = @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] _id
scoreboard players operation @s player = Global mai_scratch1
team join source
scoreboard players set @s type 1
scoreboard players set @s edit_xmin 1
scoreboard players set @s edit_ymin 1
scoreboard players set @s edit_zmin 1