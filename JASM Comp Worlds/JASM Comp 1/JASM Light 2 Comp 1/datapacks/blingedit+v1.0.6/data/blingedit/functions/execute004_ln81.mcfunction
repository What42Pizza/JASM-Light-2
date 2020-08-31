scoreboard players operation Global lh = @s left_handed
execute if score Global lh matches 1.. run scoreboard players set @s left_handed 0
execute unless score Global lh matches 1.. run scoreboard players set @s left_handed 1
execute as @s run function blingedit:replace_items
execute store result score @s ry run data get entity @s Rotation[0] 1
scoreboard players add @s ry 180
execute store result entity @s Rotation[0] float 1.0 run scoreboard players get @s ry