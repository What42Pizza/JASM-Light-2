scoreboard players operation Global lh = @s left_handed
execute if score Global lh matches 1.. run scoreboard players set @s left_handed 0
execute unless score Global lh matches 1.. run scoreboard players set @s left_handed 1
execute as @s run function blingedit:replace_items