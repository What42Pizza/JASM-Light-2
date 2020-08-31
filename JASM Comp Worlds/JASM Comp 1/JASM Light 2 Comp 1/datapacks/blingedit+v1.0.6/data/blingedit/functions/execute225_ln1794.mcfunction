scoreboard players set @s absorption 100
execute store result entity @s AbsorptionAmount float 1.0 run scoreboard players get @s absorption
scoreboard players set Global col_scratch0 0
execute store result entity @s Motion[0] double 0.001 run scoreboard players get Global col_scratch0
execute store result entity @s Motion[1] double 0.001 run scoreboard players get Global col_scratch0
execute store result entity @s Motion[2] double 0.001 run scoreboard players get Global col_scratch0
effect give @s invisibility 1000000 0 true
execute as @s at @s run tp @s ~ ~ ~