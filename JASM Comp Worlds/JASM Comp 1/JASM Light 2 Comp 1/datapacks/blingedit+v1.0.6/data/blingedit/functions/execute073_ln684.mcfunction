scoreboard players add Global _unique 1
execute unless score @s _id matches 0.. run scoreboard players operation @s _id = Global _unique
scoreboard players operation Global moving = @s _id
scoreboard players set @s bottom_center 1