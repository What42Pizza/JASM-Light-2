scoreboard players add Global _unique 1
execute unless score @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] _id matches 0.. run scoreboard players operation @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] _id = Global _unique
scoreboard players operation Global mai_scratch4 = @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] _id
scoreboard players operation @s player = Global mai_scratch4
scoreboard players set @s type 1
team join source
execute if score Global ex matches -1..-1 run scoreboard players set @s edit_xmin 1
execute if score Global ex matches 0..0 run scoreboard players set @s center_x 1
execute if score Global ex matches 1..1 run scoreboard players set @s edit_xmax 1
execute if score Global ey matches -1..-1 run scoreboard players set @s edit_ymin 1
execute if score Global ey matches 0..0 run scoreboard players set @s center_y 1
execute if score Global ey matches 1..1 run scoreboard players set @s edit_ymax 1
execute if score Global ez matches -1..-1 run scoreboard players set @s edit_zmin 1
execute if score Global ez matches 0..0 run scoreboard players set @s center_z 1
execute if score Global ez matches 1..1 run scoreboard players set @s edit_zmax 1