scoreboard players operation Global fz = @s clone_flip_z
execute if score Global fz matches 1.. run scoreboard players set @s clone_flip_z 0
execute unless score Global fz matches 1.. run scoreboard players set @s clone_flip_z 1