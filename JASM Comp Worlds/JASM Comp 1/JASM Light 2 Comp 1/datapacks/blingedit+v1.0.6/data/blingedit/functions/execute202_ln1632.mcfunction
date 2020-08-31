scoreboard players operation Global _id = @s moving
execute as @e if score @s _id = Global _id run team join dest
scoreboard players set @s moving 0
scoreboard players set @s state 8