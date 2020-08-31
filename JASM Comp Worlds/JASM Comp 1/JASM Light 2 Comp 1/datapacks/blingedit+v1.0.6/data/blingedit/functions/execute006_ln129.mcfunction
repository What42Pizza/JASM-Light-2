tp @s ~ ~ ~
scoreboard players set @s absorption 100
execute store result entity @s AbsorptionAmount float 1.0 run scoreboard players get @s absorption
team join no_collision