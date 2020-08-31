scoreboard players operation Global fx = @s clone_flip_x
execute if score Global fx matches 1.. run scoreboard players set @s clone_flip_x 0
execute unless score Global fx matches 1.. run scoreboard players set @s clone_flip_x 1